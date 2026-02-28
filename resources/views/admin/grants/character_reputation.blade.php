@extends('admin.layout')

@section('admin-title') Grants @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Grants' => 'admin/grants/user-currency', 'Character Reputation' => 'admin/grants/character-reputation']) !!}

<h1>Grant Reputation to Characters</h1>

<div class="row">
    <div class="col-md-8">
        {!! Form::open(['url' => 'admin/grants/character-reputation']) !!}
        <div class="card mb-3">
            <div class="card-header">
                <h5 class="mb-0">Grant Reputation</h5>
            </div>
            <div class="card-body">
                <div class="form-group">
                    {!! Form::label('character_ids[]', 'Characters') !!} {!! add_help('Select one or more characters to grant reputation to.') !!}
                    {!! Form::select('character_ids[]', $characters, null, ['id' => 'character_select', 'class' => 'form-control', 'multiple', 'size' => 10]) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('quantity', 'Quantity') !!} {!! add_help('The amount of reputation to grant. Use negative numbers to remove reputation.') !!}
                    {!! Form::text('quantity', null, ['class' => 'form-control', 'type' => 'number']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('data', 'Reason (Optional)') !!} {!! add_help('A reason for the grant. This will be noted in the logs.') !!}
                    {!! Form::text('data', null, ['class' => 'form-control', 'maxlength' => 200]) !!}
                </div>
                <div class="text-right">
                    {!! Form::submit('Grant Reputation', ['class' => 'btn btn-primary']) !!}
                </div>
            </div>
        </div>
        {!! Form::close() !!}
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0">Help</h5>
            </div>
            <div class="card-body">
                <p><strong>Quick Actions:</strong></p>
                <ul class="small">
                    <li>Select multiple characters by holding Ctrl/Cmd while clicking</li>
                    <li>Use positive numbers to grant reputation</li>
                    <li>Use negative numbers to remove reputation</li>
                    <li>Add a reason to track grants in logs</li>
                </ul>
            </div>
        </div>
    </div>
</div>

@endsection
