@extends('layouts.app')

@section('title') {{ $page->title }} @endsection

@section('content')
{!! breadcrumbs([$page->title => $page->url]) !!}
<h1>{{ $page->title }}</h1>

@if($page->description)
    <div class="alert alert-info mb-4">
        {{ $page->description }}
    </div>
@endif

@if($page->key === 'homeworld')
    <div class="mt-4 mb-4">
        <h3>Homeworld Gallery</h3>
        @if(isset($homeworldImages) && $homeworldImages->count())
            <div class="row">
                @foreach($homeworldImages as $image)
                    <div class="col-md-6 col-lg-4 mb-4">
                        <div class="card h-100" style="background: rgba(10, 20, 40, 0.6); border: 2px solid #00ccff;">
                            @if($image->image_url)
                                <img src="{{ $image->image_url }}" class="card-img-top" alt="{{ $image->alt_text ?? 'Homeworld image' }}" style="max-height: 250px; object-fit: cover;">
                            @endif
                            <div class="card-body">
                                @if($image->caption)
                                    <p class="card-text">{{ $image->caption }}</p>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        @else
            <div class="alert alert-secondary">
                <i class="fas fa-image"></i> No images have been added to the gallery yet.
            </div>
        @endif
    </div>
@endif

@if($page->key === 'currency')
    <ul class="nav nav-tabs mb-4">
        <li class="nav-item">
            <a class="nav-link active" href="#currency-rules">Rules</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#credit-rep-calculator">Calculator</a>
        </li>
    </ul>
@endif

@if($page->key !== 'featured-planet')
    <div class="mb-4">
        <div><strong>Created:</strong> {!! format_date($page->created_at) !!}</div>
        <div><strong>Last updated:</strong> {!! format_date($page->updated_at) !!}</div>
    </div>
@endif

@if($page->key === 'featured-planet' && isset($featuredPlanet) && $featuredPlanet)
    <div class="card mb-4">
        <div class="card-header h3">Featured Planet</div>
        <div class="card-body">
            <h4 class="mb-3">{{ $featuredPlanet->name }}</h4>
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Galaxy:</strong> {{ $featuredPlanet->galaxy ? $featuredPlanet->galaxy->name : 'Unknown' }}
                </div>
                <div class="col-md-6">
                    <strong>Rarity:</strong> {{ ucfirst($featuredPlanet->rarity) }}
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Started:</strong> {{ $featuredPlanet->start_at ? format_date($featuredPlanet->start_at, false) : 'TBD' }}
                </div>
                <div class="col-md-6">
                    <strong>Ends:</strong> {{ $featuredPlanet->end_at ? format_date($featuredPlanet->end_at, false) : 'TBD' }}
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Type:</strong> {{ $featuredPlanet->type }}
                </div>
                <div class="col-md-6">
                    <strong>Risk Level:</strong> {{ $featuredPlanet->risk_level }}
                </div>
            </div>
            @if($featuredPlanet->theme)
                <div class="mb-3"><strong>Theme:</strong> {{ $featuredPlanet->theme }}</div>
            @endif
            @if($featuredPlanet->parsed_description)
                <div class="parsed-text">{!! $featuredPlanet->parsed_description !!}</div>
            @endif
            <div class="mt-4">
                <h5>Materials found on this planet</h5>
                @if($featuredPlanet->materials && $featuredPlanet->materials->count())
                    <ul class="mb-0">
                        @foreach($featuredPlanet->materials as $material)
                            <li>{!! $material->displayName !!}</li>
                        @endforeach
                    </ul>
                @else
                    <div class="text-muted">No materials listed.</div>
                @endif
            </div>
        </div>
    </div>
@endif

