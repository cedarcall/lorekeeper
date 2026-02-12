@extends('admin.layout')

@section('admin-title') Announcements @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Announcements' => 'admin/announcements']) !!}

<h1>Announcements</h1>

<p>You can create custom announcement banners here to notify users about special events or updates. Announcements are displayed prominently at the top of the page for all users until they dismiss them.</p>

<div class="text-right mb-3"><a class="btn btn-primary" href="{{ url('admin/announcements/create') }}"><i class="fas fa-plus"></i> Create New Announcement</a></div>
@if(!count($announcements))
    <p>No announcements found.</p>
@else
    {!! $announcements->render() !!}
      <div class="row ml-md-2">
        <div class="d-flex row flex-wrap col-12 pb-1 px-0 ubt-bottom">
          <div class="col-12 col-md-6 font-weight-bold">Title</div>
          <div class="col-6 col-md-3 font-weight-bold">Created</div>
          <div class="col-6 col-md-3 font-weight-bold">Last Edited</div>
        </div>
        @foreach($announcements as $announcement)
        <div class="d-flex row flex-wrap col-12 mt-1 pt-2 px-0 ubt-top">
          <div class="col-12 col-md-6">
              <a href="{{ url('admin/announcements/edit/'.$announcement->id) }}">{{ $announcement->title }}</a>
          </div>
          <div class="col-6 col-md-3">{!! pretty_date($announcement->created_at) !!}</div>
          <div class="col-6 col-md-3">{!! pretty_date($announcement->updated_at) !!}</div>
          <div class="col-12 col-md-1 text-right"><a href="{{ url('admin/announcements/edit/'.$announcement->id) }}" class="btn btn-primary py-0 px-2 w-100">Edit</a></div>
        </div>
        @endforeach
      </div>
    {!! $announcements->render() !!}

    <div class="text-center mt-4 small text-muted">{{ $announcements->total() }} result{{ $announcements->total() == 1 ? '' : 's' }} found.</div>

@endif

@endsection
