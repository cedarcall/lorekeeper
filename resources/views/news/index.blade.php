@extends('layouts.app')

@section('title') Site News @endsection

@section('content')
<style>
    .news-body hr {
        border: none;
        border-top: 1px solid #00ccff;
        position: relative;
        margin: 2rem 0;
        animation: pulse-line 2s ease-in-out infinite;
    }

    .news-body hr::after {
        content: '•';
        position: absolute;
        left: 50%;
        top: -10px;
        transform: translateX(-50%);
        font-size: 1.5rem;
        color: #00ffcc;
        text-shadow: 0 0 10px #00ffcc;
        animation: pulse-dot 2s ease-in-out infinite;
    }

    @keyframes pulse-line {
        0%, 100% {
            border-top-color: #00ccff;
            box-shadow: 0 0 5px rgba(0, 51, 102, 0.5);
        }
        50% {
            border-top-color: #00ffcc;
            box-shadow: 0 0 15px rgba(0, 255, 200, 0.7);
        }
    }

    @keyframes pulse-dot {
        0%, 100% {
            text-shadow: 0 0 10px #00ffcc;
            opacity: 0.8;
        }
        50% {
            text-shadow: 0 0 20px #00ffcc, 0 0 30px rgba(0, 255, 200, 0.6);
            opacity: 1;
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
