@extends('world.layout')

@section('title') {{ $species->name }} @endsection

@section('meta-img') {{ $species->speciesImageUrl }} @endsection

@section('meta-desc')
{!! substr(str_replace('"','&#39;',$species->description ?? ''),0,160) !!}
@endsection

@section('content')
{!! breadcrumbs(['World' => 'world',  ucfirst(__('lorekeeper.species')) => 'world/species', $species->name => $species->url]) !!}

<div class="row">
    <div class="col-sm"></div>
    <div class="col-lg-10">
        <div class="card mb-3">
            <div class="card-body">
                <div class="row world-entry">
                    @if($species->speciesImageUrl)
                        <div class="col-md-3 world-entry-image">
                            <a href="{{ $species->speciesImageUrl }}" data-lightbox="entry" data-title="{{ $species->name }}">
                                <img src="{{ $species->speciesImageUrl }}" class="world-entry-image" alt="{{ $species->name }}" />
                            </a>
                        </div>
                    @endif
                    <div class="{{ $species->speciesImageUrl ? 'col-md-9' : 'col-12' }}">
                        <h1>{!! $species->name !!} <a href="{{ $species->searchUrl }}" class="world-entry-search text-muted"><i class="fas fa-search"></i></a></h1>

                        @if(count($species->subtypes))
                            <div class="mb-2">
                                <strong>{{ ucfirst(__('lorekeeper.subtypes')) }}:</strong>
                                @foreach($species->subtypes as $count => $subtype)
                                    {!! $subtype->displayName !!}{{ $count < $species->subtypes->count() - 1 ? ', ' : '' }}
                                @endforeach
                            </div>
                        @endif

                        @if(count($species->features) && Config::get('lorekeeper.extensions.species_trait_index'))
                            <div class="mb-2">
                                <a href="{{ $species->visualTraitsUrl }}"><strong>Visual Trait Index</strong></a>
                            </div>
                        @endif

                        <div class="world-entry-text">
                            {!! trim($species->parsed_page_text ?: $species->parsed_description) !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm"></div>
</div>
@endsection
