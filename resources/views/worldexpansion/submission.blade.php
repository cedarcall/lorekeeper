@extends('worldexpansion.layout')

@section('title') {{ $submission->title ?? 'Untitled' }} @endsection

@section('content')
{!! breadcrumbs(['World' => 'world', 'Gallery' => 'world/gallery', $submission->title ?? 'Untitled' => 'world/gallery/'.$type.'/'.$submission->id]) !!}

<div class="row">
    <div class="col-lg-8">
        <div class="card mb-4" style="background: rgba(10, 20, 40, 0.6); border: 2px solid #00ccff;">
            <div class="card-header">
                <h1 class="mb-0" style="color: #00ccff;">{{ $submission->title ?? 'Untitled' }}</h1>
            </div>
            <div class="card-body">
                {{-- Submission Image (for art) --}}
                @if($submission->submission_type == 'art' && $submission->image_url)
                    <div class="mb-3 text-center">
                        <img src="{{ $submission->image_url }}" alt="{{ $submission->title }}" class="img-fluid" style="max-width: 100%; border: 1px solid #00ccff;">
                    </div>
                @endif

                {{-- Description --}}
                @if($submission->description)
                    <div class="submission-description mb-4 parsed-text">
                        {!! nl2br(e($submission->description)) !!}
                    </div>
                @endif

                {{-- Metadata --}}
                <div class="row text-muted small mb-3">
                    <div class="col-md-6">
                        <strong>Submitted by:</strong>
                        @if($submission->user)
                            {!! $submission->user->displayName !!}
                        @else
                            Deleted User
                        @endif
                    </div>
                    <div class="col-md-6">
                        <strong>Format:</strong> {{ ucfirst($submission->submission_type) }}
                    </div>
                    <div class="col-md-6">
                        <strong>Submitted:</strong> {!! pretty_date($submission->created_at) !!}
                    </div>
                    @if($submission->approved_at)
                        <div class="col-md-6">
                            <strong>Approved:</strong> {!! pretty_date($submission->approved_at) !!}
                        </div>
                    @endif
                </div>
            </div>
        </div>

        {{-- Comments Section --}}
        <div class="card mb-4" style="background: rgba(10, 20, 40, 0.6); border: 2px solid #00ccff;">
            <div class="card-header">
                <h5 class="mb-0" style="color: #00ccff;">
                    <i class="fas fa-comments"></i> Comments
                </h5>
            </div>
            <div class="card-body">
                @comments(['model' => $submission, 'perPage' => 5])
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        {{-- Related Info Card --}}
        <div class="card mb-4" style="background: rgba(10, 20, 40, 0.6); border: 2px solid #00ccff;">
            <div class="card-header">
                <h5 class="mb-0" style="color: #00ccff;">Submission Details</h5>
            </div>
            <div class="card-body">
                @if($type == 'event' && $submission->event)
                    <div class="mb-3">
                        <strong>Event:</strong><br>
                        <a href="{{ url('monthly-event/'.$submission->event->slug) }}">
                            {{ $submission->event->title ?? $submission->event->name }}
                        </a>
                    </div>
                @elseif($type == 'expedition' && $submission->planet)
                    <div class="mb-3">
                        <strong>Planet:</strong><br>
                        <a href="{{ url('expeditions/'.$submission->planet->id) }}">
                            {{ $submission->planet->name }}
                        </a>
                    </div>
                @endif

                {{-- Rewards --}}
                @if($submission->credit_reward || $submission->reputation_reward)
                    <div class="mb-3">
                        <strong>Rewards Earned:</strong><br>
                        @if($submission->credit_reward)
                            <span class="badge badge-success">
                                <i class="fas fa-coins"></i> {{ $submission->credit_reward }} Credits
                            </span>
                        @endif
                        @if($submission->reputation_reward)
                            <span class="badge badge-success">
                                <i class="fas fa-star"></i> {{ $submission->reputation_reward }} Reputation
                            </span>
                        @endif
                    </div>
                @endif

                {{-- Linked Characters (if we add this later) --}}
                {{-- This would require adding a characters relationship to submissions --}}
            </div>
        </div>

        {{-- Back to Gallery --}}
        <div class="text-center">
            <a href="{{ url('world/gallery') }}" class="btn btn-secondary">
                <i class="fas fa-arrow-left"></i> Back to Gallery
            </a>
        </div>
    </div>
</div>

@endsection
