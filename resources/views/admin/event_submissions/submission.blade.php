@extends('admin.layout')

@section('admin-title') Event Submission #{{ $submission->id }} @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Event Submissions' => 'admin/event-submissions', 'Submission #'.$submission->id => 'admin/event-submissions/'.$submission->id]) !!}

<h1>
    Event Submission #{{ $submission->id }}
    @if($submission->status == 'pending')
        <span class="badge badge-warning">Pending</span>
    @elseif($submission->status == 'approved')
        <span class="badge badge-success">Approved</span>
    @else
        <span class="badge badge-danger">Rejected</span>
    @endif
</h1>

<div class="card mb-4">
    <div class="card-header">
        <h5 class="mb-0">Submission Details</h5>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <strong>Submitted by:</strong> 
                @if($submission->user)
                    <a href="{{ $submission->user->url }}">{!! $submission->user->displayName !!}</a>
                @else
                    <em>Deleted User</em>
                @endif
            </div>
            <div class="col-md-6">
                <strong>Event:</strong> 
                @if($submission->event)
                    <a href="{{ url('monthly-event/'.$submission->event->slug) }}">{{ $submission->event->title ?? $submission->event->name }}</a>
                @else
                    <em>Deleted Event</em>
                @endif
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-md-6">
                <strong>Title:</strong> {{ $submission->title ?? 'Untitled' }}
            </div>
            <div class="col-md-6">
                <strong>Type:</strong> {{ ucfirst($submission->submission_type) }}
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-md-6">
                <strong>Submitted:</strong> 
                {{ $submission->created_at ? $submission->created_at->format('M d, Y \\a\\t g:i A') : 'Unknown' }}
            </div>
            <div class="col-md-6">
                <strong>Status:</strong> 
                @if($submission->status == 'pending')
                    <span class="badge badge-warning">Pending</span>
                @elseif($submission->status == 'approved')
                    <span class="badge badge-success">Approved</span>
                @else
                    <span class="badge badge-danger">Rejected</span>
                @endif
            </div>
        </div>

        @if($submission->description)
            <hr>
            <h6>Description:</h6>
            <div class="p-3 border rounded">
                {!! nl2br(e($submission->description)) !!}
            </div>
        @endif

        @if($submission->image_url)
            <hr>
            <h6>Submitted File:</h6>
            <div class="mt-2">
                @if(in_array($submission->image_extension, ['jpg', 'jpeg', 'png', 'gif']))
                    <a href="{{ $submission->image_url }}" target="_blank">
                        <img src="{{ $submission->image_url }}" class="img-fluid" style="max-height: 500px;">
                    </a>
                @else
                    <a href="{{ $submission->image_url }}" target="_blank" class="btn btn-primary">
                        <i class="fas fa-file-pdf"></i> View/Download File
                    </a>
                @endif
            </div>
        @endif

        @if($submission->status != 'pending' && $submission->staff)
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <strong>Reviewed by:</strong> 
                    <a href="{{ $submission->staff->url }}">{!! $submission->staff->displayName !!}</a>
                </div>
                <div class="col-md-6">
                    <strong>Reviewed at:</strong> 
                    {{ $submission->approved_at ? $submission->approved_at->format('M d, Y \\a\\t g:i A') : 'Unknown' }}
                </div>
            </div>
            @if($submission->status == 'approved' && ($submission->credit_reward > 0 || $submission->reputation_reward > 0))
                <div class="mt-3 p-3 border rounded" style="background: rgba(0, 255, 136, 0.1); border-color: #00ff88 !important;">
                    <h6 style="color: #00ff88;">Granted Rewards</h6>
                    @if($submission->credit_reward > 0)
                        <p class="mb-1"><strong>💰 Credits:</strong> {{ $submission->credit_reward }}</p>
                    @endif
                    @if($submission->reputation_reward > 0)
                        <p class="mb-0"><strong>⭐ Reputation:</strong> {{ $submission->reputation_reward }}</p>
                    @endif
                </div>
            @endif
            @if($submission->staff_notes)
                <div class="mt-2">
                    <strong>Staff Notes:</strong>
                    <div class="p-3 border rounded">
                        {!! nl2br(e($submission->staff_notes)) !!}
                    </div>
                </div>
            @endif
        @endif
    </div>
</div>

