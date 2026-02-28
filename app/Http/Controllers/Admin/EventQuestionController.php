<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Auth;
use App\Models\EventQuestion;
use App\Facades\Notifications;

use App\Http\Controllers\Controller;

class EventQuestionController extends Controller
{
    /**
     * Show all pending questions.
     */
    public function getIndex(Request $request)
    {
        $query = EventQuestion::with(['user', 'event', 'staff']);
        
        if($request->get('status') == 'pending') {
            $query->pending();
        } elseif($request->get('status') == 'answered') {
            $query->answered();
        }
        
        $questions = $query->orderBy('created_at', 'desc')->paginate(20);
        
        return view('admin.event_questions.index', [
            'questions' => $questions,
        ]);
    }

    /**
     * Show a specific question for answering.
     */
    public function getQuestion($id)
    {
        $question = EventQuestion::with(['user', 'event', 'staff'])->findOrFail($id);
        
        return view('admin.event_questions.question', [
            'question' => $question,
        ]);
    }

    /**
     * Answer a question.
     */
    public function postAnswer(Request $request, $id)
    {
        $request->validate([
            'answer' => 'required|string|min:5|max:5000',
        ]);

        $question = EventQuestion::with(['user', 'event'])->findOrFail($id);
        
        // Check if already answered
        if($question->is_answered) {
            flash('This question has already been answered.')->error();
            return redirect()->to('admin/event-questions');
        }

        // Update the question with the answer
        $question->update([
            'answer' => $request->answer,
            'answered_by' => Auth::user()->id,
            'answered_at' => now(),
            'status' => 'answered',
        ]);

        // Notify the user who asked the question
        if($question->user) {
            Notifications::create('EVENT_QUESTION_ANSWERED', $question->user, [
                'event_name' => optional($question->event)->name ?? 'Event',
                'event_slug' => optional($question->event)->slug ?? '',
                'staff_url' => Auth::user()->url,
                'staff_name' => Auth::user()->name,
                'question_id' => $question->id,
            ]);
        }

        flash('Question answered successfully! The user has been notified.')->success();
        return redirect()->to('admin/event-questions');
    }

    /**
     * Delete a question.
     */
    public function postDelete($id)
    {
        $question = EventQuestion::findOrFail($id);
        $question->delete();

        flash('Question deleted successfully.')->success();
        return redirect()->to('admin/event-questions');
    }
}
