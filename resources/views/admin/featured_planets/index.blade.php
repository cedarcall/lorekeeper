@extends('admin.layout')

@section('admin-title') Featured Planets @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Featured Planets' => 'admin/featured-planets']) !!}

<h1>Featured Planets
    <a href="{{ url('admin/featured-planets/create') }}" class="btn btn-primary float-right">Create Featured Planet</a>
</h1>

@if($featuredPlanets->count())
    <div class="card mb-3">
        <div class="card-body p-0">
            <table class="table table-striped mb-0">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Planet</th>
                        <th>Galaxy</th>
                        <th>Rarity</th>
                        <th>Loot Table</th>
                        <th>Active</th>
                        <th>Updated</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($featuredPlanets as $featuredPlanet)
                        <tr>
                            <td>{{ $featuredPlanet->name }}</td>
                            <td>{{ $featuredPlanet->planet ? $featuredPlanet->planet->name : 'None' }}</td>
                            <td>{{ $featuredPlanet->galaxy ? $featuredPlanet->galaxy->name : 'Unknown' }}</td>
                            <td>{{ ucfirst($featuredPlanet->rarity) }}</td>
                            <td>{{ $featuredPlanet->lootTable ? $featuredPlanet->lootTable->name : 'None' }}</td>
                            <td>{{ $featuredPlanet->is_active ? 'Yes' : 'No' }}</td>
                            <td>{!! format_date($featuredPlanet->updated_at) !!}</td>
                            <td class="text-right">
                                <a href="{{ url('admin/featured-planets/edit/'.$featuredPlanet->id) }}" class="btn btn-sm btn-primary">Edit</a>
                                <form method="POST" action="{{ url('admin/featured-planets/delete/'.$featuredPlanet->id) }}" style="display:inline;">
                                    @csrf
                                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Delete this featured planet?');">Delete</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div class="text-right">
        {!! $featuredPlanets->render() !!}
    </div>
@else
    <div class="alert alert-info">No featured planets have been created yet.</div>
@endif
@endsection
