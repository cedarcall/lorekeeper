@extends('layouts.app')

@section('title') Site News @endsection

@section('content')
<style>
    .news-container {
        position: relative;
    }

    .news-container::before {
        content: '';
        position: absolute;
        top: -20px;
        left: 0;
        right: 0;
        height: 2px;
        background: linear-gradient(90deg, transparent, #00ffcc, transparent);
        box-shadow: 0 0 10px #00ffcc, 0 0 20px rgba(0, 255, 200, 0.5);
        animation: slide-line 4s infinite;
    }

    @keyframes slide-line {
        0%, 100% {
            box-shadow: 0 0 10px #00ffcc, 0 0 20px rgba(0, 255, 200, 0.5);
        }
        50% {
            box-shadow: 0 0 20px #00ffcc, 0 0 40px rgba(0, 255, 200, 0.8);
        }
    }
</style>

<div class="news-container">
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
</div>
@endsection
