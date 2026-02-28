@extends('admin.layout')

@section('admin-title') Report Queue @endsection

@section('admin-content')
    {!! breadcrumbs(['Admin Panel' => 'admin', 'Report Queue' => 'admin/reports/pending']) !!}

<h1>
    Report Queue
</h1>

@php
    $currentStatus = Request::segment(3) ?: 'pending';
    $currentType = Request::get('type');
@endphp

<ul class="nav nav-tabs mb-2">
  <li class="nav-item">
    <a class="nav-link {{ $currentStatus == 'pending' && !$currentType ? 'active' : '' }}" href="{{ url('admin/reports/pending') }}">Pending</a>
  </li>
  <li class="nav-item">
    <a class="nav-link {{ $currentStatus == 'assigned-to-me' && !$currentType ? 'active' : '' }}" href="{{ url('admin/reports/assigned-to-me') }}">Assigned To Me</a>
  </li>
  <li class="nav-item">
    <a class="nav-link {{ $currentStatus == 'assigned' && !$currentType ? 'active' : '' }}" href="{{ url('admin/reports/assigned') }}">Assigned</a>
  </li>
  <li class="nav-item">
    <a class="nav-link {{ $currentStatus == 'closed' && !$currentType ? 'active' : '' }}" href="{{ url('admin/reports/closed') }}">Closed</a>
  </li>
</ul>

<div class="card mb-3">
    <div class="card-body p-2">
        <span class="mr-2 font-weight-bold">Filter by Type:</span>
        <div class="btn-group" role="group">
            <a href="{{ url('admin/reports/' . $currentStatus) }}" class="btn btn-sm {{ !$currentType ? 'btn-primary' : 'btn-outline-primary' }}">All</a>
            <a href="{{ url('admin/reports/' . $currentStatus . '?type=user') }}" class="btn btn-sm {{ $currentType == 'user' ? 'btn-primary' : 'btn-outline-primary' }}">Report User</a>
            <a href="{{ url('admin/reports/' . $currentStatus . '?type=submission') }}" class="btn btn-sm {{ $currentType == 'submission' ? 'btn-primary' : 'btn-outline-primary' }}">Report Submission</a>
            <a href="{{ url('admin/reports/' . $currentStatus . '?type=question') }}" class="btn btn-sm {{ $currentType == 'question' ? 'btn-primary' : 'btn-outline-primary' }}">Questions</a>
            @if(Auth::user()->isAdmin)
                <a href="{{ url('admin/reports/' . $currentStatus . '?type=owner') }}" class="btn btn-sm {{ $currentType == 'owner' ? 'btn-warning' : 'btn-outline-warning' }}">Owner Only</a>
                <a href="{{ url('admin/reports/' . $currentStatus . '?type=bug') }}" class="btn btn-sm {{ $currentType == 'bug' ? 'btn-warning' : 'btn-outline-warning' }}">Bug Reports</a>
            @endif
        </div>
    </div>
</div>

{!! $reports->render() !!}

<div class="row ml-md-2">
  <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-bottom">
    <div class="col-6 col-md-2 font-weight-bold">User</div>
    <div class="col-6 col-md-2 font-weight-bold">Type</div>
    <div class="col-6 col-md-3 font-weight-bold">Url/Title</div>
    <div class="col-6 col-md-2 font-weight-bold">Submitted</div>
    <div class="col-6 col-md-2 font-weight-bold">Status</div>
  </div>

  @foreach($reports as $report)
    <div class="d-flex row flex-wrap col-12 mt-1 pt-1 px-0 ubt-top">
      <div class="col-6 col-md-2">{!! $report->user->displayName !!}</div>
      <div class="col-6 col-md-2">
        @if($report->report_type == 'owner')
          <span class="badge badge-warning">Owner</span>
        @elseif($report->report_type == 'bug')
          <span class="badge badge-warning">Bug</span>
        @elseif($report->report_type == 'user')
          <span class="badge badge-danger">User Report</span>
        @elseif($report->report_type == 'question')
          <span class="badge badge-info">Question</span>
        @else
          <span class="badge badge-secondary">Submission</span>
        @endif
      </div>
      <div class="col-6 col-md-3">
        <span class="ubt-texthide">@if(!$report->is_br)<a href="{{ $report->url }}">@endif {{ $report->url }} @if(!$report->is_br)</a>@endif</span>
      </div>
      <div class="col-6 col-md-2">{!! pretty_date($report->created_at) !!}</div>
      <div class="col-3 col-md-2">
        <span class="badge badge-{{ $report->status == 'Pending' ? 'secondary' : ($report->status == 'Closed' ? 'success' : 'danger') }}">{{ $report->status }}</span>{!! $report->status == 'Assigned' ? ' (to '.$report->staff->displayName.')' : '' !!}
      </div>
      <div class="col-3 col-md-1"><a href="{{ $report->adminUrl }}" class="btn btn-primary btn-sm py-0 px-1">Details</a></div>
    </div>
  @endforeach
</div>

{!! $reports->render() !!}
<div class="text-center mt-4 small text-muted">{{ $reports->total() }} result{{ $reports->total() == 1 ? '' : 's' }} found.</div>

@endsection