@if($page->key !== 'featured-planet')
    @php
        $pageBody = ($page->key === 'homeworld' && isset($homeworldParsedText)) ? $homeworldParsedText : $page->parsed_text;
    @endphp
    <div class="site-page-content parsed-text" id="currency-rules">
        {!! $pageBody !!}
    </div>

    @if($page->key === 'current-galaxy')
        <div class="mt-5">
            <div class="form-group mb-4">
                <label for="galaxy-selector"><strong>Select Galaxy:</strong></label>
                @if(isset($allGalaxies) && $allGalaxies->count() > 0)
                    <select id="galaxy-selector" class="form-control" onchange="window.location.href='{{ url('current-galaxy') }}?galaxy_id=' + this.value;">
                        @foreach($allGalaxies as $galaxy)
                            <option value="{{ $galaxy->id }}" {{ isset($selectedGalaxy) && $selectedGalaxy->id == $galaxy->id ? 'selected' : '' }}>
                                {{ $galaxy->name }}{{ $galaxy->is_current ? ' (Current)' : '' }}
                            </option>
                        @endforeach
                    </select>
                @else
                    <p class="text-muted">No galaxies available. Please create a galaxy in the admin panel.</p>
                @endif
            </div>
            
            @if(isset($selectedGalaxy))
                <h3 class="mb-4">{{ $selectedGalaxy->name }} - Planets</h3>
            @endif
            
            @if($planets && $planets->count())
                <div class="row">
                    @foreach($planets as $planet)
                        <div class="col-md-6 col-lg-4 mb-4">
                            <div class="card h-100" style="background: rgba(10, 20, 40, 0.8); border: 2px solid #00ccff;">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $planet->name }}</h5>
                                    <p class="card-text">
                                        <small class="d-block mb-2">
                                            <span class="badge badge-{{ $planet->rarity == 'legendary' ? 'warning' : ($planet->rarity == 'rare' ? 'info' : ($planet->rarity == 'uncommon' ? 'secondary' : 'light')) }}">
                                                {{ ucfirst($planet->rarity) }}
                                            </span>
                                        </small>
                                        <strong>Type:</strong> {{ $planet->type ?? 'Unknown' }}<br>
                                        <strong>Risk:</strong> {{ ucfirst($planet->risk_level ?? 'Unknown') }}<br>
                                        @if($planet->discoverer)
                                            <strong>Discoverer:</strong> {!! $planet->discoverer->displayName !!}<br>
                                        @endif
                                    </p>
                                </div>
                                <div class="card-footer bg-transparent border-top-0">
                                    @auth
                                        <a href="{{ url('expeditions/'.$planet->id) }}" class="btn btn-sm btn-primary btn-block">
                                            <i class="fas fa-rocket"></i> Explore
                                        </a>
                                    @else
                                        <a href="{{ url('login') }}" class="btn btn-sm btn-primary btn-block">
                                            <i class="fas fa-sign-in-alt"></i> Log In to Explore
                                        </a>
                                    @endauth
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <div class="alert alert-info">
                    <i class="fas fa-info-circle"></i> No planets available in this galaxy yet.
                </div>
            @endif
        </div>
    @endif

    @if($page->key === 'currency')
        <div class="card mb-4" id="credit-rep-calculator">
            <div class="card-header h4 mb-0">Credit/REP Calculator</div>
            <div class="card-body">
                <div class="form-group">
                    <label for="calc-medium"><strong>Creative Type</strong></label>
                    <select id="calc-medium" class="form-control">
                        <option value="writing">Writing</option>
                        <option value="art">Art</option>
                    </select>
                </div>

                <div id="calc-writing" class="mb-4">
                    <h5>Writing Inputs</h5>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="calc-words">Word Count</label>
                            <input type="number" id="calc-words" class="form-control" min="0" step="1" value="1000">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="calc-writing-complex">Complex Writing Bonus Claims (0-2)</label>
                            <select id="calc-writing-complex" class="form-control">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div id="calc-art" class="mb-4" style="display:none;">
                    <h5>Art Inputs</h5>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="calc-art-visibility">Body Visibility</label>
                            <select id="calc-art-visibility" class="form-control">
                                <option value="25">25%</option>
                                <option value="50">50%</option>
                                <option value="75">75%</option>
                                <option value="100">100%</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="calc-art-characters">Characters Shown (1-4)</label>
                            <input type="number" id="calc-art-characters" class="form-control" min="1" max="4" step="1" value="1">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="calc-art-complex">Complex Art Bonus Claims (0-2)</label>
                            <select id="calc-art-complex" class="form-control">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>
                </div>

                <h5>Extras & Add-ons</h5>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="calc-pets">Pets in Scene (0-2)</label>
                        <input type="number" id="calc-pets" class="form-control" min="0" max="2" step="1" value="0">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="calc-mounts">Mounts in Scene (0-2)</label>
                        <input type="number" id="calc-mounts" class="form-control" min="0" max="2" step="1" value="0">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="calc-guests">Guest Characters (0-3)</label>
                        <input type="number" id="calc-guests" class="form-control" min="0" max="3" step="1" value="0">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="calc-background">Background</label>
                        <select id="calc-background" class="form-control">
                            <option value="none">None</option>
                            <option value="simple">Simple</option>
                            <option value="detailed">Detailed</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4 align-self-end">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="calc-experimental">
                            <label class="form-check-label" for="calc-experimental">Experimental</label>
                        </div>
                    </div>
                    <div class="form-group col-md-4 align-self-end">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="calc-collab-enabled">
                            <label class="form-check-label" for="calc-collab-enabled">Collaboration</label>
                        </div>
                    </div>
                </div>

                <div class="form-row" id="calc-collab-row" style="display:none;">
                    <div class="form-group col-md-4">
                        <label for="calc-collaborators">Collaborators</label>
                        <input type="number" id="calc-collaborators" class="form-control" min="2" step="1" value="2">
                    </div>
                </div>

                <div id="calc-writing-only" class="mb-3">
                    <h6>Writing-specific Extras</h6>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="calc-writing-image">
                        <label class="form-check-label" for="calc-writing-image">Image added to writing (+5 Credits | +2 REP)</label>
                    </div>
                </div>

                <div id="calc-art-only" class="mb-3" style="display:none;">
                    <h6>Art-specific Extras</h6>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="calc-art-writing-addon">
                        <label class="form-check-label" for="calc-art-writing-addon">Writing added to art (500 words) (+5 Credits | +2 REP)</label>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="calc-art-shading">
                        <label class="form-check-label" for="calc-art-shading">Shading (+5 Credits | +2 REP)</label>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="calc-art-limbs">
                        <label class="form-check-label" for="calc-art-limbs">All limbs included (+9 Credits | +4 REP)</label>
                    </div>
                </div>

                <div class="alert alert-secondary mb-0">
                    <div><strong>Total Credits:</strong> <span id="calc-total-credits">0</span></div>
                    <div><strong>Total REP:</strong> <span id="calc-total-rep">0</span></div>
                    <ul class="mb-0 mt-2" id="calc-notes"></ul>
                </div>
            </div>
        </div>
    @endif
