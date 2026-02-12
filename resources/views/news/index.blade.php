@extends('layouts.app')

@section('title') Site News @endsection

@section('content')
<style>
    .news-card {
        position: relative;
        overflow: hidden;
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
            rgba(0, 255, 200, 0.03) 0px,
            rgba(0, 255, 200, 0.03) 1px,
            transparent 1px,
            transparent 2px
        );
        pointer-events: none;
        animation: scan-lines 8s linear infinite;
        z-index: 1;
    }

    .news-card::after {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 2px;
        background: linear-gradient(90deg, transparent, rgba(0, 255, 200, 0.6), transparent);
        animation: line-sweep 4s ease-in-out infinite;
        z-index: 2;
    }

    .news-card > * {
        position: relative;
        z-index: 3;
    }

    @keyframes scan-lines {
        0% {
            transform: translateY(0);
        }
        100% {
            transform: translateY(10px);
        }
    }

    @keyframes line-sweep {
        0%, 100% {
            top: 0;
            box-shadow: 0 0 10px rgba(0, 255, 200, 0.4);
        }
        50% {
            top: 50%;
            box-shadow: 0 0 20px rgba(0, 255, 200, 0.7);
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
