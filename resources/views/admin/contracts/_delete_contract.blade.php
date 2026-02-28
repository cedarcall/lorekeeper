@if($contract)
    {!! Form::open(['url' => 'admin/contracts/delete/'.$contract->id]) !!}

    <p>You are about to delete the contract <strong>{{ $contract->name }}</strong>. This is not reversible. If this contract exists, you will not be able to recreate it.</p>
    <p>Are you sure you want to delete <strong>{{ $contract->name }}</strong>?</p>

    <div class="text-right">
        {!! Form::submit('Delete Contract', ['class' => 'btn btn-danger']) !!}
    </div>

    {!! Form::close() !!}
@else 
    Invalid contract selected.
@endif
