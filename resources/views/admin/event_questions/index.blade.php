@extends('admin.layout')

@section('admin-title') Event Questions @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Event Questions' => 'admin/event-questions']) !!}

<h1>Event Questions</h1>

<p>Answer questions submitted by players about monthly events. Once you answer a question, the player will be notified.</p>

<ul class="nav nav-tabs mb-3">
    <li class="nav-item">
        <a class="nav-link {{ !Request::get('status') || Request::get('status') == 'pending' ? 'active' : '' }}" 
           href="{{ url('admin/event-questions') }}?status=pending">Pending</a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ Request::get('status') == 'answered' ? 'active' : '' }}" 
           href="{{ url('admin/event-questions') }}?status=answered">Answered</a>
    </li>
</ul>

@if($questions->count())
    <div class="row ml-md-2 mb-4">
        <div class="d-flex row flex-wrap col-12 pb-1 px-0 ubt-bottom">
            <div class="col-12 col-md-3 font-weight-bold">User</div>
            <div class="col-12 col-md-3 font-weight-bold">Event</div>
            <div class="col-12 col-md-4 font-weight-bold">Question Preview</div>
            <div class="col-12 col-md-2 font-weight-bold">Status</div>
        </div>
        @foreach($questions as $question)
            <div class="d-flex row flex-wrap col-12 mt-1 pt-2 px-0 ubt-top">
                <div class="col-12 col-md-3">
                    @if($question->user)
                        <a href="{{ $question->user->url }}">{!! $question->user->displayName !!}</a>
                    @else
                        <em>Deleted User</em>
                    @endif
                </div>
                <div class="col-12 col-md-3">
                    @if($question->event)
                        <a href="{{ url('monthly-event/'.$question->event->slug) }}">{{ $question->event->name }}</a>
                    @else
                        <em>Deleted Event</em>
                    @endif
                </div>
                <div class="col-12 col-md-4">
                    {{ Str::limit($question->question, 60) }}
                </div>
                <div class="col-12 col-md-2">
                    @if($question->is_answered)
                        <span class="badge badge-success">Answered</span>
                        <a href="{{ url('admin/event-questions/'.$question->id) }}" class="btn btn-sm btn-outline-info ml-2">View</a>
                    @else
                        <span class="badge badge-warning">Pending</span>
                        <a href="{{ url('admin/event-questions/'.$question->id) }}" class="btn btn-sm btn-primary ml-2">Answer</a>
                    @endif
                </div>
            </div>
        @endforeach
    </div>

    {!! $questions->appends(Request::query())->render() !!}
@else
    <p>No questions found!</p>
@endif

@endsection
