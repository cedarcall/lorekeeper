@extends('layouts.app')

@section('title') {{ $event->title }} @endsection

@section('content')
    @php
        $eventTitle = $event->title ?? $event->name;
        $eventStart = $event->start_at ?? $event->occur_start;
        $eventEnd = $event->end_at ?? $event->occur_end;
        $eventHeader = $event->header_image ?? ($event->image_extension ? 'images/data/event/'.$event->id.'-image.'.$event->image_extension : null);
        $eventBody = $event->parsed_description ?? $event->description ?? $event->parsed_text ?? $event->content;
        $eventFaq = $event->parsed_qna ?? $event->qna ?? $event->qna_parsed_text ?? $event->qna_content;
    @endphp

    {!! breadcrumbs(['Monthly Event' => url('monthly-event'), $eventTitle => url('monthly-event/'.$event->slug)]) !!}

    <div class="card mb-3">
        <div class="card-header">
            <h1 class="mb-0">{{ $eventTitle }}</h1>
            <small class="text-muted">
                @if($eventStart)Started {!! pretty_date($eventStart) !!}@endif
                @if($eventStart && $eventEnd)::@endif
                @if($eventEnd)Ends {!! pretty_date($eventEnd) !!}@endif
            </small>
        </div>

        @if($eventHeader)
            <img src="{{ asset($eventHeader) }}" alt="{{ $eventTitle }}" style="width:100%; height:auto;">
        @endif

        <div class="card-body">
            <div class="parsed-text news-body">
                {!! $eventBody !!}
            </div>
        </div>
    </div>

    @if($eventFaq)
    <div class="card mb-3">
        <div class="card-header">
            <h3 class="mb-0">FAQ / Rewards</h3>
        </div>
        <div class="card-body">
            <div class="parsed-text news-body">
                {!! $eventFaq !!}
            </div>
        </div>
    </div>
    @endif

    @if($previous && $previous->count())
        <h4>Previous Events</h4>
        <div class="row">
            @foreach($previous as $ev)
                <div class="col-md-3 mb-3">
                    @php
                        $prevTitle = $ev->title ?? $ev->name;
                        $prevHeader = $ev->header_image ?? ($ev->image_extension ? 'images/data/event/'.$ev->id.'-image.'.$ev->image_extension : null);
                    @endphp
                    <a href="{{ url('monthly-event/'.$ev->slug) }}" class="card h-100 text-reset">
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

@endsection
