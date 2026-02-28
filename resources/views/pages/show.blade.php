@extends('layouts.app')

@section('title') {{ $page->title }} @endsection

@section('content')
    {!! breadcrumbs([$page->title => url($page->key)]) !!}

    <div class="card mb-3">
        <div class="card-header">
            <h1 class="mb-0">{{ $page->title }}</h1>
            <small class="text-muted">
                Posted {{ pretty_date($page->created_at) }}
                :: Last updated {{ pretty_date($page->updated_at) }}
            </small>
        </div>

        @if($page->header_image)
            <img src="{{ asset($page->header_image) }}" alt="{{ $page->title }}" style="width:100%; height:auto;">
        @endif

        <div class="card-body">
                <div class="parsed-text news-body">
                    {!! $page->parsed_text ?? $page->text !!}
                </div>
            </div>
    </div>
@endsection
