@extends('admin.layout')

@section('admin-title') Answer Question @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Event Questions' => 'admin/event-questions', 'Question #'.$question->id => 'admin/event-questions/'.$question->id]) !!}

<h1>
    @if($question->is_answered)
        View Answer
    @else
        Answer Question
    @endif
</h1>

<div class="card mb-4">
    <div class="card-header">
        <h5 class="mb-0">Question Details</h5>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <strong>Asked by:</strong> 
                @if($question->user)
                    <a href="{{ $question->user->url }}">{!! $question->user->displayName !!}</a>
                @else
                    <em>Deleted User</em>
                @endif
            </div>
            <div class="col-md-6">
                <strong>Event:</strong> 
                @if($question->event)
                    <a href="{{ url('monthly-event/'.$question->event->slug) }}">{{ $question->event->name }}</a>
                @else
                    <em>Deleted Event</em>
                @endif
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-md-6">
                <strong>Asked on:</strong> 
                {{ $question->created_at ? $question->created_at->format('M d, Y \\a\\t g:i A') : 'Unknown' }}
            </div>
            <div class="col-md-6">
                <strong>Status:</strong> 
                @if($question->is_answered)
                    <span class="badge badge-success">Answered</span>
                @else
                    <span class="badge badge-warning">Pending</span>
                @endif
            </div>
        </div>
        <hr>
        <h6>Question:</h6>
        <div class="p-3 border rounded">
            {!! nl2br(e($question->question)) !!}
        </div>
    </div>
</div>

@if($question->is_answered)
    <div class="card mb-4">
        <div class="card-header bg-success text-white">
            <h5 class="mb-0">Answer</h5>
        </div>
        <div class="card-body">
            <div class="row mb-2">
                <div class="col-md-6">
                    <strong>Answered by:</strong> 
                    @if($question->staff)
                        <a href="{{ $question->staff->url }}">{!! $question->staff->displayName !!}</a>
                    @else
                        <em>Staff member</em>
                    @endif
                </div>
                <div class="col-md-6">
                    <strong>Answered on:</strong> 
                    {{ $question->answered_at->format('M d, Y \\a\\t g:i A') }}
                </div>
            </div>
            <hr>
            <div class="p-3 bg-light rounded">
                {!! nl2br(e($question->answer)) !!}
            </div>
        </div>
    </div>
@else
    <div class="card mb-4">
        <div class="card-header">
            <h5 class="mb-0">Your Answer</h5>
        </div>
        <div class="card-body">
            {!! Form::open(['url' => 'admin/event-questions/'.$question->id.'/answer']) !!}
                <div class="form-group">
                    {!! Form::label('answer', 'Answer') !!}
                    {!! Form::textarea('answer', null, ['class' => 'form-control', 'rows' => 5, 'required' => true, 'placeholder' => 'Type your answer here...']) !!}
                </div>
                <div class="text-right">
                    {!! Form::submit('Submit Answer', ['class' => 'btn btn-success']) !!}
                </div>
            {!! Form::close() !!}
        </div>
    </div>
@endif

<div class="text-right">
    <a href="{{ url('admin/event-questions') }}" class="btn btn-outline-secondary">Back to Questions</a>
    @if(!$question->is_answered)
        <a href="#" class="btn btn-outline-danger delete-question-button">Delete Question</a>
    @endif
</div>

@if(!$question->is_answered)
@section('scripts')
@parent
<script>
$('.delete-question-button').on('click', function(e) {
    e.preventDefault();
    if(confirm('Are you sure you want to delete this question? This action cannot be undone.')) {
        $.ajax({
            url: '{{ url('admin/event-questions/'.$question->id.'/delete') }}',
            type: 'POST',
            data: {
                _token: '{{ csrf_token() }}'
            },
            success: function(data) {
                window.location.href = '{{ url('admin/event-questions') }}';
            }
        });
    }
});
</script>
@endsection
@endif

@endsection
