@extends('admin.layout')

@section('admin-title') Announcements @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Announcements' => 'admin/announcements', ($announcement->id ? 'Edit' : 'Create').' Announcement' => $announcement->id ? 'admin/announcements/edit/'.$announcement->id : 'admin/announcements/create']) !!}

<h1>{{ $announcement->id ? 'Edit' : 'Create' }} Announcement
    @if($announcement->id)
        <a href="#" class="btn btn-danger float-right delete-announcement-button">Delete Announcement</a>
    @endif
</h1>

{!! Form::open(['url' => $announcement->id ? 'admin/announcements/edit/'.$announcement->id : 'admin/announcements/create', 'files' => true]) !!}

<h3>Announcement Details</h3>

<div class="form-group">
    {!! Form::label('Banner Title') !!}
    {!! Form::text('title', $announcement->title, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
    {!! Form::label('Link (Optional)') !!} {!! add_help('Leave blank for no link. Include the full URL like https://example.com/events') !!}
    {!! Form::text('url', $announcement->url, ['class' => 'form-control', 'placeholder' => 'https://example.com/events']) !!}
</div>

<div class="text-right">
    {!! Form::submit($announcement->id ? 'Edit' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@endsection

@section('scripts')
@parent
<script>
$( document ).ready(function() {    
    $('.delete-announcement-button').on('click', function(e) {
        e.preventDefault();
        loadModal("{{ url('admin/announcements/delete') }}/{{ $announcement->id }}", 'Delete Announcement');
    });
});
</script>
@endsection
