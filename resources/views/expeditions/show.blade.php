@extends('layouts.app')

@section('title') {{ $planet->name }} - Expeditions @endsection

@section('content')
<div class="container">
    {!! breadcrumbs(['Expeditions' => url('expeditions'), $planet->name]) !!}

    <div class="row">
        <div class="col-md-8">
            <h1>{{ $planet->name }}</h1>
            @if(isset($featuredPlanet) && $featuredPlanet && $featuredPlanet->planet_id == $planet->id)
                <div class="mb-2" style="color:#ffb347; font-weight:600;">
                    <i class="fas fa-star"></i> Featured Planet
                </div>
            @endif

            @if($planet->discoverer)
                <p class="text-muted">First explored by <strong>{{ $planet->discoverer->name }}</strong> on {{ $planet->discovered_at->format('M d, Y') }}</p>
            @else
                <p class="text-muted"><em>Not yet discovered</em></p>
            @endif

            <div class="card mb-3" style="background: rgba(10, 20, 40, 0.6); border: 1px solid #00ccff;">
                <div class="card-body">
                    <p><strong>Galaxy:</strong> {{ $planet->galaxy->name ?? 'Unknown' }}</p>
                    <p><strong>Rarity:</strong> <span class="badge badge-{{ $planet->rarity == 'legendary' ? 'warning' : ($planet->rarity == 'rare' ? 'info' : 'secondary') }}">{{ ucfirst($planet->rarity) }}</span></p>
                    @if($planet->has_hazard)
                        <p><strong>Hazard:</strong> {{ $planet->hazard_name ?: 'Environmental Hazard' }}</p>
                        @if($planet->hazard_penalty)
                            <p class="mb-0 text-muted"><em>{{ $planet->hazard_penalty }}</em></p>
                        @endif
                        @if($planet->hidden_item_id)
                            <p class="mt-2 mb-0 text-warning"><strong>This planet has a hidden item due to hazards!</strong></p>
                        @endif
                    @endif
                </div>
            </div>

            @if(Auth::check())
                @php
                    $currentVisitCount = $userExpedition ? $userExpedition->visit_count : 0;
                    $unlockThreshold = max(1, (int) $planet->unlock_threshold);
                    $visitPercent = min(100, ($currentVisitCount / $unlockThreshold) * 100);
                @endphp
                <div class="card mb-3" style="border-color: #00ff88;">
                    <div class="card-header h5" style="background-color: rgba(0, 255, 136, 0.1);">Your Progress</div>
                    <div class="card-body">
                        <p><strong>Visits:</strong> {{ $currentVisitCount }} / {{ $planet->unlock_threshold }}</p>
                        <div class="progress" style="height: 25px;">
                            <div class="progress-bar bg-success" role="progressbar" 
                                 style="width: {{ $visitPercent }}%"
                                 aria-valuenow="{{ $currentVisitCount }}" 
                                 aria-valuemin="0" 
                                 aria-valuemax="{{ $planet->unlock_threshold }}">
                                {{ $currentVisitCount }}/{{ $planet->unlock_threshold }}
                            </div>
                        </div>
                        @if($userExpedition && $userExpedition->is_discoverer)
                            <p class="mt-3 mb-0"><span class="badge badge-gold"><i class="fas fa-star"></i> You are the first explorer of this world!</span></p>
                            @php
                                $isPlaceholderName = preg_match('/^UNKNOWN-\\d+$/i', $planet->name);
                            @endphp
                            @if($currentVisitCount >= $planet->unlock_threshold && ($isPlaceholderName || empty($planet->name)))
                                <form method="POST" action="{{ url('expeditions/'.$planet->id.'/name') }}">
                                    @csrf
                                    <div class="form-group mt-3">
                                        <label for="planet_name">Name this world:</label>
                                        <input type="text" name="planet_name" id="planet_name" class="form-control" maxlength="100" placeholder="Enter a name for this planet" required>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit Name</button>
                                </form>
                            @endif
                        @endif
                    </div>
                </div>

                @if($userExpedition)
                <div class="card mb-3">
                    <div class="card-header h5">Unlocked Information</div>
                    <div class="card-body">
                        @php
                            $unlockedVitalInfo = $planet->getUnlockedVitalInfo(Auth::id());
                            $vitalInfoFields = \App\Models\Planet::getVitalInfoFields();
                        @endphp
                        @if(count($unlockedVitalInfo) > 0)
                            <table class="table table-sm" style="color: #ccc;">
                                @foreach($unlockedVitalInfo as $field => $value)
                                    <tr>
                                        <td style="width: 40%; border-color: rgba(0, 204, 255, 0.3);"><strong>{{ \App\Models\Planet::getVitalInfoLabel($field) }}</strong></td>
                                        <td style="border-color: rgba(0, 204, 255, 0.3);">{{ $value }}</td>
                                    </tr>
                                @endforeach
                            </table>
                            @php 
                                $nextUnlock = $planet->getNextUnlock($userExpedition->visit_count);
                            @endphp
                            @if($nextUnlock)
                                <p class="text-muted mt-3 mb-0"><em>Next unlock at visit {{ $nextUnlock['visit'] }}: {{ $nextUnlock['label'] }}</em></p>
                            @endif
                        @else
                            <p class="text-muted"><em>Submit an expedition to unlock vital information about this world.</em></p>
                            @php $firstUnlock = $planet->getNextUnlock(0); @endphp
                            @if($firstUnlock)
                                <p class="text-muted mb-0"><em>Visit {{ $firstUnlock['visit'] }} will reveal: {{ $firstUnlock['label'] }}</em></p>
                            @endif
                        @endif
                    </div>
                </div>

                @php
                    $unlockedTiers = $planet->infoTiers()->where('tier_number', '<=', $userExpedition->visit_count)->orderBy('tier_number')->get();
                    $nextTier = $planet->infoTiers()->where('tier_number', '>', $userExpedition->visit_count)->orderBy('tier_number')->first();
                @endphp
                @if($planet->infoTiers()->count() > 0)
                <div class="card mb-3">
                    <div class="card-header h5"><i class="fas fa-lightbulb mr-2"></i>Fun Facts</div>
                    <div class="card-body">
                        @if($unlockedTiers->count() > 0)
                            @foreach($unlockedTiers as $tier)
                                <div class="mb-3 pb-2" style="border-bottom: 1px solid rgba(0, 204, 255, 0.2);">
                                    @if(!empty($tier->info_data['type']))
                                        <span class="badge badge-info">{{ $tier->info_data['type'] }}</span>
                                    @endif
                                    @if(!empty($tier->info_data['risk']))
                                        <span class="badge badge-{{ $tier->info_data['risk'] == 'High' || $tier->info_data['risk'] == 'Extreme' ? 'danger' : ($tier->info_data['risk'] == 'Moderate' ? 'warning' : 'secondary') }}">{{ $tier->info_data['risk'] }} Risk</span>
                                    @endif
                                    @if(!empty($tier->info_data['description']))
                                        <p class="mb-0 mt-1">{{ $tier->info_data['description'] }}</p>
                                    @endif
                                </div>
                            @endforeach
                        @else
                            <p class="text-muted mb-0"><em>No fun facts unlocked yet. Keep exploring!</em></p>
                        @endif
                        @if($nextTier)
                            <p class="text-muted mt-2 mb-0"><em>Next fun fact unlocks at visit {{ $nextTier->tier_number }}</em></p>
                        @endif
                    </div>
                </div>
                @endif

                @if($planet->refImages && count($planet->refImages) > 0)
                    <div class="card mb-3">
                        <div class="card-header h5">Reference Images</div>
                        <div class="card-body">
                            <div class="row">
                                @foreach($planet->refImages as $num => $imageUrl)
                                    <div class="col-4 mb-2">
                                        <a href="{{ $imageUrl }}" data-lightbox="planet-refs" data-title="Reference {{ $num }}">
                                            <img src="{{ $imageUrl }}" class="img-fluid img-thumbnail" style="max-height: 100px;">
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                            @if($planet->color_palette && count($planet->color_palette) > 0)
                                <h6 class="mt-3">Color Palette</h6>
                                <div>
                                    @foreach($planet->color_palette as $color)
                                        <span style="display: inline-block; width: 40px; height: 40px; background-color: {{ $color }}; border: 1px solid #333; margin-right: 5px; border-radius: 4px;" title="{{ $color }}"></span>
                                    @endforeach
                                </div>
                            @endif
                        </div>
                    </div>
                @elseif($planet->color_palette && count($planet->color_palette) > 0)
                    <div class="card mb-3">
                        <div class="card-header h5">Color Palette</div>
                        <div class="card-body">
                            @foreach($planet->color_palette as $color)
                                <span style="display: inline-block; width: 40px; height: 40px; background-color: {{ $color }}; border: 1px solid #333; margin-right: 5px; border-radius: 4px;" title="{{ $color }}"></span>
                            @endforeach
                        </div>
                    </div>
                @endif
            @endif
        </div>

        <div class="col-md-4">
            @auth
                <div class="card mb-3" style="border: 2px solid #00ff88;">
                    <div class="card-header h5" style="background-color: rgba(0, 255, 136, 0.1);">Submit Expedition</div>
                    <div class="card-body">
                        <p class="text-muted text-sm">Share your exploration findings to contribute to our understanding of this world.</p>

                        <form method="POST" action="{{ url('expeditions/'.$planet->id.'/submit') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                {!! Form::label('title', 'Submission Title') !!}
                                {!! Form::text('title', null, ['class' => 'form-control', 'maxlength' => 100, 'placeholder' => 'e.g., The Ashfall Expanse']) !!}
                            </div>
                            <div class="form-group">
                                {!! Form::label('submission_type', 'Submission Type') !!}
                                {!! Form::select('submission_type', ['art' => 'Art', 'writing' => 'Writing'], null, ['class' => 'form-control']) !!}
                            </div>

                            <div class="form-group">
                                {!! Form::label('description', 'Description (Optional)') !!}
                                {!! Form::textarea('description', null, ['class' => 'form-control', 'rows' => 4, 'placeholder' => 'Include any notes/comments/questions/etc.']) !!}
                            </div>

                            <div class="form-group">
                                {!! Form::label('resource_boost_item_id', 'Use Item (Optional)') !!}
                                {!! Form::select('resource_boost_item_id', ['' => 'None'] + ($submissionBoostItems ?? []), old('resource_boost_item_id'), ['class' => 'form-control', 'id' => 'resourceBoostItemSelect']) !!}
                                <small class="text-muted">Survey Beacon: +25% chance to find one chosen resource.</small>
                            </div>

                            <div class="form-group" id="resourceBoostTargetWrapper" style="display: none;">
                                {!! Form::label('resource_boost_target_item_id', 'Boost Target Resource') !!}
                                {!! Form::select('resource_boost_target_item_id', ['' => 'Select a resource'] + ($resourceBoostTargets ?? []), old('resource_boost_target_item_id'), ['class' => 'form-control', 'id' => 'resourceBoostTargetSelect']) !!}
                                <small class="text-muted">Only resources currently rollable on this planet are listed.</small>
                            </div>

                            <div class="form-group">
                                {!! Form::label('image', 'File') !!}
                                {!! Form::file('image', ['class' => 'form-control', 'accept' => '.jpg,.jpeg,.png,.gif,.pdf', 'required']) !!}
                                <small class="text-muted">Supported: Images (JPG, PNG, GIF) or PDF (Max {{ config('lorekeeper.settings.file_size') }}MB)</small>
                            </div>

                            <button type="submit" class="btn btn-success btn-block">
                                <i class="fas fa-rocket"></i> Submit Expedition
                            </button>
                        </form>

                        <hr>

                        <p class="text-muted text-xs">Submissions will be reviewed by moderators. Once approved, you'll earn exploration credit toward discovering this world's secrets.</p>
                    </div>
                </div>
            @endauth
        </div>
    </div>
</div>

<script>
$(document).ready(function() {
    const $itemSelect = $('#resourceBoostItemSelect');
    const $targetWrapper = $('#resourceBoostTargetWrapper');
    const $targetSelect = $('#resourceBoostTargetSelect');

    function updateBoostTargetVisibility() {
        if ($itemSelect.val()) {
            $targetWrapper.show();
        } else {
            $targetWrapper.hide();
            $targetSelect.val('');
        }
    }

    $itemSelect.on('change', updateBoostTargetVisibility);
    updateBoostTargetVisibility();
});
</script>
@endsection
