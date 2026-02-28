@extends('admin.layout')

@section('admin-title') Event Submissions @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Event Submissions' => 'admin/event-submissions']) !!}

<h1>Event Submissions</h1>

<ul class="nav nav-tabs mb-3">
    <li class="nav-item">
        <a class="nav-link {{ !request()->get('status') || request()->get('status') == 'pending' ? 'active' : '' }}" href="{{ url('admin/event-submissions') }}">Pending</a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ request()->get('status') == 'approved' ? 'active' : '' }}" href="{{ url('admin/event-submissions?status=approved') }}">Approved</a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ request()->get('status') == 'rejected' ? 'active' : '' }}" href="{{ url('admin/event-submissions?status=rejected') }}">Rejected</a>
    </li>
</ul>

@if($submissions->count())
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>User</th>
                    <th>Event</th>
                    <th>Title</th>
                    <th>Type</th>
                    <th>Status</th>
                    <th>Submitted</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($submissions as $submission)
                    <tr>
                        <td>{{ $submission->id }}</td>
                        <td>
                            @if($submission->user)
                                <a href="{{ $submission->user->url }}">{!! $submission->user->displayName !!}</a>
                            @else
                                <em>Deleted User</em>
                            @endif
                        </td>
                        <td>
                            @if($submission->event)
                                <a href="{{ url('monthly-event/'.$submission->event->slug) }}">{{ $submission->event->title ?? $submission->event->name }}</a>
                            @else
                                <em>Deleted Event</em>
                            @endif
                        </td>
                        <td>{{ $submission->title ?? 'Untitled' }}</td>
                        <td>{{ ucfirst($submission->submission_type) }}</td>
                        <td>
                            @if($submission->status == 'pending')
                                <span class="badge badge-warning">Pending</span>
                            @elseif($submission->status == 'approved')
                                <span class="badge badge-success">Approved</span>
                            @else
                                <span class="badge badge-danger">Rejected</span>
                            @endif
                        </td>
                        <td>{{ $submission->created_at ? $submission->created_at->format('M d, Y') : 'Unknown' }}</td>
                        <td>
                            <a href="{{ url('admin/event-submissions/'.$submission->id) }}" class="btn btn-sm btn-primary">View</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    {{ $submissions->appends(request()->query())->links() }}
@else
    <p>No submissions found.</p>
@endif

@endsection
