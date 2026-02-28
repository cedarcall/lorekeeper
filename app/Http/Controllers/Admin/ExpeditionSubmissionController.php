<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\ExpeditionSubmission;
use App\Services\ExpeditionService;

class ExpeditionSubmissionController extends Controller
{
    /**
     * Display a listing of pending expeditions.
     */
    public function getIndex()
    {
        $status = request('status', 'pending');
        
        $submissions = ExpeditionSubmission::with(['user', 'planet'])
            ->where('status', $status)
            ->paginate(20);
        
        $pending = ExpeditionSubmission::where('status', 'pending')->count();
        $approved = ExpeditionSubmission::where('status', 'approved')->count();
        $rejected = ExpeditionSubmission::where('status', 'rejected')->count();
        $revoked = ExpeditionSubmission::where('status', 'revoked')->count();
        
        return view('admin.expeditions.index', [
            'submissions' => $submissions,
            'pending' => $pending,
            'approved' => $approved,
            'rejected' => $rejected,
            'revoked' => $revoked
        ]);
    }
    
    /**
     * Show the submission details.
     */
    public function getSubmission($id)
    {
        $submission = ExpeditionSubmission::with(['user', 'planet'])->findOrFail($id);
        return view('admin.expeditions.submission', [
            'submission' => $submission
        ]);
    }
    
    /**
     * Approve an expedition submission.
     */
    public function postApprove(Request $request, ExpeditionService $service, $id)
    {
        $request->validate([
            'credit_reward' => 'nullable|integer|min:0|max:999999',
            'reputation_reward' => 'nullable|integer|min:0|max:999999'
        ]);
        
        $submission = ExpeditionSubmission::findOrFail($id);
        
        // Store the reward amounts on the submission
        $submission->credit_reward = $request->input('credit_reward', 0);
        $submission->reputation_reward = $request->input('reputation_reward', 0);
        $submission->save();
        
        if ($service->approveExpedition($submission, Auth::user())) {
            flash('Expedition approved! User visit count incremented and rewards granted.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) {
                flash($error)->error();
            }
        }
        
        return redirect()->back();
    }
    
    /**
     * Reject an expedition submission.
     */
    public function postReject(Request $request, ExpeditionService $service, $id)
    {
        $request->validate([
            'notes' => 'nullable|string'
        ]);
        
        $submission = ExpeditionSubmission::findOrFail($id);
        
        if ($service->rejectExpedition($submission, $request->notes, Auth::user())) {
            flash('Expedition rejected.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) {
                flash($error)->error();
            }
        }
        
        return redirect()->back();
    }
    
    /**
     * Take down an approved expedition submission.
     */
    public function postTakedown(Request $request, ExpeditionService $service, $id)
    {
        $request->validate([
            'reason' => 'nullable|string'
        ]);
        
        $submission = ExpeditionSubmission::findOrFail($id);
        
        if ($service->takedownExpedition($submission, $request->reason, Auth::user())) {
            flash('Expedition taken down. User visit count has been decreased.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) {
                flash($error)->error();
            }
        }
        
        return redirect()->back();
    }
}
