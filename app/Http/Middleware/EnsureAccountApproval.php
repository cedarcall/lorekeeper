<?php

namespace App\Http\Middleware;

use App\Models\UserVerificationApplication;
use Closure;
use Illuminate\Support\Facades\Schema;

class EnsureAccountApproval
{
    public function handle($request, Closure $next, $redirectToRoute = null)
    {
        $user = $request->user();

        if(!$user) {
            return redirect()->guest(route('login'));
        }

        if($user->isAdmin || $user->isStaff) {
            return $next($request);
        }

        if(!Schema::hasTable('user_verification_applications')) {
            if($user->email_verified_at) {
                return $next($request);
            }

            session()->flash('warning', 'Account approval is temporarily unavailable. Please try again shortly.');
            return redirect()->route($redirectToRoute ?: 'verification.notice');
        }

        $application = UserVerificationApplication::where('user_id', $user->id)->latest('id')->first();

        if($application && $application->status === 'approved') {
            return $next($request);
        }

        if(!$application && $user->email_verified_at) {
            // Grandfather existing verified users.
            return $next($request);
        }

        if($application && $application->status === 'denied') {
            session()->flash('warning', 'Your account application was denied. You can still log in, but site activity is restricted.');
        } elseif($application && $application->status === 'pending') {
            session()->flash('warning', 'Your account application is pending staff review. You will gain full access after approval.');
        } else {
            session()->flash('warning', 'Please complete your account verification quiz to unlock full site access.');
        }

        return redirect()->route($redirectToRoute ?: 'verification.notice');
    }
}
