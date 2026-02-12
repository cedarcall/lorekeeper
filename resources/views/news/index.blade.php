@extends('layouts.app')

@section('title') Site News @endsection

@section('content')
<style>
    .news-card {
        position: relative;
        background: rgba(10, 20, 40, 0.5);
    }

    .news-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-image: repeating-linear-gradient(
            0deg,
            rgba(0, 204, 255, 0.25) 0px,
            rgba(0, 204, 255, 0.25) 2px,
            transparent 2px,
            transparent 4px
        );
        pointer-events: none;
        animation: scan-lines 8s linear infinite;
        z-index: 1;
    }

    .news-card > * {
        position: relative;
        z-index: 2;
    }

    @keyframes scan-lines {
        0% {
            transform: translateY(0);
        }
        100% {
            transform: translateY(4px);
        }
    }
</style>

{!! breadcrumbs(['Site News' => 'news']) !!}
<h1>Site News</h1>
@if(count($newses))
    {!! $newses->render() !!}
    @foreach($newses as $news)
        @include('news._news', ['news' => $news, 'page' => FALSE])
    @endforeach
    {!! $newses->render() !!}
@else
    <div>No news posts yet.</div>
@endif
@endsection
