@extends('layouts.app')

@section('title') Forum @endsection

@section('content')
{!! breadcrumbs(['Forum' => 'forum']) !!}
<h1>Forums</h1>

@if(count($forums))

    @foreach($forums as $forum)
        @php
            $visibleBoards = $forum->children->sortBy('id')->sortBy('sort')->filter(function($board) {
                return (!$board->hasRestrictions) || (Auth::check() && Auth::user()->canVisitForum($board->id));
            });
        @endphp
        @if(!$forum->children->count() || $visibleBoards->count())
            <div class="card mb-3">
                <div class="card-body px-3 py-2">
                    <h3 class="mb-0" data-toggle="tooltip" title="{!! $forum->description !!}">{!! $forum->displayName !!} </h3>
                </div>
                @if($forum->children->count())
                    <ul class="list-group list-group-flush">
                        @foreach($visibleBoards as $board)
                            @include('forums._index_board', ['board' => $board])
                        @endforeach
                    </ul>
                @endif
            </div>
        @endif
    @endforeach

@else
    <div>No forums yet.</div>
@endif

@endsection
