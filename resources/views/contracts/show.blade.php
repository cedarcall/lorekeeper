@extends('layouts.app')

@section('title') {{ $contract->name }} @endsection

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

    {!! breadcrumbs(['Contracts' => url('contracts'), $contract->name => url('contracts/'.$contract->id)]) !!}

    <div class="alert alert-info mb-3">
        <i class="fas fa-info-circle mr-2"></i> Want to learn about contracts? <a href="{{ url('world/gallery') }}"><strong>Go to this page!</strong></a>
    </div>

    <div class="card mb-3 contract-card">
        <div class="card-header">
            <h1 class="mb-0">{{ $contract->name }}</h1>
            <small class="text-muted">
                @if($contract->occur_start)Started {!! pretty_date($contract->occur_start) !!}@endif
                @if($contract->occur_start && $contract->occur_end)::@endif
                @if($contract->occur_end)Ends {!! pretty_date($contract->occur_end) !!}@endif
            </small>
        </div>

        @if($contract->imageUrl)
            <img src="{{ asset($contract->imageUrl) }}" alt="{{ $contract->name }}" style="width:100%; height:auto;">
        @endif

        <div class="card-body">
            @if($contract->summary)
                <div class="mb-3">
                    <strong>{{ $contract->summary }}</strong>
                </div>
            @endif

            @if($contract->displayLocation)
                <div class="mb-3">
                    <strong>Location:</strong> {{ $contract->displayLocation }}
                </div>
            @endif

            @if($contract->requiredItemsArray && count($contract->requiredItemsArray) > 0)
                <div class="card mb-3" style="background: rgba(0, 20, 40, 0.4); border: 1px solid #00ccff;">
                    <div class="card-header"><h5 class="mb-0">Required Items</h5></div>
                    <div class="card-body">
                        <ul class="mb-0">
                            @foreach($contract->requiredItemsArray as $reqItem)
                                @php
                                    $item = \App\Models\Item\Item::find($reqItem['item_id']);
                                @endphp
                                @if($item)
                                    <li>{{ $item->name }} x{{ $reqItem['quantity'] }}</li>
                                @endif
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif

            @if($contract->rewardsArray && count($contract->rewardsArray) > 0)
                <div class="card mb-3" style="background: rgba(0, 20, 40, 0.4); border: 1px solid #00ff88;">
                    <div class="card-header"><h5 class="mb-0">Rewards</h5></div>
                    <div class="card-body">
                        <ul class="mb-0">
                            @foreach($contract->rewardsArray as $reward)
                                @if($reward['type'] == 'item')
                                    @php
                                        $item = \App\Models\Item\Item::find($reward['id']);
                                    @endphp
                                    @if($item)
                                        <li>{{ $item->name }} x{{ $reward['quantity'] }}</li>
                                    @endif
                                @elseif($reward['type'] == 'currency')
                                    @php
                                        $currency = \App\Models\Currency\Currency::find($reward['id']);
                                    @endphp
                                    @if($currency)
                                        <li>{{ $currency->name }} x{{ $reward['quantity'] }}</li>
                                    @endif
                                @endif
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif

            @auth
                @if($userContract)
                    @if($userContract->status == 'claimed')
                        {!! Form::open(['url' => 'contracts/complete/'.$userContract->id, 'method' => 'POST']) !!}
                            <button type="submit" class="btn btn-success btn-lg">Complete Contract</button>
                        {!! Form::close() !!}
                        <p class="text-muted mt-2"><small>You have claimed this contract. Submit the required items to complete it.</small></p>
                    @elseif($userContract->status == 'completed')
                        <div class="alert alert-success">
                            <strong>Completed!</strong> You completed this contract on {{ $userContract->completed_at->format('M d, Y') }}.
                        </div>
                    @endif
                @else
                    {!! Form::open(['url' => 'contracts/'.$contract->id.'/claim', 'method' => 'POST']) !!}
                        <button type="submit" class="btn btn-primary btn-lg">Claim Contract</button>
                    {!! Form::close() !!}
                    <p class="text-muted mt-2"><small>Claim this contract to begin working on it. You'll need the required items to complete it.</small></p>
                @endif
            @else
                <div class="alert alert-info">
                    <a href="{{ url('login') }}">Log in</a> to claim and complete contracts.
                </div>
            @endauth
        </div>
    </div>

    <div class="text-center">
        <a href="{{ url('contracts') }}" class="btn btn-primary">Back to Contracts</a>
    </div>
@endsection
