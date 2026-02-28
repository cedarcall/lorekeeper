@extends('admin.layout')

@section('admin-title') Galaxy @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Galaxies' => 'admin/galaxies', ($galaxy->id ? 'Edit' : 'Create').' Galaxy' => $galaxy->id ? 'admin/galaxies/edit/'.$galaxy->id : 'admin/galaxies/create']) !!}

<h1>{{ $galaxy->id ? 'Edit' : 'Create' }} Galaxy
    @if($galaxy->id)
        ({{ $galaxy->name }})
        <a href="#" class="btn btn-danger float-right delete-galaxy-button">Delete Galaxy</a>
    @endif
</h1>

{!! Form::open(['url' => $galaxy->id ? 'admin/galaxies/edit/'.$galaxy->id : 'admin/galaxies/create']) !!}

<div class="card mb-3">
    <div class="card-header h3">Basic Information</div>
    <div class="card-body">
        <div class="form-group">
            {!! Form::label('Name') !!}
            {!! Form::text('name', $galaxy->name, ['class' => 'form-control', 'required']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Rotation Date (Optional)') !!} {!! add_help('The date this galaxy entered active rotation.') !!}
            {!! Form::text('rotation_date', $galaxy->rotation_date?->format('Y-m-d'), ['class' => 'form-control datepicker']) !!}
        </div>

        <div class="form-check">
            {!! Form::checkbox('is_current', 1, $galaxy->is_current, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Inactive', 'data-on' => 'Current Galaxy']) !!}
            {!! Form::label('is_current', 'Set as Current Galaxy', ['class' => 'form-check-label']) !!}
            {!! add_help('Only one galaxy can be current. Players can only access planets in the current galaxy.') !!}
        </div>
    </div>
</div>

<div class="text-right">
    {!! Form::submit($galaxy->id ? 'Edit Galaxy' : 'Create Galaxy', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@if($galaxy->id)
    <div class="card mb-3">
        <div class="card-header h3">Planets in this Galaxy</div>
        <div class="card-body">
            @if($galaxy->planets->count())
                <table class="table table-sm" style="color: #fff;">
                    <thead style="border-bottom: 2px solid #00ccff;">
                        <tr>
                            <th style="color: #00ccff;">Name</th>
                            <th style="color: #00ccff;">Slug</th>
                            <th style="color: #00ccff;">Type</th>
                            <th style="color: #00ccff;">Risk Level</th>
                            <th style="color: #00ccff; width: 20%;">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($galaxy->planets as $planet)
                            <tr>
                                <td>{{ $planet->name }}</td>
                                <td><code>{{ $planet->slug }}</code></td>
                                <td>{{ $planet->type ?? 'N/A' }}</td>
                                <td>{{ $planet->risk_level ?? 'N/A' }}</td>
                                <td>
                                    <a href="{{ url('admin/planets/edit/'.$planet->id) }}" class="btn btn-sm btn-primary">Edit</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @else
                <p class="text-muted">No planets in this galaxy yet. <a href="{{ url('admin/planets/create') }}">Create one</a></p>
            @endif
        </div>
    </div>
@endif

@if($galaxy->id)
    <div id="deleteModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Delete Galaxy</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete <strong>{{ $galaxy->name }}</strong>? This action cannot be undone.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    {!! Form::open(['url' => 'admin/galaxies/delete/'.$galaxy->id, 'style'=> 'display: inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>

    <script>
        $('.datepicker').datetimepicker({
            dateFormat: "yy-mm-dd",
            timeFormat: 'HH:mm:ss',
        });

        document.querySelector('.delete-galaxy-button').addEventListener('click', function(e) {
            e.preventDefault();
            document.getElementById('deleteModal').classList.add('show');
            document.getElementById('deleteModal').style.display = 'block';
            document.getElementById('deleteModal').querySelector('.modal-dialog').classList.add('show');
        });
    </script>
@endif
@endsection
