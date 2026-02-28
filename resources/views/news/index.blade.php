@extends('layouts.app')

@section('title') Site News @endsection

@section('content')
<style>
    .news-card {
        position: relative;
        overflow: hidden;
        background-color: rgba(10, 20, 40, 0.6);
        border: 2px solid #00ccff;
        box-shadow: 0 0 20px rgba(0, 204, 255, 0.5), inset 0 0 20px rgba(0, 204, 255, 0.08);
        background-image: repeating-linear-gradient(
            0deg,
            rgba(0, 204, 255, 0.35) 0px,
            rgba(0, 204, 255, 0.35) 2px,
            transparent 2px,
            transparent 4px
        );
        background-size: 100% 4px;
        background-position: 0 0;
        animation: scan-lines 6s linear infinite;
    }

    .news-card .card-header,
    .news-card .card-body {
        background-color: transparent;
    }

    @keyframes scan-lines {
        0% {
            background-position: 0 0;
        }
        100% {
            background-position: 0 8px;
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
