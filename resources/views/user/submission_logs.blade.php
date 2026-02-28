@extends('user.layout')

@section('profile-title') {{ $user->name }}'s Submissions @endsection

@section('profile-content')
{!! breadcrumbs(['Users' => 'users', $user->name => $user->url, 'Submissions' => $user->url.'/submissions']) !!}

<h1>
    {!! $user->displayName !!}'s Submissions
</h1>

<ul class="nav nav-tabs mb-3" id="submissionTabs" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="prompts-tab" data-toggle="tab" href="#prompts" role="tab">
            Prompts <span class="badge badge-primary">{{ $logs->total() }}</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="contracts-tab" data-toggle="tab" href="#contracts" role="tab">
            Contracts <span class="badge badge-primary">{{ $completedContracts->total() }}</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="expeditions-tab" data-toggle="tab" href="#expeditions" role="tab">
            Expeditions <span class="badge badge-primary">{{ $expeditionSubmissions->total() }}</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="events-tab" data-toggle="tab" href="#events" role="tab">
            Events <span class="badge badge-primary">{{ $eventSubmissions->total() }}</span>
        </a>
    </li>
</ul>

<div class="tab-content" id="submissionTabsContent">
    {{-- Prompt Submissions Tab --}}
    <div class="tab-pane fade show active" id="prompts" role="tabpanel">
        @if($logs->count())
            {!! $logs->render() !!}
            <div class="row ml-md-2">
                <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-bottom">
                    <div class="col-12 col-md-2 font-weight-bold">Prompt</div>
                    <div class="col-6 col-md-4 font-weight-bold">Link</div>
                    <div class="col-6 col-md-5 font-weight-bold">Date</div>
                </div>

                @foreach($logs as $log)
                    <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-top">
                        <div class="col-12 col-md-2">{!! $log->prompt_id ? $log->prompt->displayName : '---' !!}</div>
                        <div class="col-6 col-md-4">
                            <span class="ubt-texthide"><a href="{{ $log->url }}">{{ $log->url }}</a></span>
                        </div>
                        <div class="col-6 col-md-5">{!! pretty_date($log->created_at) !!}</div>
                        <div class="col-6 col-md-1"><a href="{{ $log->viewUrl }}" class="btn btn-primary btn-sm py-0 px-1">Details</a></div>
                    </div>
                @endforeach
            </div>
            {!! $logs->render() !!}
        @else
            <p class="text-muted">No prompt submissions found.</p>
        @endif
    </div>

    {{-- Completed Contracts Tab --}}
    <div class="tab-pane fade" id="contracts" role="tabpanel">
        @if($completedContracts->count())
            {!! $completedContracts->render() !!}
            <div class="row ml-md-2">
                <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-bottom">
                    <div class="col-12 col-md-4 font-weight-bold">Contract</div>
                    <div class="col-6 col-md-4 font-weight-bold">Completed</div>
                    <div class="col-6 col-md-4 font-weight-bold">Actions</div>
                </div>

                @foreach($completedContracts as $userContract)
                    <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-top">
                        <div class="col-12 col-md-4">
                            @if($userContract->contract)
                                <a href="{{ url('contracts/'.$userContract->contract->id) }}">{{ $userContract->contract->name }}</a>
                            @else
                                <em>Deleted Contract</em>
                            @endif
                        </div>
                        <div class="col-6 col-md-4">
                            {!! $userContract->completed_at ? pretty_date($userContract->completed_at) : '---' !!}
                        </div>
                        <div class="col-6 col-md-4">
                            @if($userContract->contract)
                                <a href="{{ url('contracts/'.$userContract->contract->id) }}" class="btn btn-primary btn-sm py-0 px-1">View Contract</a>
                            @endif
                        </div>
                    </div>
                @endforeach
            </div>
            {!! $completedContracts->render() !!}
        @else
            <p class="text-muted">No completed contracts found.</p>
        @endif
    </div>

    {{-- Expedition Submissions Tab --}}
    <div class="tab-pane fade" id="expeditions" role="tabpanel">
        @if($expeditionSubmissions->count())
            {!! $expeditionSubmissions->render() !!}
            <div class="row ml-md-2">
                <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-bottom">
                    <div class="col-12 col-md-3 font-weight-bold">Planet</div>
                    <div class="col-6 col-md-3 font-weight-bold">Title</div>
                    <div class="col-6 col-md-2 font-weight-bold">Status</div>
                    <div class="col-6 col-md-2 font-weight-bold">Date</div>
                    <div class="col-6 col-md-2 font-weight-bold">Actions</div>
                </div>

                @foreach($expeditionSubmissions as $submission)
                    <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-top">
                        <div class="col-12 col-md-3">
                            @if($submission->planet)
                                <a href="{{ url('planets/'.$submission->planet->id) }}">{{ $submission->planet->name }}</a>
                            @else
                                <em>Deleted Planet</em>
                            @endif
                        </div>
                        <div class="col-6 col-md-3">{{ $submission->title ?? 'Untitled' }}</div>
                        <div class="col-6 col-md-2">
                            @if($submission->status == 'pending')
                                <span class="badge badge-warning">Pending</span>
                            @elseif($submission->status == 'approved')
                                <span class="badge badge-success">Approved</span>
                            @else
                                <span class="badge badge-danger">{{ ucfirst($submission->status) }}</span>
                            @endif
                        </div>
                        <div class="col-6 col-md-2">{!! pretty_date($submission->created_at) !!}</div>
                        <div class="col-6 col-md-2">
                            @if($submission->planet)
                                <a href="{{ url('planets/'.$submission->planet->id) }}" class="btn btn-primary btn-sm py-0 px-1">View Planet</a>
                            @endif
                            @if($submission->status == 'pending' && Auth::check() && Auth::user()->id == $submission->user_id)
                                {!! Form::open(['url' => 'expeditions/submission/'.$submission->id.'/delete', 'class' => 'd-inline']) !!}
                                    <button type="submit" class="btn btn-danger btn-sm py-0 px-1" title="Delete" onclick="return confirm('Are you sure? This cannot be undone.');">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                {!! Form::close() !!}
                            @endif
                        </div>
                    </div>
                @endforeach
            </div>
            {!! $expeditionSubmissions->render() !!}
        @else
            <p class="text-muted">No expedition submissions found.</p>
        @endif
    </div>

    {{-- Event Submissions Tab --}}
    <div class="tab-pane fade" id="events" role="tabpanel">
        @if($eventSubmissions->count())
            {!! $eventSubmissions->render() !!}
            <div class="row ml-md-2">
                <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-bottom">
                    <div class="col-12 col-md-3 font-weight-bold">Event</div>
                    <div class="col-6 col-md-3 font-weight-bold">Title</div>
                    <div class="col-6 col-md-2 font-weight-bold">Status</div>
                    <div class="col-6 col-md-2 font-weight-bold">Date</div>
                    <div class="col-6 col-md-2 font-weight-bold">Actions</div>
                </div>

                @foreach($eventSubmissions as $submission)
                    <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-top">
                        <div class="col-12 col-md-3">
                            @if($submission->event)
                                <a href="{{ url('monthly-event/'.$submission->event->slug) }}">{{ $submission->event->title ?? $submission->event->name }}</a>
                            @else
                                <em>Deleted Event</em>
                            @endif
                        </div>
                        <div class="col-6 col-md-3">{{ $submission->title ?? 'Untitled' }}</div>
                        <div class="col-6 col-md-2">
                            @if($submission->status == 'pending')
                                <span class="badge badge-warning">Pending</span>
                            @elseif($submission->status == 'approved')
                                <span class="badge badge-success">Approved</span>
                            @else
                                <span class="badge badge-danger">{{ ucfirst($submission->status) }}</span>
                            @endif
                        </div>
                        <div class="col-6 col-md-2">{!! pretty_date($submission->created_at) !!}</div>
                        <div class="col-6 col-md-2">
                            @if($submission->event)
                                <a href="{{ url('monthly-event/'.$submission->event->slug) }}" class="btn btn-primary btn-sm py-0 px-1">View Event</a>
                            @endif
                            @if($submission->status == 'pending' && Auth::check() && Auth::user()->id == $submission->user_id)
                                {!! Form::open(['url' => 'monthly-event/submission/'.$submission->id.'/delete', 'class' => 'd-inline']) !!}
                                    <button type="submit" class="btn btn-danger btn-sm py-0 px-1" title="Delete" onclick="return confirm('Are you sure? This cannot be undone.');">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                {!! Form::close() !!}
                            @endif
                        </div>
                    </div>
                @endforeach
            </div>
            {!! $eventSubmissions->render() !!}
        @else
            <p class="text-muted">No event submissions found.</p>
        @endif
    </div>
</div>

@endsection
