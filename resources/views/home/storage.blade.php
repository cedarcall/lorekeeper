@extends('home.layout')

@section('home-title') Safety Deposit Box @endsection

@section('home-content')
{!! breadcrumbs(['Safety Deposit Box' => 'safetydeposit']) !!}

<h1>
    Safety Deposit Box
</h1>

<p>
    This is your safety deposit box.
    <br/>
    No actions can be performed on this page. You will need to remove the object from storage to act upon them.
</p>

<hr>

<p class="text-center">
    <strong>Items:</strong> {{ $storages->count() }} <span class="text-muted">｜</span> <b>Qty:</b> {{ $sum }}
</p>


{!! $storages->render() !!}

<div class="row my-4 no-gutters">
    <div class="d-flex row flex-wrap col-12 mt-1 pt-1">
        <div class="col-6 col-md-3 font-weight-bold">Object</div>
        <div class="col-6 col-md-3 font-weight-bold">Type</div>
        <div class="col-6 col-md-2 font-weight-bold">Count</div>
        <div class="col-6 col-md ml-auto font-weight-bold text-right">Remove?</div>
    </div>
    @foreach($storages as $storage)
        <div class="card d-block col-12 mt-1 p-2">
            <div class="d-flex row flex-wrap align-items-center">
                <div class="col-4 col-md-3">
                    @if($storage->first()->imageUrl)
                        <img src="{{ $storage->first()->imageUrl }}" alt="{{ $storage->first()->name }}" class="img-fluid p-2 border mr-2"/>
                    @endif
                    <strong>{!! $storage->first()->storable ? $storage->first()->displayName : 'Unknown' !!}</strong>
                </div>
                <div class="col-4 col-md-3">{!! class_basename($storage->first()->storable) !!}</div>
                <div class="col-4 col-md-2">
                    {{ $storage->sum('count') }}
                    @if($storage->count() > 1)
                        <a data-toggle="collapse" href="#collapse{{ $storage->first()->id }}" role="button" aria-expanded="false" aria-controls="collapse{{ $storage->first()->id }}">
                            <span title="{{ $storage->count() }} stacks" data-toggle="tooltip" class="ml-2">
                                <i class="fas fa-layer-group" alt="{{ $storage->count() }} stacks"></i> Open {{ $storage->count() }} stacks
                            </span>
                        </a>
                    @endif
                </div>
                <div class="col-12 col-md-2 ml-auto d-flex d-md-block text-center">
                    {!! Form::number('remove['.$storage->first()->id.']', null, ['class' => 'form-control', 'max' => $storage->sum('count'), 'min' => 0 ]) !!}
                    <a href="#" class="btn btn-primary mt-md-1">Remove one</a>
                </div>
            </div>

            @if($storage->count() > 1)
                <div class="collapse row col-12 mt-2 no-gutters border p-2 align-items-stretch" id="collapse{{$storage->first()->id}}">
                    @foreach($storage as $stack)
                        <div class="d-none d-md-flex col-md-1 ubt-top py-2 text-center">#{!! $stack->id !!}</div>
                        <div class="col-12 col-md-4 ubt-top py-2"><strong>Data:</strong> {!! isset($stack->data['data']) ? $stack->data['data'] : 'N/A' !!}</div>
                        <div class="col-12 col-md-4 ubt-top py-2"><strong>Notes:</strong> {!! isset($stack->data['notes']) ? $stack->data['notes'] : 'N/A' !!}</div>
                        <div class="col-4 col-md-1 ubt-top py-2 text-right pr-2">x {!! $stack->count !!}</div>
                        <div class="col-8 col-md-2 text-center d-flex ubt-top py-1 align-items-center">
                            {!! Form::number('remove['.$stack->first()->id.']', null, ['class' => 'form-control mr-1', 'max' => $stack->count, 'min' => 0]) !!}
                            <a href="#" class="btn btn-sm btn-primary">-1</a>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    @endforeach
</div>

{!! $storages->render() !!}

<div class="text-center mt-4 small text-muted">{{ $storages->total() }} result{{ $storages->total() == 1 ? '' : 's' }} found.</div>

@endsection
