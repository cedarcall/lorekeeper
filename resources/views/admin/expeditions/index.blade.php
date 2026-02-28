@extends('admin.layout')

@section('admin-title') Expedition Submissions @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Expedition Submissions' => 'admin/expeditions']) !!}

<h1>Expedition Submissions</h1>

<ul class="nav nav-tabs mb-3" role="tablist">
    <li class="nav-item">
        <a class="nav-link {{ !request('status') || request('status') == 'pending' ? 'active' : '' }}" href="{{ url('admin/expeditions?status=pending') }}">
            Pending <span class="badge badge-warning">{{ $pending }}</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ request('status') == 'approved' ? 'active' : '' }}" href="{{ url('admin/expeditions?status=approved') }}">
            Approved <span class="badge badge-success">{{ $approved }}</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ request('status') == 'rejected' ? 'active' : '' }}" href="{{ url('admin/expeditions?status=rejected') }}">
            Rejected <span class="badge badge-danger">{{ $rejected }}</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link {{ request('status') == 'revoked' ? 'active' : '' }}" href="{{ url('admin/expeditions?status=revoked') }}">
            Revoked <span class="badge badge-secondary">{{ $revoked }}</span>
        </a>
    </li>
</ul>

@if(!count($submissions))
    <p>No {{ request('status', 'pending') }} submissions found.</p>
@else
    <table class="table table-sm">
        <thead>
            <tr>
                <th>User</th>
                <th>Planet</th>
                <th>Title</th>
                <th>Type</th>
                <th>Date</th>
                <th>Status</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            @foreach($submissions as $submission)
                <tr>
                    <td>
                        @if($submission->user)
                            <a href="{{ url('admin/users/'.$submission->user->name) }}">{{ $submission->user->name }}</a>
                        @else
                            <em>Deleted User</em>
                        @endif
                    </td>
                    <td>
                        @if($submission->planet)
                            <a href="{{ url('admin/planets/edit/'.$submission->planet->id) }}">{{ $submission->planet->name }}</a>
                        @else
                            <em>Deleted Planet</em>
                        @endif
                    </td>
                    <td>
                        {{ $submission->title ?? 'Untitled' }}
                    </td>
                    <td>
                        <span class="badge badge-info">{{ ucfirst($submission->submission_type) }}</span>
                    </td>
                    <td>
                        {{ $submission->created_at->format('M d, Y') }}
                    </td>
                    <td>
                        @if($submission->status == 'pending')
                            <span class="badge badge-warning">Pending Review</span>
                        @elseif($submission->status == 'approved')
                            <span class="badge badge-success">Approved</span>
                            @if($submission->credit_reward > 0 || $submission->reputation_reward > 0)
                                <br><small style="color:#00ff88;">
                                    @if($submission->credit_reward > 0)
                                        💰 {{ $submission->credit_reward }}
                                    @endif
                                    @if($submission->reputation_reward > 0)
                                        ⭐ {{ $submission->reputation_reward }}
                                    @endif
                                </small>
                            @endif
                        @elseif($submission->status == 'rejected')
                            <span class="badge badge-danger">Rejected</span>
                        @elseif($submission->status == 'revoked')
                            <span class="badge badge-secondary">Revoked</span>
                        @endif
                    </td>
                    <td class="text-right">
                        <a href="{{ url('admin/expeditions/submission/'.$submission->id) }}" class="btn btn-sm btn-primary">
                            <i class="fas fa-eye"></i> Review
                        </a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {{ $submissions->render() }}
@endif
@endsection