@if($submission->status == 'pending')
    <div class="row">
        <div class="col-md-6">
            <div class="card border-success">
                <div class="card-header bg-success text-white">
                    <h5 class="mb-0">Approve Submission</h5>
                </div>
                <div class="card-body">
                    <p class="text-muted">Approving this submission will grant the user rewards including credits, reputation, the event badge, and a random item from the event's loot table (if configured).</p>
                    <button type="button" class="btn btn-success btn-block" onclick="document.getElementById('approveModal').style.display='block'">
                        <i class="fas fa-check"></i> Approve & Award Rewards
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card border-danger">
                <div class="card-header bg-danger text-white">
                    <h5 class="mb-0">Reject Submission</h5>
                </div>
                <div class="card-body">
                    {!! Form::open(['url' => 'admin/event-submissions/'.$submission->id.'/reject']) !!}
                        <div class="form-group">
                            {!! Form::label('staff_notes', 'Reason for Rejection (Optional)') !!}
                            {!! Form::textarea('staff_notes', null, ['class' => 'form-control', 'rows' => 3]) !!}
                        </div>
                        <div class="text-right">
                            {!! Form::submit('Reject', ['class' => 'btn btn-danger']) !!}
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>

    <!-- Approve Modal -->
    <div id="approveModal" onclick="if(event.target.id=='approveModal') this.style.display='none'" style="display:none; position:fixed; z-index:999999; left:0; top:0; width:100%; height:100%; background-color:rgba(0,0,0,0.7);">
        <div style="position:relative; background:#0a1428; border:2px solid #00ff88; margin:10% auto; padding:20px; width:90%; max-width:500px; border-radius:5px;">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:15px;">
                <h4 style="color:#00ff88; margin:0;">Approve Submission & Grant Rewards</h4>
                <button onclick="document.getElementById('approveModal').style.display='none'" style="background:none; border:none; color:#00ff88; font-size:24px; cursor:pointer; padding:0; line-height:1;">&times;</button>
            </div>
            <form method="POST" action="{{ url('admin/event-submissions/'.$submission->id.'/approve') }}">
                @csrf
                <div style="margin-bottom:15px;">
                    <label style="color:#00ff88; display:block; margin-bottom:5px;">Credit Reward (Optional)</label>
                    <input type="number" name="credit_reward" class="form-control" min="0" max="999999" value="0" placeholder="Amount of credits to award" style="background:#0a1428; border:1px solid #00ff88; color:#fff; width:100%; padding:10px;">
                    <small style="color:#888;">The number of credits the user will receive</small>
                </div>
                <div style="margin-bottom:15px;">
                    <label style="color:#00ff88; display:block; margin-bottom:5px;">Reputation Reward (Optional)</label>
                    <input type="number" name="reputation_reward" id="reputation_reward_input" class="form-control" min="0" max="999999" value="0" placeholder="Amount of reputation to award" style="background:#0a1428; border:1px solid #00ff88; color:#fff; width:100%; padding:10px;">
                    <small style="color:#888;">The reputation points to award to a character</small>
                </div>
                <div style="margin-bottom:15px;" id="character_select_div">
                    <label style="color:#00ff88; display:block; margin-bottom:5px;">Award Reputation To Character</label>
                    <select name="character_id" id="character_select" class="form-control" style="background:#0a1428; border:1px solid #00ff88; color:#fff; width:100%; padding:10px;">
                        <option value="">Select a character...</option>
                        @foreach($characters as $charId => $charSlug)
                            <option value="{{ $charId }}">{{ $charSlug }}</option>
                        @endforeach
                    </select>
                    <small style="color:#888;">Required when awarding reputation (character currency)</small>
                </div>
                <div style="margin-bottom:15px;">
                    <label style="color:#00ff88; display:block; margin-bottom:5px;">Staff Notes (Optional)</label>
                    <textarea name="staff_notes" class="form-control" rows="2" placeholder="Any notes for the user..." style="background:#0a1428; border:1px solid #00ff88; color:#fff; width:100%; padding:10px;"></textarea>
                </div>
                <div style="background:rgba(0,255,136,0.1); padding:10px; margin:0 0 15px 0; border-radius:3px;">
                    <p style="color:#00ff88; margin:0; font-size:13px;">
                        <strong>Note:</strong> Credits go to the user. Reputation goes to the selected character.
                        @if($submission->event && $submission->event->award_id)
                            <br>✓ <strong>Badge:</strong> {{ $submission->event->award->name ?? 'Event Badge' }} (if not already owned)
                        @endif
                        @if($submission->event && $submission->event->loot_table_id)
                            <br>✓ <strong>Loot:</strong> Random item from "{{ $submission->event->lootTable->name ?? 'Event Loot Table' }}"
                        @endif
                    </p>
                </div>
                <div style="display:flex; gap:10px; justify-content:flex-end;">
                    <button type="button" onclick="document.getElementById('approveModal').style.display='none'" class="btn btn-secondary">Cancel</button>
                    <button type="submit" class="btn btn-success" onclick="return confirm('Approve this submission and grant the specified rewards?');">
                        <i class="fas fa-check"></i> Approve & Grant Rewards
                    </button>
                </div>
            </form>
        </div>
    </div>
    <script>
        // Move modal to body on page load to escape stacking context issues
        document.addEventListener('DOMContentLoaded', function() {
            var approveModal = document.getElementById('approveModal');
            if (approveModal) {
                document.body.appendChild(approveModal);
            }
        });
    </script>
@endif

<div class="mt-3">
    <a href="{{ url('admin/event-submissions') }}" class="btn btn-secondary">Back to List</a>
    
    <button type="button" class="btn btn-outline-danger float-right" data-toggle="modal" data-target="#deleteModal">
        Delete Submission
    </button>
</div>

<!-- Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Submission</h5>
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            {!! Form::open(['url' => 'admin/event-submissions/'.$submission->id.'/delete']) !!}
            <div class="modal-body">
                <p>Are you sure you want to delete this submission? This cannot be undone.</p>
                <p class="text-muted">The user will be notified that their submission was removed.</p>
                <div class="form-group">
                    {!! Form::label('delete_reason', 'Reason for Deletion (Optional)') !!}
                    {!! Form::textarea('delete_reason', null, ['class' => 'form-control', 'rows' => 3, 'placeholder' => 'Enter a reason to include in the notification to the user...']) !!}
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>

@endsection
