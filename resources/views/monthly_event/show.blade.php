@extends('layouts.app')

@section('title') {{ $current ? ($current->title ?? $current->name) : 'Monthly Event' }} @endsection

@section('content')
    @if($current)
        @php
            $event = $current;
            $eventTitle = $event->title ?? $event->name;
            $eventStart = $event->start_at ?? $event->occur_start;
            $eventEnd = $event->end_at ?? $event->occur_end;
            $eventHeader = $event->header_image ?? ($event->image_extension ? 'images/data/event/'.$event->id.'-image.'.$event->image_extension : null);
            // Prefer parsed_description (from World events admin) over parsed_text
            $eventBody = $event->parsed_description ?? $event->parsed_text ?? $event->description ?? $event->content;
            $eventFaq = $event->qna_parsed_text ?? $event->qna_content ?? $event->parsed_qna ?? $event->qna;
        @endphp

        {!! breadcrumbs(['Monthly Event' => url('monthly-event'), $eventTitle => url('monthly-event/'.($event->slug ?? $event->id))]) !!}

        <div class="text-right mb-3">
            <a href="{{ url('info/history') }}" class="btn btn-outline-primary">
                <i class="fas fa-images mr-1"></i> View Event History
            </a>
        </div>

        {{-- Left Navigation Sidebar - Fixed Position Outside Content --}}
        <div class="event-nav-wrapper">
            <div class="event-nav">
                <nav class="nav flex-column">
                    <a class="nav-link active" href="#event-info">
                        <i class="fas fa-info-circle mr-1"></i> Event Information
                    </a>
                    @if($eventFaq)
                    <a class="nav-link" href="#event-faq">
                        <i class="fas fa-question-circle mr-1"></i> FAQ
                    </a>
                    @endif
                    @if($event->lootTable)
                    <a class="nav-link" href="#event-rewards">
                        <i class="fas fa-gift mr-1"></i> Rewards
                    </a>
                    @endif
                    <a class="nav-link" href="#event-inspiration">
                        <i class="fas fa-palette mr-1"></i> Inspiration
                    </a>
                    <a class="nav-link" href="#enter-event">
                        <i class="fas fa-rocket mr-1"></i> Enter Event
                    </a>
                    <a class="nav-link" href="#ask-question">
                        <i class="fas fa-envelope mr-1"></i> Ask a Question
                    </a>
                </nav>
            </div>
        </div>

        {{-- Main Content --}}
        <div class="event-main-content">
                <div class="card mb-3" id="event-info">
                    <div class="card-header">
                        <h1 class="mb-0">{{ $eventTitle }}</h1>
                        <small class="text-muted">
                            @if($eventStart)Started {!! pretty_date($eventStart) !!}@endif
                            @if($eventStart && $eventEnd) :: @endif
                            @if($eventEnd)Ends {!! pretty_date($eventEnd) !!}@endif
                        </small>
                    </div>

                    @if($eventHeader)
                        <img src="{{ asset($eventHeader) }}" alt="{{ $eventTitle }}" style="width:100%; height:auto;">
                    @endif

                    <div class="card-body">
                        <div class="parsed-text news-body event-content-centered">
                            {!! $eventBody !!}
                        </div>
                    </div>
                </div>

                @if($eventFaq)
                <div class="card mb-3" id="event-faq">
                    <div class="card-header">
                        <h3 class="mb-0"><i class="fas fa-question-circle mr-2"></i> Frequently Asked Questions</h3>
                    </div>
                    <div class="card-body">
                        <div class="parsed-text news-body event-content-centered">
                            {!! $eventFaq !!}
                        </div>
                    </div>
                </div>
                @endif

                @if($event->lootTable)
                <div class="card mb-3" id="event-rewards">
                    <div class="card-header">
                        <h3 class="mb-0"><i class="fas fa-gift mr-2"></i> Potential Rewards</h3>
                    </div>
                    <div class="card-body">
                        <p class="text-muted mb-3">Participants can receive random rewards from this loot table:</p>
                        <div class="card bg-light">
                            <div class="card-body">
                                <h5 class="card-title">{!! $event->lootTable->displayName !!}</h5>
                                
                                @if($event->lootTable->loot && $event->lootTable->loot->count())
                                    <div class="table-responsive">
                                        <table class="table table-sm mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Reward</th>
                                                    <th>Quantity</th>
                                                    <th width="15%">Chance</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @php
                                                    $totalWeight = $event->lootTable->loot->sum('weight');
                                                @endphp
                                                @foreach($event->lootTable->loot as $loot)
                                                    <tr>
                                                        <td>
                                                            @if($loot->rewardable_type == 'Item')
                                                                {!! $loot->reward->displayName !!}
                                                            @elseif($loot->rewardable_type == 'Currency')
                                                                {{ $loot->reward->name }}
                                                            @elseif($loot->rewardable_type == 'LootTable')
                                                                {{ $loot->reward->name }} (Loot Table)
                                                            @elseif($loot->rewardable_type == 'None')
                                                                <span class="text-muted">Nothing</span>
                                                            @else
                                                                {{ $loot->rewardable_type }}
                                                            @endif
                                                        </td>
                                                        <td>{{ $loot->quantity }}</td>
                                                        <td>
                                                            @if($totalWeight > 0)
                                                                {{ number_format(($loot->weight / $totalWeight) * 100, 2) }}%
                                                            @else
                                                                -
                                                            @endif
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                @else
                                    <p class="text-muted mb-0">No rewards configured yet.</p>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                @endif

                <div class="card mb-3" id="event-inspiration">
                    <div class="card-header">
                        <h3 class="mb-0"><i class="fas fa-palette mr-2"></i> Inspiration</h3>
                    </div>
                    <div class="card-body">
                        @if($event->inspiration_images && count($event->inspiration_images) > 0)
                            <p class="text-muted mb-3">Reference images and inspiration for this event:</p>
                            <div class="row">
                                @foreach($event->inspiration_image_urls as $url)
                                    <div class="col-md-4 col-sm-6 mb-3">
                                        <a href="{{ $url }}" target="_blank" class="d-block">
                                            <img src="{{ $url }}" alt="Inspiration" class="img-fluid rounded" style="width: 100%; height: 200px; object-fit: cover; cursor: pointer;">
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        @else
                            <p class="text-muted mb-0"><em>No inspiration images have been added for this event yet.</em></p>
                        @endif
                    </div>
                </div>

                {{-- Enter Event Section (only for active events) --}}
                @if($event->is_visible)
                <div class="card mb-3" id="enter-event">
                    <div class="card-header">
                        <h3 class="mb-0"><i class="fas fa-rocket mr-2"></i> Enter This Event</h3>
                    </div>
                    <div class="card-body">
                        @if($event->award)
                            <div class="alert alert-info mb-3">
                                <i class="fas fa-award mr-2"></i> 
                                <strong>Event Badge:</strong> Submit an entry to earn the <strong>{{ $event->award->name }}</strong> badge!
                                @if(isset($hasBadge) && $hasBadge)
                                    <span class="badge badge-success ml-2"><i class="fas fa-check"></i> Earned!</span>
                                @endif
                            </div>
                        @endif

                        @auth
                            <p class="text-muted">Submit your art or writing to participate in this event!</p>
                            
                            {!! Form::open(['url' => 'monthly-event/'.($event->slug ?? $event->id).'/submit', 'files' => true]) !!}
                                <div class="form-group">
                                    {!! Form::label('title', 'Submission Title') !!}
                                    {!! Form::text('title', null, ['class' => 'form-control', 'maxlength' => 100, 'placeholder' => 'e.g., My Event Entry']) !!}
                                </div>
                                <div class="form-group">
                                    {!! Form::label('submission_type', 'Submission Type') !!}
                                    {!! Form::select('submission_type', ['art' => 'Art', 'writing' => 'Writing'], null, ['class' => 'form-control']) !!}
                                </div>
                                <div class="form-group">
                                    {!! Form::label('description', 'Description (Optional)') !!}
                                    {!! Form::textarea('description', null, ['class' => 'form-control', 'rows' => 4, 'placeholder' => 'Include any notes, comments, or questions...']) !!}
                                </div>
                                <div class="form-group">
                                    {!! Form::label('resource_boost_item_id', 'Use Item (Optional)') !!}
                                    {!! Form::select('resource_boost_item_id', ['' => 'None'] + ($submissionBoostItems ?? []), old('resource_boost_item_id'), ['class' => 'form-control', 'id' => 'eventResourceBoostItemSelect']) !!}
                                    <small class="text-muted">Survey Beacon: +25% chance to find one chosen resource.</small>
                                </div>
                                <div class="form-group" id="eventResourceBoostTargetWrapper" style="display: none;">
                                    {!! Form::label('resource_boost_target_item_id', 'Boost Target Resource') !!}
                                    {!! Form::select('resource_boost_target_item_id', ['' => 'Select a resource'] + ($resourceBoostTargets ?? []), old('resource_boost_target_item_id'), ['class' => 'form-control', 'id' => 'eventResourceBoostTargetSelect']) !!}
                                    <small class="text-muted">Only resources currently rollable in this event are listed.</small>
                                </div>
                                <div class="form-group">
                                    {!! Form::label('image', 'File') !!}
                                    {!! Form::file('image', ['class' => 'form-control', 'accept' => '.jpg,.jpeg,.png,.gif,.pdf', 'required']) !!}
                                    <small class="text-muted">Supported: Images (JPG, PNG, GIF) or PDF (Max 5MB)</small>
                                </div>
                                <div class="text-right">
                                    {!! Form::submit('Submit Entry', ['class' => 'btn btn-success']) !!}
                                </div>
                            {!! Form::close() !!}

                            @if(isset($userSubmissions) && $userSubmissions && $userSubmissions->count())
                                <hr>
                                <h5>Your Submissions</h5>
                                @foreach($userSubmissions as $submission)
                                    <div class="card mb-2">
                                        <div class="card-body">
                                            <div class="d-flex justify-content-between align-items-start">
                                                <div>
                                                    <strong>{{ $submission->title ?? 'Untitled' }}</strong>
                                                    <span class="text-muted ml-2">({{ ucfirst($submission->submission_type) }})</span>
                                                </div>
                                                <div class="d-flex align-items-center">
                                                    @if($submission->status == 'approved')
                                                        <span class="badge badge-success">Approved</span>
                                                    @elseif($submission->status == 'rejected')
                                                        <span class="badge badge-danger">Rejected</span>
                                                    @else
                                                        <span class="badge badge-warning">Pending</span>
                                                        {!! Form::open(['url' => 'monthly-event/submission/'.$submission->id.'/delete', 'class' => 'ml-2', 'style' => 'display:inline;']) !!}
                                                            <button type="submit" class="btn btn-sm btn-outline-danger" title="Delete this submission" onclick="return confirm('Are you sure you want to delete this submission? This cannot be undone.');">
                                                                <i class="fas fa-trash"></i>
                                                            </button>
                                                        {!! Form::close() !!}
                                                    @endif
                                                </div>
                                            </div>
                                            @if($submission->description)
                                                <p class="mb-1 mt-2 text-muted small">{!! nl2br(e(\Illuminate\Support\Str::limit($submission->description, 100))) !!}</p>
                                            @endif
                                            @if($submission->created_at)
                                                <small class="text-muted">Submitted {{ $submission->created_at->diffForHumans() }}</small>
                                            @endif
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        @else
                            <div class="text-center py-4">
                                <p class="text-muted mb-3">Please log in to submit an entry for this event.</p>
                                <a href="{{ url('login') }}" class="btn btn-primary">Log In</a>
                            </div>
                        @endauth
                    </div>
                </div>

                {{-- Ask a Question Section --}}
                <div class="card mb-3" id="ask-question">
                    <div class="card-header">
                        <h3 class="mb-0"><i class="fas fa-envelope mr-2"></i> Ask a Question</h3>
                    </div>
                    <div class="card-body">
                        @auth
                            <p class="text-muted">Have a question about this event? Submit it below and staff will answer you directly!</p>
                            
                            {!! Form::open(['url' => 'monthly-event/'.($event->slug ?? $event->id).'/ask-question']) !!}
                                <div class="form-group">
                                    {!! Form::label('question', 'Your Question') !!}
                                    {!! Form::textarea('question', null, ['class' => 'form-control', 'rows' => 4, 'required' => true, 'placeholder' => 'Type your question here... (minimum 10 characters)', 'minlength' => 10, 'maxlength' => 2000]) !!}
                                    <small class="form-text text-muted">Be specific and clear in your question. Staff will respond via notification.</small>
                                </div>
                                <div class="text-right">
                                    {!! Form::submit('Submit Question', ['class' => 'btn btn-primary']) !!}
                                </div>
                            {!! Form::close() !!}

                            @if($userQuestions && $userQuestions->count())
                                <hr>
                                <h5>Your Questions</h5>
                                @foreach($userQuestions as $question)
                                    <div class="card mb-2" id="question-{{ $question->id }}">
                                        <div class="card-body">
                                            <div class="d-flex justify-content-between align-items-start">
                                                <div>
                                                    <strong>Your Question:</strong>
                                                    <p class="mb-2">{!! nl2br(e($question->question)) !!}</p>
                                                </div>
                                                @if($question->is_answered)
                                                    <span class="badge badge-success">Answered</span>
                                                @else
                                                    <span class="badge badge-warning">Pending</span>
                                                @endif
                                            </div>
                                            @if($question->is_answered)
                                                <div class="mt-2 p-3 border rounded">
                                                    <strong>Answer from {!! $question->staff ? $question->staff->displayName : 'Staff' !!}:</strong>
                                                    <p class="mb-0 mt-1">{!! nl2br(e($question->answer)) !!}</p>
                                                    @if($question->answered_at)
                                                        <small class="text-muted">Answered {{ $question->answered_at->diffForHumans() }}</small>
                                                    @endif
                                                </div>
                                            @else
                                                @if($question->created_at)
                                                    <small class="text-muted">Asked {{ $question->created_at->diffForHumans() }}</small>
                                                @endif
                                            @endif
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        @else
                            <div class="text-center py-4">
                                <p class="text-muted mb-3">Please log in to ask a question about this event.</p>
                                <a href="{{ url('login') }}" class="btn btn-primary">Log In</a>
                            </div>
                        @endauth
                    </div>
                </div>
                @endif

                @if($previous && $previous->count())
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h4 class="mb-0">Previous Events</h4>
                        <a href="{{ url('info/history') }}" class="btn btn-sm btn-outline-primary">See All</a>
                    </div>
                    <div class="row">
                        @foreach($previous as $ev)
                            <div class="col-md-4 mb-3">
                                @php
                                    $prevTitle = $ev->title ?? $ev->name;
                                    $prevHeader = $ev->header_image ?? ($ev->image_extension ? 'images/data/event/'.$ev->id.'-image.'.$ev->image_extension : null);
                                @endphp
                                <a href="{{ url('monthly-event/'.($ev->slug ?? $ev->id)) }}" class="card h-100 text-reset">
                                    @if($prevHeader)
                                        <img class="card-img-top" src="{{ asset($prevHeader) }}" alt="{{ $prevTitle }}">
                                    @endif
                                    <div class="card-body">
                                        <h6 class="card-title">{{ $prevTitle }}</h6>
                                        @if($ev->start_at || $ev->occur_start)
                                            <p class="card-text small text-muted">{{ pretty_date($ev->start_at ?? $ev->occur_start) }}</p>
                                        @endif
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                @endif
        </div>
    @else
        {!! breadcrumbs(['Monthly Event' => url('monthly-event')]) !!}
        <div class="card">
            <div class="card-body text-center">
                <h2 class="mb-3">No Event is Currently Active</h2>
                <p class="text-muted mb-3">Check back later for the next monthly event, or browse the event history.</p>
                <a href="{{ url('info/history') }}" class="btn btn-primary">View Event History</a>
            </div>
        </div>
    @endif

