@extends('admin.layout')

@section('admin-title') User Verification Applications @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'User Verification Applications' => 'admin/users/verification-applications']) !!}

<h1>User Verification Applications</h1>

<div class="mb-3">
    <strong>Pending:</strong> {{ $pendingCount }}
</div>

<div class="card mb-3">
    <div class="card-body">
        {!! Form::open(['url' => 'admin/users/verification-applications', 'method' => 'GET']) !!}
        <div class="form-row align-items-end">
            <div class="form-group col-md-4 mb-0">
                {!! Form::label('status', 'Filter by Status') !!}
                {!! Form::select('status', ['' => 'All', 'pending' => 'Pending', 'approved' => 'Approved', 'denied' => 'Denied'], $status, ['class' => 'form-control']) !!}
            </div>
            <div class="form-group col-md-2 mb-0">
                {!! Form::submit('Filter', ['class' => 'btn btn-primary btn-block']) !!}
            </div>
        </div>
        {!! Form::close() !!}
    </div>
</div>

@if(!$applications->count())
    <div class="card">
        <div class="card-body text-muted">No applications found.</div>
    </div>
@else
    <div class="card">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-sm mb-0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>User</th>
                            <th>Status</th>
                            <th>Submitted</th>
                            <th>Reviewed By</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($applications as $application)
                            <tr>
                                <td>{{ $application->id }}</td>
                                <td>
                                    @if($application->user)
                                        {!! $application->user->displayName !!}
                                    @else
                                        <span class="text-muted">Unknown user</span>
                                    @endif
                                </td>
                                <td>
                                    <span class="badge badge-{{ $application->status === 'approved' ? 'success' : ($application->status === 'denied' ? 'danger' : 'warning') }}">
                                        {{ ucfirst($application->status) }}
                                    </span>
                                </td>
                                <td>{{ $application->created_at }}</td>
                                <td>
                                    @if($application->reviewer)
                                        {{ $application->reviewer->name }}
                                    @else
                                        <span class="text-muted">-</span>
                                    @endif
                                </td>
                                <td class="text-right">
                                    <a href="{{ url('admin/users/verification-applications/'.$application->id) }}" class="btn btn-sm btn-primary">Review</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="mt-3">{{ $applications->links() }}</div>
@endif
@endsection
