@extends('layouts.app')

@section('title') Monthly Event History @endsection

@section('content')
    {!! breadcrumbs(['Monthly Event' => url('monthly-event'), 'History' => url('monthly-event/history')]) !!}

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1 class="mb-0">Event History</h1>
        <a href="{{ url('monthly-event') }}" class="btn btn-outline-primary">Back to Current Event</a>
    </div>

    <p class="text-muted">Browse past monthly events. Click any card to open the full post.</p>

    @if($events->count())
        <div class="row">
            @foreach($events as $event)
                @php
                    $eventTitle = $event->title ?? $event->name;
                    $eventStart = $event->start_at ?? $event->occur_start;
                    $eventEnd = $event->end_at ?? $event->occur_end;
                    $eventBody = $event->parsed_description ?? $event->parsed_text ?? $event->description ?? $event->content;
                    $eventHeader = $event->header_image ?? ($event->image_extension ? 'images/data/event/'.$event->id.'-image.'.$event->image_extension : null);
                    $fallbackInspiration = ($event->inspiration_image_urls && count($event->inspiration_image_urls)) ? $event->inspiration_image_urls[0] : null;
                    $cardImage = $eventHeader ? asset($eventHeader) : $fallbackInspiration;
                @endphp

                <div class="col-12 col-md-6 col-lg-4 mb-3">
                    <a href="{{ url('monthly-event/'.($event->slug ?? $event->id)) }}" class="card h-100 text-reset">
                        @if($cardImage)
                            <img src="{{ $cardImage }}" alt="{{ $eventTitle }}" class="card-img-top" style="height: 200px; object-fit: cover;">
                        @endif

                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title mb-2">{{ $eventTitle }}</h5>

                            @if($eventStart || $eventEnd)
                                <p class="small text-muted mb-2">
                                    @if($eventStart){!! pretty_date($eventStart) !!}@endif
                                    @if($eventStart && $eventEnd)&ndash;@endif
                                    @if($eventEnd){!! pretty_date($eventEnd) !!}@endif
                                </p>
                            @endif

                            <p class="card-text mb-3">{{ \Illuminate\Support\Str::limit(strip_tags($eventBody), 140) }}</p>

                            <div class="mt-auto">
                                @if($event->lootTable || $event->award)
                                    <div class="small text-muted">
                                        @if($event->lootTable)
                                            <span class="badge badge-light mr-1">Rewards Available</span>
                                        @endif
                                        @if($event->award)
                                            <span class="badge badge-light">Badge Reward</span>
                                        @endif
                                    </div>
                                @endif
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>

        <div class="d-flex justify-content-center mt-2">
            {!! $events->render() !!}
        </div>
    @else
        <div class="card">
            <div class="card-body text-center text-muted">No historical monthly events are available yet.</div>
        </div>
    @endif
@endsection
