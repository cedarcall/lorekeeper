@extends('admin.layout')

@section('admin-title') Galaxies @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Galaxies' => 'admin/galaxies']) !!}

<h1>Galaxies</h1>

<div class="text-right mb-3">
    <a class="btn btn-primary" href="{{ url('admin/galaxies/create') }}"><i class="fas fa-plus mr-2"></i> Create New Galaxy</a>
</div>

@if(!count($galaxies))
    <p>No galaxies found.</p>
@else
    <table class="table table-sm type-table">
        <thead>
            <tr>
                <td class="font-weight-bold" style="width:40%;">Name</td>
                <td class="font-weight-bold" style="width:20%;">Planets</td>
                <td class="font-weight-bold" style="width:20%;">Status</td>
                <td class="font-weight-bold" style="width:20%;"></td>
            </tr>
        </thead>
        <tbody>
            @foreach($galaxies as $galaxy)
                <tr>
                    <td><a href="{{ url('admin/galaxies/edit/'.$galaxy->id) }}">{{ $galaxy->name }}</a></td>
                    <td>{{ $galaxy->planets()->count() }}</td>
                    <td>
                        @if($galaxy->is_current)
                            <span class="badge badge-success">Current</span>
                        @else
                            <span class="badge badge-secondary">Inactive</span>
                        @endif
                    </td>
                    <td class="text-right">
                        <a href="{{ url('admin/galaxies/edit/'.$galaxy->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
                        <a href="{{ url('admin/galaxies/delete/'.$galaxy->id) }}" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {{ $galaxies->render() }}
@endif
@endsection
