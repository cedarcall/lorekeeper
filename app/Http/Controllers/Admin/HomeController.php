<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use Settings;
use Auth;

use App\Models\Submission\Submission;
use App\Models\Gallery\GallerySubmission;
use App\Models\Character\CharacterDesignUpdate;
use App\Models\Character\CharacterTransfer;
use App\Models\Trade;
use App\Models\Report\Report;
use App\Models\Event;
use App\Models\Announcement;
use App\Models\Contract;
use App\Models\ExpeditionSubmission;
use App\Models\EventQuestion;
use App\Models\EventSubmission;

use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    /**
     * Show the admin dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getIndex()
    {
        $openTransfersQueue = Settings::get('open_transfers_queue');
        $galleryRequireApproval = Settings::get('gallery_submissions_require_approval');
        $galleryCurrencyAwards = Settings::get('gallery_submissions_reward_currency');
        return view('admin.index', [
            'submissionCount'           => Submission::where('status', 'Pending')->whereNotNull('prompt_id')->count(),
            'claimCount'                => Submission::where('status', 'Pending')->whereNull('prompt_id')->count(),
            'designCount'               => CharacterDesignUpdate::characters()->where('status', 'Pending')->count(),
            'myoCount'                  => CharacterDesignUpdate::myos()->where('status', 'Pending')->count(),
            'reportCount'               => Report::where('status', 'Pending')->where(function($q) {
                $q->whereNull('report_type')->orWhereNotIn('report_type', ['owner', 'bug']);
            })->count(),
            'assignedReportCount'       => Report::assignedToMe(Auth::user())->where(function($q) {
                $q->whereNull('report_type')->orWhereNotIn('report_type', ['owner', 'bug']);
            })->count(),
            'ownerReportCount'          => Report::where('status', 'Pending')->whereIn('report_type', ['owner', 'bug'])->count(),
            'openTransfersQueue'        => $openTransfersQueue,
            'transferCount'             => $openTransfersQueue ? CharacterTransfer::active()->where('is_approved', 0)->count() : 0,
            'tradeCount'                => $openTransfersQueue ? Trade::where('status', 'Pending')->count() : 0,
            'galleryRequireApproval'    => $galleryRequireApproval,
            'galleryCurrencyAwards'     => $galleryCurrencyAwards,
            'gallerySubmissionCount'    => GallerySubmission::collaboratorApproved()->where('status', 'Pending')->count(),
            'galleryAwardCount'         => GallerySubmission::requiresAward()->where('is_valued', 0)->count(),
            'eventCount'                => Event::count(),
            'announcementCount'         => Announcement::count(),
            'contractCount'             => Contract::count(),
            'expeditionSubmissionCount' => ExpeditionSubmission::where('status', 'pending')->count(),
            'eventQuestionCount'        => EventQuestion::pending()->count(),
            'eventSubmissionCount'      => EventSubmission::pending()->count()
        ]);
    }
}
