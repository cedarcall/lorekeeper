@extends('layouts.app')

@section('title') {{ $current->title ?? $current->name ?? 'Monthly Event' }} @endsection

@section('content')
    <style>
        .event-card {
            background: rgba(10, 20, 40, 0.6);
            border: 2px solid #00ccff;
            box-shadow: 0 0 20px rgba(0, 204, 255, 0.5), inset 0 0 20px rgba(0, 204, 255, 0.08);
        }

        .event-card .card-header,
        .event-card .card-body {
            background-color: transparent;
        }
    </style>

    {!! breadcrumbs(['Monthly Event' => url('monthly-event')]) !!}

    @if($current)
        @php
            $currentTitle = $current->title ?? $current->name;
            $currentStart = $current->start_at ?? $current->occur_start;
            $currentEnd = $current->end_at ?? $current->occur_end;
            $currentHeader = $current->header_image ?? ($current->image_extension ? 'images/data/event/'.$current->id.'-image.'.$current->image_extension : null);
            $currentBody = $current->parsed_description ?? $current->description ?? $current->parsed_text ?? $current->content;
            $currentFaq = $current->parsed_qna ?? $current->qna ?? $current->qna_parsed_text ?? $current->qna_content;
        @endphp
        <div class="card mb-3 event-card">
            <div class="card-header">
                <h1 class="mb-0">{{ $currentTitle }}</h1>
                <small class="text-muted">
                    @if($currentStart)Started {!! pretty_date($currentStart) !!}@endif
                    @if($currentStart && $currentEnd)::@endif
                    @if($currentEnd)Ends {!! pretty_date($currentEnd) !!}@endif
                </small>
            </div>

            @if($currentHeader)
                <img src="{{ asset($currentHeader) }}" alt="{{ $currentTitle }}" style="width:100%; height:auto;">
            @endif

            <div class="card-body">
                <div class="parsed-text news-body">
                    {!! $currentBody !!}
                </div>
            </div>
        </div>

        @if($currentFaq)
        <div class="card mb-3 event-card">
            <div class="card-header">
                <h3 class="mb-0">FAQ / Rewards</h3>
            </div>
            <div class="card-body">
                <div class="parsed-text news-body">
                    {!! $currentFaq !!}
                </div>
            </div>
        </div>
        @endif
    @else
        <div class="card mb-3 event-card"><div class="card-body">No current event.</div></div>
    @endif

    @if($previous && $previous->count())
        <h3>Previous Events</h3>
        <div class="row">
            @foreach($previous as $ev)
                <div class="col-md-4 mb-3">
                    @php
                        $prevTitle = $ev->title ?? $ev->name;
                        $prevHeader = $ev->header_image ?? ($ev->image_extension ? 'images/data/event/'.$ev->id.'-image.'.$ev->image_extension : null);
                        $prevBody = $ev->parsed_description ?? $ev->description ?? $ev->parsed_text ?? $ev->content;
                        $prevLink = $ev->url ?? url('monthly-event');
                    @endphp
                    <a href="{{ $prevLink }}" class="card h-100 text-reset event-card">
                        @if($prevHeader)
                            <img class="card-img-top" src="{{ asset($prevHeader) }}" alt="{{ $prevTitle }}">
                        @endif
                        <div class="card-body">
                            <h5 class="card-title">{{ $prevTitle }}</h5>
                            @if($ev->start_at || $ev->end_at || $ev->occur_start || $ev->occur_end)
                                <p class="card-text small text-muted">
                                    @if($ev->start_at || $ev->occur_start){{ pretty_date($ev->start_at ?? $ev->occur_start) }}@endif
                                    @if(($ev->start_at || $ev->occur_start) && ($ev->end_at || $ev->occur_end))&ndash;@endif
                                    @if($ev->end_at || $ev->occur_end){{ pretty_date($ev->end_at ?? $ev->occur_end) }}@endif
                                </p>
                            @endif
                            <p class="card-text">{{ Str::limit(strip_tags($prevBody), 150) }}</p>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    @endif
@endsection
