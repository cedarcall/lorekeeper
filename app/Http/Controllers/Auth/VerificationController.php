<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Auth\Events\Verified;
use Illuminate\Foundation\Auth\VerifiesEmails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class VerificationController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Email Verification Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling email verification for any
    | user that recently registered with the application. Emails may also
    | be re-sent if the user didn't receive the original email message.
    |
    */

    use VerifiesEmails;

    /**
     * Where to redirect users after verification.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->middleware('auth');
        $this->middleware('signed')->only('verify');
        $this->middleware('throttle:6,1')->only('verify', 'resend');
    }

    /**
     * Verify the user's email address without surfacing transient failures as 500s.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function verify(Request $request)
    {
        try {
            if ($request->route('id') != $request->user()->getKey()) {
                abort(403, 'Invalid verification target.');
            }

            if ($request->user()->hasVerifiedEmail()) {
                return redirect($this->redirectPath())->with('verified', true);
            }

            if ($request->user()->markEmailAsVerified()) {
                event(new Verified($request->user()));
            }

            return redirect($this->redirectPath())->with('verified', true);
        } catch (\Throwable $e) {
            Log::error('Email verification failed unexpectedly.', [
                'user_id' => optional($request->user())->id,
                'error' => $e->getMessage(),
            ]);

            return redirect()->route('verification.notice')
                ->with('warning', 'We could not complete verification at this moment. Please try again.');
        }
    }

    /**
     * Resend verification email, handling transport errors gracefully.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function resend(Request $request)
    {
        if ($request->user()->hasVerifiedEmail()) {
            return redirect($this->redirectPath());
        }

        try {
            $request->user()->sendEmailVerificationNotification();
            return back()->with('resent', true);
        } catch (\Throwable $e) {
            Log::error('Resend verification email failed.', [
                'user_id' => optional($request->user())->id,
                'error' => $e->getMessage(),
            ]);

            return back()->with('warning', 'Could not send verification email right now. Please try again shortly.');
        }
    }
}
