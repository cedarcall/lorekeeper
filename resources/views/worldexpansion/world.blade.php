@extends('worldexpansion.layout')

@section('title') Gallery @endsection

@section('content')
{!! breadcrumbs(['World' => 'world', 'Gallery' => 'world/gallery']) !!}

<h1>Gallery</h1>

<div class="site-page-content parsed-text mb-4">
    {!! $world->parsed_text !!}
</div>

@if(!empty($sections))
<div class="row">
    @foreach($sections as $i => $section)
        <div class="col-md-6 mb-4">
            <div class="card h-100" style="background: rgba(10, 20, 40, 0.6); border: 2px solid #00ccff; box-shadow: 0 0 20px rgba(0, 204, 255, 0.3);">
                @if(!empty($section['image']))
                    <img src="{{ asset($section['image']) }}" class="card-img-top" alt="{{ $section['title'] }}" style="max-height: 200px; object-fit: cover;">
                @endif
                <div class="card-body">
                    @if(!empty($section['title']))
                        <h4 class="card-title" style="color: #00ccff;">{{ $section['title'] }}</h4>
                    @endif
                    @if(!empty($section['description']))
                        <div class="card-text parsed-text">
                            {!! $section['description'] !!}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    @endforeach
</div>
@endif

@endsection
