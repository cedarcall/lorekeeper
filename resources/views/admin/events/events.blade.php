@extends('admin.layout')

@section('admin-title') Events @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel'=>'admin', 'Events'=>'admin/events']) !!}

<h1>Events <a href="{{ url('admin/events/create') }}" class="btn btn-primary float-right">Create Event</a></h1>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Title</th>
            <th>Start</th>
            <th>End</th>
            <th>Visible</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach($events as $event)
            <tr>
                <td>{{ $event->title }}</td>
                <td>@if($event->start_at){!! pretty_date($event->start_at) !!}@else—@endif</td>
                <td>@if($event->end_at){!! pretty_date($event->end_at) !!}@else—@endif</td>
                <td>{{ $event->is_visible ? 'Yes' : 'No' }}</td>
                <td>
                    <a href="{{ url('admin/events/edit/'.$event->id) }}" class="btn btn-sm btn-secondary">Edit</a>
                    <a href="#" class="btn btn-sm btn-danger delete-event-button" data-id="{{ $event->id }}">Delete</a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

{{ $events->links() }}

@endsection

@section('scripts')
@parent
<script>
$(function(){
    $('.delete-event-button').click(function(e){
        e.preventDefault();
        var id = $(this).data('id');
        loadModal("{{ url('admin/events/delete') }}/"+id, 'Delete Event');
    });
});
</script>
@endsection