@endif

@if($page->can_comment)
    @comments(['model' => $page,
            'perPage' => 5
        ])
@endif

@endsection

@section('scripts')
@parent
@if($page->key === 'currency')
<script>
$(document).ready(function() {
    const visibilityRewards = {
        25: { credits: 5, rep: 2 },
        50: { credits: 10, rep: 5 },
        75: { credits: 15, rep: 8 },
        100: { credits: 20, rep: 10 }
    };

    function intValue(selector, minValue, maxValue) {
        let value = parseInt($(selector).val(), 10);
        if (isNaN(value)) value = 0;
        if (typeof minValue !== 'undefined') value = Math.max(minValue, value);
        if (typeof maxValue !== 'undefined') value = Math.min(maxValue, value);
        $(selector).val(value);
        return value;
    }

    function addReward(total, credits, rep) {
        total.credits += credits;
        total.rep += rep;
    }

    function calculate() {
        const mode = $('#calc-medium').val();
        const total = { credits: 0, rep: 0 };
        const notes = [];

        if (mode === 'writing') {
            const words = intValue('#calc-words', 0);
            const writingComplexClaims = intValue('#calc-writing-complex', 0, 2);

            if (words >= 1000) {
                addReward(total, 20, 10);

                const wordsUpTo2000 = Math.max(0, Math.min(words, 2000) - 1000);
                const hundredSteps = Math.floor(wordsUpTo2000 / 100);
                addReward(total, hundredSteps * 3, hundredSteps * 1);

                const wordsOver2000 = Math.max(0, words - 2000);
                const fiveHundredSteps = Math.floor(wordsOver2000 / 500);
                addReward(total, fiveHundredSteps * 7, fiveHundredSteps * 3);
            } else {
                notes.push('Writing base rewards start at 1,000 words.');
            }

            addReward(total, writingComplexClaims * 5, writingComplexClaims * 2);
        } else {
            const visibility = parseInt($('#calc-art-visibility').val(), 10);
            const artCharacters = intValue('#calc-art-characters', 1, 4);
            const artComplexClaims = intValue('#calc-art-complex', 0, 2);

            const visibilityReward = visibilityRewards[visibility] || visibilityRewards[25];
            addReward(total, visibilityReward.credits * artCharacters, visibilityReward.rep * artCharacters);
            addReward(total, artComplexClaims * 5, artComplexClaims * 2);
        }

        const pets = intValue('#calc-pets', 0, 2);
        const mounts = intValue('#calc-mounts', 0, 2);
        const guests = intValue('#calc-guests', 0, 3);

        addReward(total, pets * 3, pets * 2);
        addReward(total, mounts * 5, mounts * 3);
        addReward(total, guests * 5, guests * 2);

        const background = $('#calc-background').val();
        if (background === 'simple') addReward(total, 8, 4);
        if (background === 'detailed') addReward(total, 20, 10);

        if ($('#calc-experimental').is(':checked')) addReward(total, 3, 2);

        if ($('#calc-collab-enabled').is(':checked')) {
            addReward(total, 5, 2);

            if (mode === 'writing') {
                const collaborators = intValue('#calc-collaborators', 2);
                const words = intValue('#calc-words', 0);
                const requiredWords = collaborators * 1000;
                if (words < requiredWords) {
                    notes.push('Collab writing minimum for ' + collaborators + ' collaborators is ' + requiredWords + ' words.');
                }
            }
        }

        if (mode === 'writing') {
            if ($('#calc-writing-image').is(':checked')) addReward(total, 5, 2);
        } else {
            if ($('#calc-art-writing-addon').is(':checked')) addReward(total, 5, 2);
            if ($('#calc-art-shading').is(':checked')) addReward(total, 5, 2);
            if ($('#calc-art-limbs').is(':checked')) addReward(total, 9, 4);
        }

        $('#calc-total-credits').text(total.credits);
        $('#calc-total-rep').text(total.rep);

        const notesContainer = $('#calc-notes');
        notesContainer.empty();
        if (!notes.length) {
            notesContainer.append('<li>No rule warnings.</li>');
        } else {
            notes.forEach(function(note) {
                notesContainer.append('<li>' + note + '</li>');
            });
        }
    }

    function toggleModeSections() {
        const mode = $('#calc-medium').val();
        $('#calc-writing').toggle(mode === 'writing');
        $('#calc-writing-only').toggle(mode === 'writing');
        $('#calc-art').toggle(mode === 'art');
        $('#calc-art-only').toggle(mode === 'art');
    }

    function toggleCollabRow() {
        $('#calc-collab-row').toggle($('#calc-collab-enabled').is(':checked'));
    }

    $('#credit-rep-calculator').on('input change', 'input, select', function() {
        toggleModeSections();
        toggleCollabRow();
        calculate();
    });

    toggleModeSections();
    toggleCollabRow();
    calculate();
});
</script>
@endif
@endsection
