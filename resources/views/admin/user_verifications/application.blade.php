@extends('admin.layout')

@section('admin-title') Review User Verification @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'User Verification Applications' => 'admin/users/verification-applications', 'Review' => 'admin/users/verification-applications/'.$application->id]) !!}

<h1>Review Verification Application #{{ $application->id }}</h1>

<div class="card mb-3">
    <div class="card-body">
        <div><strong>User:</strong>
            @if($application->user)
                {!! $application->user->displayName !!}
            @else
                <span class="text-muted">Unknown user</span>
            @endif
        </div>
        <div><strong>Status:</strong> {{ ucfirst($application->status) }}</div>
        <div><strong>Submitted:</strong> {{ $application->created_at }}</div>
        <div><strong>Social Link:</strong> <a href="{{ $application->social_media_link }}" target="_blank" rel="noopener noreferrer">{{ $application->social_media_link }}</a></div>
        <div><strong>Read Rules:</strong> {{ $application->rules_confirmed ? 'Yes' : 'No' }}</div>
        <div><strong>Voidi Species Answer:</strong> {{ $application->voidi_species_answer }}</div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h5">Why Join This ARPG?</div>
    <div class="card-body">
        {!! nl2br(e($application->join_reason)) !!}
    </div>
</div>

<div class="card">
    <div class="card-header h5">Review Decision</div>
    <div class="card-body">
        {!! Form::open(['url' => 'admin/users/verification-applications/'.$application->id]) !!}
        <div class="form-group">
            {!! Form::label('review_notes', 'Staff Notes (Optional)') !!}
            {!! Form::textarea('review_notes', old('review_notes', $application->review_notes), ['class' => 'form-control', 'rows' => 4]) !!}
        </div>
        <div class="d-flex">
            <button type="submit" name="action" value="approved" class="btn btn-success mr-2">Approve Account</button>
            <button type="submit" name="action" value="denied" class="btn btn-danger">Deny / Restrict Account</button>
        </div>
        {!! Form::close() !!}
    </div>
</div>
@endsection
