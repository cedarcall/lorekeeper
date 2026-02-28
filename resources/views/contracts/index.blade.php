@extends('layouts.app')

@section('title') {{ $current->name ?? 'Contracts' }} @endsection

@section('content')
    <style>
        .contract-card {
            background: rgba(10, 20, 40, 0.6);
            border: 2px solid #00ccff;
            box-shadow: 0 0 20px rgba(0, 204, 255, 0.5), inset 0 0 20px rgba(0, 204, 255, 0.08);
        }

        .contract-card .card-header,
        .contract-card .card-body {
            background-color: transparent;
        }
    </style>

    {!! breadcrumbs(['Contracts' => url('contracts')]) !!}

    <div class="alert alert-info mb-3">
        <i class="fas fa-info-circle mr-2"></i> Want to learn about contracts? <a href="{{ url('world/gallery') }}"><strong>Go to this page!</strong></a>
    </div>

    @if($current)
        <div class="card mb-3 contract-card">
            <div class="card-header">
                <h1 class="mb-0">
                    {{ $current->name }}
                    @auth
                        @if(isset($userClaimed[$current->id]))
                            @if($userClaimed[$current->id] == 'completed')
                                <span class="badge badge-success ml-2">Completed</span>
                            @elseif($userClaimed[$current->id] == 'claimed')
                                <span class="badge badge-warning ml-2">In Progress</span>
                            @endif
                        @endif
                    @endauth
                </h1>
                <small class="text-muted">
                    @if($current->occur_start)Started {!! pretty_date($current->occur_start) !!}@endif
                    @if($current->occur_start && $current->occur_end)::@endif
                    @if($current->occur_end)Ends {!! pretty_date($current->occur_end) !!}@endif
                </small>
            </div>

            @if($current->imageUrl)
                <img src="{{ asset($current->imageUrl) }}" alt="{{ $current->name }}" style="width:100%; height:auto;">
            @endif

            <div class="card-body">
                @if($current->displayLocation)
                    <div class="mb-3">
                        <strong>Location:</strong> {{ $current->displayLocation }}
                    </div>
                @endif

                @if($current->requiredItemsArray && count($current->requiredItemsArray) > 0)
                    <div class="mb-3">
                        <strong>Objective:</strong>
                        @foreach($current->requiredItemsArray as $reqItem)
                            @php $item = \App\Models\Item\Item::find($reqItem['item_id']); @endphp
                            @if($item)
                                <br>Collect {{ $reqItem['quantity'] }}x {{ $item->name }}
                            @endif
                        @endforeach
                    </div>
                @endif

                @if($current->rewardsArray && count($current->rewardsArray) > 0)
                    <div class="mb-3">
                        <strong>Turn-In Reward:</strong>
                        @foreach($current->rewardsArray as $reward)
                            @if($reward['type'] == 'item')
                                @php $item = \App\Models\Item\Item::find($reward['id']); @endphp
                                @if($item)
                                    <br>+{{ $reward['quantity'] }} {{ $item->name }}
                                @endif
                            @elseif($reward['type'] == 'currency')
                                @php $currency = \App\Models\Currency\Currency::find($reward['id']); @endphp
                                @if($currency)
                                    <br>+{{ $reward['quantity'] }} {{ $currency->name }}
                                @endif
                            @endif
                        @endforeach
                    </div>
                @endif

                @auth
                    <hr>
                    <div class="text-center">
                        @if(!isset($userClaimed[$current->id]))
                            {{-- Not claimed yet --}}
                            {!! Form::open(['url' => 'contracts/'.$current->id.'/claim', 'class' => 'd-inline']) !!}
                                {!! Form::submit('Claim Contract', ['class' => 'btn btn-primary btn-lg']) !!}
                            {!! Form::close() !!}
                        @elseif($userClaimed[$current->id] == 'claimed')
                            {{-- Claimed but not completed --}}
                            @php
                                $userContract = \App\Models\UserContract::where('user_id', Auth::id())->where('contract_id', $current->id)->first();
                            @endphp
                            {!! Form::open(['url' => 'contracts/complete/'.$userContract->id, 'class' => 'd-inline']) !!}
                                {!! Form::submit('Complete Contract', ['class' => 'btn btn-success btn-lg']) !!}
                            {!! Form::close() !!}
                            <p class="text-muted mt-2 mb-0"><small>This will remove the required items from your inventory and grant you the rewards.</small></p>
                        @else
                            {{-- Already completed --}}
                            <p class="text-success mb-0"><i class="fas fa-check-circle mr-2"></i>You have completed this contract!</p>
                        @endif
                    </div>
                @else
                    <hr>
                    <div class="text-center">
                        <a href="{{ url('login') }}" class="btn btn-secondary">Log in to claim this contract</a>
                    </div>
                @endauth
            </div>
        </div>
    @else
        <div class="card mb-3 contract-card"><div class="card-body">No current contracts.</div></div>
    @endif

    @if($previous && $previous->count())
        <h3>Previous Contracts</h3>
        <div class="row">
            @foreach($previous as $contract)
                <div class="col-md-4 mb-3">
                    <a href="{{ url('contracts/'.$contract->id) }}" class="card h-100 text-reset contract-card">
                        @if($contract->thumbUrl)
                            <img class="card-img-top" src="{{ asset($contract->thumbUrl) }}" alt="{{ $contract->name }}">
                        @endif
                        <div class="card-body">
                            <h5 class="card-title">{{ $contract->name }}</h5>
                            @if($contract->occur_start || $contract->occur_end)
                                <p class="card-text small text-muted">
                                    @if($contract->occur_start){{ pretty_date($contract->occur_start) }}@endif
                                    @if($contract->occur_start && $contract->occur_end)&ndash;@endif
                                    @if($contract->occur_end){{ pretty_date($contract->occur_end) }}@endif
                                </p>
                            @endif
                            <p class="card-text">{{ Str::limit(strip_tags($contract->parsed_description), 150) }}</p>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    @endif
@endsection
