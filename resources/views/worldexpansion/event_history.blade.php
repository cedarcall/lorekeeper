@extends('worldexpansion.layout')

@section('title') Event History @endsection

@section('content')
{!! breadcrumbs(['World' => 'world', 'Events' => 'world/events', 'History' => 'world/event-history']) !!}
<h1>Event History</h1>

<div class="mb-3">
    {!! Form::open(['method' => 'GET', 'class' => '']) !!}
        <div class="form-inline justify-content-end">
            <div class="form-group ml-3 mb-3">
                {!! Form::text('name', Request::get('name'), ['class' => 'form-control', 'placeholder' => 'Name']) !!}
            </div>
            <div class="form-group ml-3 mb-3">
                {!! Form::select('category_id', $categories, Request::get('category_id'), ['class' => 'form-control']) !!}
            </div>
        </div>
        <div class="form-inline justify-content-end">
            <div class="form-group ml-3 mb-3">
                {!! Form::select('sort', [
                    'alpha'          => 'Sort Alphabetically (A-Z)',
                    'alpha-reverse'  => 'Sort Alphabetically (Z-A)',
                    'category'          => 'Sort by Category',
                    'newest'         => 'Newest First',
                    'oldest'         => 'Oldest First'
                ], Request::get('sort') ? : 'category', ['class' => 'form-control']) !!}
            </div>
            <div class="form-group ml-3 mb-3">
                {!! Form::submit('Search', ['class' => 'btn btn-primary']) !!}
            </div>
        </div>
    {!! Form::close() !!}
</div>

{!! $events->render() !!}

@if($events->count())
    <div class="row mx-0">
        @foreach($events as $event)
            <div class="col-12 col-md-4 mb-3">
                <a href="{{ url('world/events/'.$event->id) }}" class="card h-100 text-reset">
                    @if($event->image_extension)
                        <img src="{{ $event->imageUrl }}" class="card-img-top" alt="{{ $event->name }}" style="height: 200px; object-fit: cover;">
                    @elseif($event->thumb_extension)
                        <img src="{{ $event->thumbUrl }}" class="card-img-top" alt="{{ $event->name }}" style="height: 200px; object-fit: cover;">
                    @endif

                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title mb-2">{!! $event->displayName !!}</h5>

                        @if($event->category)
                            <p class="small text-muted mb-2">{!! $event->category->displayName !!}</p>
                        @endif

                        @if($event->occur_start || $event->occur_end)
                            <p class="small text-muted mb-2">
                                @if($event->occur_start){!! pretty_date($event->occur_start) !!}@endif
                                @if($event->occur_start && $event->occur_end)&ndash;@endif
                                @if($event->occur_end){!! pretty_date($event->occur_end) !!}@endif
                            </p>
                        @endif

                        @if($event->summary)
                            <p class="card-text mb-3">{{ Str::limit(strip_tags($event->summary), 140) }}</p>
                        @endif

                        <div class="mt-auto">
                            @if(count(allAttachments($event)))
                                <div class="small text-muted">
                                    @foreach(allAttachments($event) as $type => $attachments)
                                        <span class="badge badge-light">{{ count($attachments) }} {{ strtolower($type) }}</span>
                                    @endforeach
                                </div>
                            @endif
                        </div>
                    </div>
                </a>
            </div>
        @endforeach
    </div>

    {!! $events->render() !!}
    <div class="text-center mt-4 small text-muted">{{ $events->total() }} result{{ $events->total() == 1 ? '' : 's' }} found.</div>
@else
    <div class="card">
        <div class="card-body text-center text-muted">No events found matching your criteria.</div>
    </div>
@endif

@endsection
