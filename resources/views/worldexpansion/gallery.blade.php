@extends('worldexpansion.layout')

@section('title') Gallery @endsection

@section('content')
{!! breadcrumbs(['World' => 'world', 'Gallery' => 'world/gallery']) !!}

<h1>Gallery</h1>
<p>Browse submissions from our community for monthly events, expeditions, and more!</p>

{{-- Filter Bar --}}
<div class="card mb-4">
    <div class="card-body">
        <form id="filterForm" method="GET">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="type">Submission Type</label>
                        <select name="type" id="type" class="form-control">
                            <option value="">All Submissions</option>
                            <option value="event" {{ request('type') == 'event' ? 'selected' : '' }}>Monthly Events</option>
                            <option value="expedition" {{ request('type') == 'expedition' ? 'selected' : '' }}>Expeditions</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="submission_type">Format</label>
                        <select name="submission_type" id="submission_type" class="form-control">
                            <option value="">All Formats</option>
                            <option value="art" {{ request('submission_type') == 'art' ? 'selected' : '' }}>Art</option>
                            <option value="writing" {{ request('submission_type') == 'writing' ? 'selected' : '' }}>Writing</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="sort">Sort By</label>
                        <select name="sort" id="sort" class="form-control">
                            <option value="newest" {{ request('sort') == 'newest' ? 'selected' : '' }}>Newest First</option>
                            <option value="oldest" {{ request('sort') == 'oldest' ? 'selected' : '' }}>Oldest First</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="text-right">
                <button type="submit" class="btn btn-primary">Apply Filters</button>
                <a href="{{ url('world/gallery') }}" class="btn btn-secondary">Clear Filters</a>
            </div>
        </form>
    </div>
</div>

{{-- Gallery Grid --}}
@if($submissions->count())
    <div class="row">
        @foreach($submissions as $submission)
            <div class="col-md-4 col-sm-6 mb-4">
                <div class="card h-100" style="background: rgba(10, 20, 40, 0.6); border: 2px solid #00ccff; box-shadow: 0 0 10px rgba(0, 204, 255, 0.2);">
                    @if($submission->submission_type == 'art' && $submission->image_url)
                        <a href="{{ url('world/gallery/'.$submission->type.'/'.$submission->id) }}">
                            <img src="{{ $submission->image_url }}" class="card-img-top" alt="{{ $submission->title }}" style="max-height: 250px; object-fit: cover;">
                        </a>
                    @else
                        <div class="card-img-top bg-secondary d-flex align-items-center justify-content-center" style="height: 250px;">
                            <i class="fas fa-book fa-4x text-white"></i>
                        </div>
                    @endif
                    <div class="card-body">
                        <h5 class="card-title" style="color: #00ccff;">
                            <a href="{{ url('world/gallery/'.$submission->type.'/'.$submission->id) }}" style="color: #00ccff;">
                                {{ $submission->title ?? 'Untitled' }}
                            </a>
                        </h5>
                        <p class="text-muted mb-2">
                            <small>
                                <i class="fas fa-user"></i>
                                @if($submission->user)
                                    {!! $submission->user->displayName !!}
                                @else
                                    Deleted User
                                @endif
                                <br>
                                @if($submission->type == 'event')
                                    <i class="fas fa-calendar"></i>
                                    @if($submission->event)
                                        {{ $submission->event->title ?? $submission->event->name ?? 'Event' }}
                                    @else
                                        Deleted Event
                                    @endif
                                @else
                                    <i class="fas fa-planet"></i>
                                    @if($submission->planet)
                                        {{ $submission->planet->name }}
                                    @else
                                        Deleted Planet
                                    @endif
                                @endif
                            </small>
                        </p>
                        @if($submission->description)
                            <p class="card-text small">
                                {{ Str::limit(strip_tags($submission->description), 100) }}
                            </p>
                        @endif
                        <div class="mt-2">
                            <span class="badge badge-{{ $submission->submission_type == 'art' ? 'primary' : 'info' }}">
                                {{ ucfirst($submission->submission_type) }}
                            </span>
                            @if($submission->credit_reward || $submission->reputation_reward)
                                <span class="badge badge-success">
                                    @if($submission->credit_reward)
                                        <i class="fas fa-coins"></i> {{ $submission->credit_reward }}
                                    @endif
                                    @if($submission->reputation_reward)
                                        <i class="fas fa-star"></i> {{ $submission->reputation_reward }}
                                    @endif
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="card-footer text-muted small">
                        <i class="far fa-clock"></i> {!! pretty_date($submission->approved_at ?? $submission->created_at) !!}
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <div class="mt-4">
        {!! $submissions->appends(request()->query())->render() !!}
    </div>
@else
    <div class="alert alert-info">
        <i class="fas fa-info-circle"></i> No submissions found matching your filters.
    </div>
@endif

@endsection
