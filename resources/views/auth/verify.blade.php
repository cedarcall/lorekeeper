@extends('layouts.app')

@section('title') Account Approval @endsection

@section('content')
<h1>Account Approval</h1>
@php
    $application = \Illuminate\Support\Facades\Schema::hasTable('user_verification_applications')
        ? Auth::user()->verificationApplications()->latest('id')->first()
        : null;
@endphp
@if (session('warning'))
    <div class="alert alert-warning" role="alert">
        {{ session('warning') }}
    </div>
@endif
@if ($application && $application->status === 'approved')
    <div class="alert alert-success" role="alert">
        Your account is approved.
    </div>
@elseif ($application && $application->status === 'denied')
    <div class="alert alert-danger" role="alert">
        Your application was denied. You can still log in, but access is restricted. Contact staff if you have questions.
    </div>
@elseif ($application && $application->status === 'pending')
    <div class="alert alert-info" role="alert">
        Your verification quiz is pending staff review. You will gain full access once approved.
    </div>
@else
    <div class="alert alert-warning" role="alert">
        We could not find a verification application for this account. Please contact staff.
    </div>
@endif
@endsection
