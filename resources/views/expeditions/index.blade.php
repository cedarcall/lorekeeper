@extends('layouts.app')

@section('title') Expeditions @endsection

@section('content')
<div class="container">
    {!! breadcrumbs(['Expeditions' => url('expeditions')]) !!}

    <h1>Expeditions</h1>

    @if($currentGalaxy)
        <div class="alert alert-info mb-4">
            <h4 class="alert-heading">{{ $currentGalaxy->name }}</h4>
            <p>This is the current galaxy available for exploration. Plan your expeditions carefully!</p>
        </div>

        @if(!$planets->count() && !($featuredPlanet && $featuredPlanet->planet))
            <p>No planets available in this galaxy yet.</p>
        @else
            <div class="row">
                @if($featuredPlanet && $featuredPlanet->planet)
                    <div class="col-md-6 col-lg-4 mb-4">
                        <div class="card h-100" style="background: rgba(10, 20, 40, 0.8); border: 2px solid #ffb347;">
                            <div class="card-body">
                                <h5 class="card-title">{{ $featuredPlanet->planet->name }}</h5>
                                <div class="mb-2" style="color:#ffb347; font-weight:600;">
                                    <i class="fas fa-star"></i> Featured Planet
                                </div>
                                <p class="card-text">
                                    <small class="d-block mb-2">
                                        <span class="badge badge-{{ $featuredPlanet->planet->rarity == 'legendary' ? 'warning' : ($featuredPlanet->planet->rarity == 'rare' ? 'info' : ($featuredPlanet->planet->rarity == 'uncommon' ? 'secondary' : 'light')) }}">
                                            {{ ucfirst($featuredPlanet->planet->rarity) }}
                                        </span>
                                    </small>
                                    <strong>Type:</strong> {{ $featuredPlanet->planet->type ?? 'Unknown' }}<br>
                                    <strong>Risk:</strong> {{ ucfirst($featuredPlanet->planet->risk_level ?? 'Unknown') }}<br>
                                </p>
                            </div>
                            <div class="card-footer bg-transparent border-top-0">
                                @auth
                                    <a href="{{ url('expeditions/'.$featuredPlanet->planet->id) }}" class="btn btn-sm btn-primary btn-block">
                                        <i class="fas fa-rocket"></i> Explore
                                    </a>
                                @else
                                    <a href="{{ url('login') }}" class="btn btn-sm btn-primary btn-block">
                                        <i class="fas fa-sign-in-alt"></i> Log In to Explore
                                    </a>
                                @endauth
                            </div>
                        </div>
                    </div>
                @endif
                @foreach($planets as $planet)
                    @if($featuredPlanet && $featuredPlanet->planet_id == $planet->id)
                        @continue
                    @endif
                    <div class="col-md-6 col-lg-4 mb-4">
                        <div class="card h-100" style="background: rgba(10, 20, 40, 0.8); border: 2px solid #00ccff;">
                            <div class="card-body">
                                <h5 class="card-title">{{ $planet->name }}</h5>
                                @if($featuredPlanet && $featuredPlanet->planet_id == $planet->id)
                                    <div class="mb-2" style="color:#ffb347; font-weight:600;">
                                        <i class="fas fa-star"></i> Featured Planet
                                    </div>
                                @endif
                                
                                <p class="card-text">
                                    <small class="d-block mb-2">
                                        <span class="badge badge-{{ $planet->rarity == 'legendary' ? 'warning' : ($planet->rarity == 'rare' ? 'info' : ($planet->rarity == 'uncommon' ? 'secondary' : 'light')) }}">
                                            {{ ucfirst($planet->rarity) }}
                                        </span>
                                    </small>
                                    <strong>Type:</strong> {{ $planet->type ?? 'Unknown' }}<br>
                                    <strong>Risk:</strong> {{ ucfirst($planet->risk_level ?? 'Unknown') }}<br>
                                    @if(Auth::check())
                                        @php
                                            $userExpedition = $userExpeditions[$planet->id] ?? null;
                                        @endphp
                                        @if($userExpedition)
                                            <strong>Visits:</strong> {{ $userExpedition->visit_count }} / {{ $planet->unlock_threshold }}<br>
                                            @if($userExpedition->is_discoverer)
                                                <span class="badge badge-gold"><i class="fas fa-star"></i> First Explorer</span>
                                            @endif
                                        @else
                                            <em>Not yet explored</em>
                                        @endif
                                    @endif
                                </p>
                            </div>
                            <div class="card-footer bg-transparent border-top-0">
                                @auth
                                    <a href="{{ url('expeditions/'.$planet->id) }}" class="btn btn-sm btn-primary btn-block">
                                        <i class="fas fa-rocket"></i> Explore
                                    </a>
                                @else
                                    <a href="{{ url('login') }}" class="btn btn-sm btn-primary btn-block">
                                        <i class="fas fa-sign-in-alt"></i> Log In to Explore
                                    </a>
                                @endauth
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            {{ $planets->render() }}
        @endif
    @else
        <div class="alert alert-warning">
            <h4>No Active Galaxy</h4>
            <p>There is currently no active galaxy for exploration. Please check back later.</p>
        </div>
    @endif
</div>
@endsection