@endsection

@section('scripts')
@parent
<style>
    /* Event navigation - fixed position outside content */
    .event-nav-wrapper {
        position: fixed;
        left: 10px;
        top: 50%;
        transform: translateY(-50%);
        z-index: 100;
    }
    .event-nav {
        background: rgba(0, 20, 40, 0.9);
        border: 1px solid rgba(0, 200, 255, 0.3);
        border-radius: 8px;
        padding: 0.5rem 0;
    }
    .event-nav .nav-link {
        color: inherit;
        padding: 0.75rem 1rem;
        border-left: 3px solid transparent;
        transition: all 0.2s ease;
        white-space: nowrap;
        font-size: 0.9rem;
    }
    .event-nav .nav-link:hover,
    .event-nav .nav-link.active {
        border-left-color: var(--primary, #00c8ff);
        background: rgba(0, 200, 255, 0.1);
    }
    /* Hide nav only on truly small screens */
    @media (max-width: 992px) {
        .event-nav-wrapper {
            display: none;
        }
    }
    /* Center images in event content */
    .event-content-centered img {
        display: block !important;
        margin-left: auto !important;
        margin-right: auto !important;
    }
    .event-content-centered div,
    .event-content-centered span {
        text-align: center;
    }
    .event-content-centered div img,
    .event-content-centered span img {
        display: block !important;
        margin-left: auto !important;
        margin-right: auto !important;
    }
</style>
<script>
$(function() {
    var $eventBoostItemSelect = $('#eventResourceBoostItemSelect');
    var $eventBoostTargetWrapper = $('#eventResourceBoostTargetWrapper');
    var $eventBoostTargetSelect = $('#eventResourceBoostTargetSelect');

    function updateEventBoostTargetVisibility() {
        if ($eventBoostItemSelect.val()) {
            $eventBoostTargetWrapper.show();
        } else {
            $eventBoostTargetWrapper.hide();
            $eventBoostTargetSelect.val('');
        }
    }

    $eventBoostItemSelect.on('change', updateEventBoostTargetVisibility);
    updateEventBoostTargetVisibility();

    // Smooth scroll for nav links
    $('.event-nav a[href^="#"]').on('click', function(e) {
        e.preventDefault();
        var target = $(this.getAttribute('href'));
        if(target.length) {
            $('html, body').animate({
                scrollTop: target.offset().top - 20
            }, 500);
            // Update active state
            $('.event-nav .nav-link').removeClass('active');
            $(this).addClass('active');
        }
    });
    
    // Update active nav on scroll
    $(window).on('scroll', function() {
        var scrollPos = $(document).scrollTop() + 100;
        $('.event-nav a[href^="#"]').each(function() {
            var currLink = $(this);
            var refElement = $(currLink.attr('href'));
            if(refElement.length && refElement.offset().top <= scrollPos && refElement.offset().top + refElement.height() > scrollPos) {
                $('.event-nav .nav-link').removeClass('active');
                currLink.addClass('active');
            }
        });
    });
});
</script>
@endsection
