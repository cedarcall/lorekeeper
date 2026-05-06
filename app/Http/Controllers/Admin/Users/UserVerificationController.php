<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Controller;
use App\Models\UserVerificationApplication;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserVerificationController extends Controller
{
    public function getIndex(Request $request)
    {
        $query = UserVerificationApplication::with(['user', 'reviewer'])->orderBy('id', 'DESC');

        if($request->get('status')) {
            $query->where('status', $request->get('status'));
        }

        return view('admin.user_verifications.index', [
            'applications' => $query->paginate(30)->appends($request->query()),
            'pendingCount' => UserVerificationApplication::pending()->count(),
            'status' => $request->get('status', ''),
        ]);
    }

    public function getApplication($id)
    {
        $application = UserVerificationApplication::with(['user', 'reviewer'])->findOrFail($id);

        return view('admin.user_verifications.application', [
            'application' => $application,
        ]);
    }

    public function postApplication(Request $request, $id)
    {
        $request->validate([
            'action' => 'required|in:approved,denied',
            'review_notes' => 'nullable|string|max:2000',
        ]);

        $application = UserVerificationApplication::with('user')->findOrFail($id);
        $application->status = $request->input('action');
        $application->review_notes = $request->input('review_notes');
        $application->reviewed_by = Auth::id();
        $application->reviewed_at = Carbon::now();
        $application->save();

        if($application->user) {
            if($application->status === 'approved') {
                $application->user->email_verified_at = Carbon::now();
            } else {
                $application->user->email_verified_at = null;
            }
            $application->user->save();
        }

        flash('Application review saved.')->success();
        return redirect()->to('admin/users/verification-applications');
    }
}
