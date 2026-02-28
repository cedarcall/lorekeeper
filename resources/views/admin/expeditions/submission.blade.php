@extends('admin.layout')

@section('admin-title') Expedition Submission @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Expedition Submissions' => 'admin/expeditions', 'Submission #'.$submission->id]) !!}

<h1>Submission #{{ $submission->id }}
    <small class="text-muted">{{ $submission->title ?? 'Untitled' }}</small>
    @if($submission->status == 'pending')
        <span class="badge badge-warning">Pending Review</span>
    @elseif($submission->status == 'approved')
        <span class="badge badge-success">Approved</span>
    @else
        <span class="badge badge-danger">Rejected</span>
    @endif
</h1>

<div class="row">
    <div class="col-md-9">
        <div class="card mb-3">
            <div class="card-header h3">Expedition Details</div>
            <div class="card-body">
                <p><strong>User:</strong> @if($submission->user)<a href="{{ url('admin/users/'.$submission->user->name) }}">{{ $submission->user->name }}</a>@else<em>Deleted User</em>@endif</p>
                <p><strong>Planet:</strong> @if($submission->planet)<a href="{{ url('admin/planets/edit/'.$submission->planet->id) }}">{{ $submission->planet->name }}</a>@else<em>Deleted Planet</em>@endif</p>
                <p><strong>Title:</strong> {{ $submission->title ?? 'Untitled' }}</p>
                <p><strong>Galaxy:</strong> {{ optional(optional($submission->planet)->galaxy)->name ?? 'Unknown' }}</p>
                <p><strong>Type:</strong> <span class="badge badge-info">{{ ucfirst($submission->submission_type) }}</span></p>
                <p><strong>Submitted:</strong> {{ $submission->created_at->format('M d, Y \a\t H:i') }}</p>
            </div>
        </div>

        @if($submission->image_extension)
            <div class="card mb-3">
                <div class="card-header h3">Submitted File</div>
                <div class="card-body">
                    <!-- Security Notice -->
                    <div class="alert alert-info mb-3" style="background: rgba(0, 204, 255, 0.1); border-color: #00ccff; color: #fff;">
                        <h5 class="mb-2"><i class="fas fa-shield-alt"></i> Staff Safety Information</h5>
                        <p class="mb-2">
                            <strong>Multi-Layer Security Protection:</strong> This website has built-in custom security that only accepts safe file types (JPG, PNG, GIF, PDF). 
                            The system validates file content using MIME type verification—not just the file extension—to detect malicious files disguised as images or documents.
                        </p>
                        <p class="mb-2">
                            <strong>Secure File Handling:</strong> Files are stored with cryptographically random names and served through a secure controller with anti-exploit headers 
                            (MIME-sniffing protection, frame injection blocking, and script execution prevention).
                        </p>
                        <p class="mb-2">
                            <strong>Best Practices:</strong> Your safety is our top priority. Whenever possible, <strong>view files in your browser window</strong> using the "View" button 
                            rather than downloading. Only download files if you need to save them locally or if the browser cannot display them.
                        </p>
                        <p class="mb-0">
                            <strong>Report Issues:</strong> While file content validation prevents viruses, inappropriate images may still be submitted. If you encounter 
                            inappropriate content, please contact <strong>Hermescasp</strong> personally for review and appropriate action (including user ban if necessary).
                        </p>
                    </div>
                    
                    <div class="text-center">
                        @if($submission->imageUrl)
                            @if(in_array(strtolower($submission->image_extension), ['pdf']))
                                <p class="mb-3"><i class="fas fa-file-pdf fa-4x text-danger"></i></p>
                                <p><strong>PDF Document</strong></p>
                                <a href="{{ url('admin/expeditions/file/'.$submission->id.'/download') }}" class="btn btn-primary">
                                    <i class="fas fa-download"></i> Download PDF
                                </a>
                                <a href="{{ url('admin/expeditions/file/'.$submission->id.'/view') }}" target="_blank" class="btn btn-secondary ml-2">
                                    <i class="fas fa-eye"></i> View in New Tab
                                </a>
                            @else
                                <a href="{{ $submission->imageUrl }}" data-lightbox="submission">
                                    <img src="{{ $submission->imageUrl }}" class="img-fluid" style="max-height: 400px;">
                                </a>
                                <div class="mt-2">
                                    <a href="{{ url('admin/expeditions/file/'.$submission->id.'/download') }}" class="btn btn-sm btn-primary">
                                        <i class="fas fa-download"></i> Download Image
                                    </a>
                                </div>
                            @endif
                        @else
                            <div class="alert alert-warning">
                                <i class="fas fa-exclamation-triangle"></i> File not found. The submission may have been uploaded before the storage was configured, or the file was deleted.
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        @endif

        <div class="card mb-3">
            <div class="card-header h3">Submission Description</div>
            <div class="card-body">
                {!! $submission->description !!}
            </div>
        </div>

        @if($submission->status == 'approved' && ($submission->credit_reward > 0 || $submission->reputation_reward > 0))
            <div class="card mb-3" style="background: rgba(0, 255, 136, 0.1); border: 1px solid #00ff88;">
                <div class="card-header h3" style="color: #00ff88;">Granted Rewards</div>
                <div class="card-body">
                    @if($submission->credit_reward > 0)
                        <p><strong>💰 Credits:</strong> {{ $submission->credit_reward }}</p>
                    @endif
                    @if($submission->reputation_reward > 0)
                        <p><strong>⭐ Reputation:</strong> {{ $submission->reputation_reward }}</p>
                    @endif
                </div>
            </div>
        @endif

        @if($submission->status != 'pending')
            <div class="card mb-3">
                <div class="card-header h3">
                    {{ $submission->status == 'approved' ? 'Approval' : 'Rejection' }} Notes
                </div>
                <div class="card-body">
                    {{ $submission->notes ?? 'No notes provided.' }}
                </div>
            </div>
        @endif
    </div>

    <div class="col-md-3">
        @if($submission->status == 'pending')
            <div class="card mb-3">
                <div class="card-header h3">Actions</div>
                <div class="card-body">
                    <p class="text-muted text-sm">Review the submission and approve or reject it. Approving will increment the user's visit count for this planet and unlock information tiers.</p>

                    <form method="POST" action="{{ url('admin/expeditions/'.$submission->id.'/approve') }}" class="mb-2">
                        @csrf
                        <button type="button" class="btn btn-success btn-block" onclick="document.getElementById('approveModal').style.display='block'">
                            <i class="fas fa-check"></i> Approve
                        </button>
                    </form>

                    <button class="btn btn-danger btn-block" onclick="document.getElementById('rejectModal').style.display='block'">
                        <i class="fas fa-times"></i> Reject
                    </button>
                </div>
            </div>
        @else
            <div class="card mb-3" style="background: rgba(50, 50, 100, 0.3);">
                <div class="card-header h3">{{ $submission->status == 'approved' ? 'Approved' : ucfirst($submission->status) }}</div>
                <div class="card-body">
                    <p class="text-muted text-sm">This submission has been {{ $submission->status }}.</p>
                    
                    @if($submission->status == 'approved')
                        <button class="btn btn-warning btn-block mb-2" onclick="document.getElementById('takedownModal').style.display='block'">
                            <i class="fas fa-exclamation-triangle"></i> Take Down Submission
                        </button>
                        <p class="text-muted text-sm"><i class="fas fa-info-circle"></i> Use this if the submission was approved incorrectly. The user's visit count will be decreased.</p>
                    @endif
                    
                    <a href="{{ url('admin/expeditions') }}" class="btn btn-primary btn-block">
                        Back to List
                    </a>
                </div>
            </div>
        @endif
    </div>
</div>

@if($submission->status == 'pending')
    <!-- Approve Modal -->
    <div id="approveModal" onclick="if(event.target.id=='approveModal') this.style.display='none'" style="display:none; position:fixed; z-index:999999; left:0; top:0; width:100%; height:100%; background-color:rgba(0,0,0,0.7);">
        <div style="position:relative; background:#0a1428; border:2px solid #00ff88; margin:10% auto; padding:20px; width:90%; max-width:500px; border-radius:5px;">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:15px;">
                <h4 style="color:#00ff88; margin:0;">Approve Submission & Grant Rewards</h4>
                <button onclick="document.getElementById('approveModal').style.display='none'" style="background:none; border:none; color:#00ff88; font-size:24px; cursor:pointer; padding:0; line-height:1;">&times;</button>
            </div>
            <form method="POST" action="{{ url('admin/expeditions/'.$submission->id.'/approve') }}">
                @csrf
                <div style="margin-bottom:15px;">
                    <label style="color:#00ff88; display:block; margin-bottom:5px;">Credit Reward (Optional)</label>
                    <input type="number" name="credit_reward" class="form-control" min="0" max="999999" value="0" placeholder="Amount of credits to award" style="background:#0a1428; border:1px solid #00ff88; color:#fff; width:100%; padding:10px;">
                    <small style="color:#888;">The number of credits the user will receive</small>
                </div>
                <div style="margin-bottom:15px;">
                    <label style="color:#00ff88; display:block; margin-bottom:5px;">Reputation Reward (Optional)</label>
                    <input type="number" name="reputation_reward" class="form-control" min="0" max="999999" value="0" placeholder="Amount of reputation to award" style="background:#0a1428; border:1px solid #00ff88; color:#fff; width:100%; padding:10px;">
                    <small style="color:#888;">The number of reputation points the user will receive</small>
                </div>
                <div style="background:rgba(0,255,136,0.1); padding:10px; margin:0 0 15px 0; border-radius:3px;">
                    <p style="color:#00ff88; margin:0; font-size:13px;"><strong>Note:</strong> The user will receive the specified rewards, a randomized item from the featured planet loot table (if applicable), and their visit count will be incremented.</p>
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
    
    <!-- Reject Modal -->
    <div id="rejectModal" onclick="if(event.target.id=='rejectModal') this.style.display='none'" style="display:none; position:fixed; z-index:999999; left:0; top:0; width:100%; height:100%; background-color:rgba(0,0,0,0.7);">
        <div style="position:relative; background:#0a1428; border:2px solid #00ccff; margin:10% auto; padding:20px; width:90%; max-width:500px; border-radius:5px;">
            <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:15px;">
                <h4 style="color:#00ccff; margin:0;">Reject Submission</h4>
                <button onclick="document.getElementById('rejectModal').style.display='none'" style="background:none; border:none; color:#00ccff; font-size:24px; cursor:pointer; padding:0; line-height:1;">&times;</button>
            </div>
            <form method="POST" action="{{ url('admin/expeditions/'.$submission->id.'/reject') }}">
                @csrf
                <div style="margin-bottom:15px;">
                    <label style="color:#00ccff; display:block; margin-bottom:5px;">Rejection Notes (Optional)</label>
                    <textarea name="notes" class="form-control" rows="4" placeholder="Explain why this submission was rejected..." style="background:#0a1428; border:1px solid #00ccff; color:#fff; width:100%; padding:10px;"></textarea>
                </div>
                <div style="display:flex; gap:10px; justify-content:flex-end;">
                    <button type="button" onclick="document.getElementById('rejectModal').style.display='none'" class="btn btn-secondary">Cancel</button>
                    <button type="submit" class="btn btn-danger">Reject</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        // Move modal to body on page load to escape stacking context issues
        document.addEventListener('DOMContentLoaded', function() {
            var rejectModal = document.getElementById('rejectModal');
            if (rejectModal) {
                document.body.appendChild(rejectModal);
            }
        });
    </script>
@endif

@if($submission->status == 'approved')
    <!-- Takedown Modal -->
    <div id="takedownModal" onclick="if(event.target.id=='takedownModal') this.style.display='none'" style="display:none; position:fixed; z-index:999999; left:0; top:0; width:100%; height:100%; background-color:rgba(0,0,0,0.7); overflow-y:auto; padding:20px; box-sizing:border-box;">
        <div style="position:relative; background:#0a1428; border:2px solid #ffaa00; margin:0 auto; padding:0; width:calc(100% - 40px); max-width:500px; border-radius:5px; box-sizing:border-box; overflow:hidden;">
            <div style="padding:15px 15px 0 15px;">
                <div style="display:flex; justify-content:space-between; align-items:flex-start; margin-bottom:15px; gap:10px;">
                    <h4 style="color:#ffaa00; margin:0; flex:1; word-break:break-word; font-size:18px;"><i class="fas fa-exclamation-triangle"></i> Take Down Submission</h4>
                    <button onclick="document.getElementById('takedownModal').style.display='none'" style="background:none; border:none; color:#ffaa00; font-size:24px; cursor:pointer; padding:0; line-height:1; flex-shrink:0;">&times;</button>
                </div>
                <div style="background:rgba(255,170,0,0.2); padding:10px; margin:0 0 15px 0; border-radius:3px;">
                    <p style="color:#ffaa00; margin:0; font-size:13px; word-wrap:break-word;"><strong>Warning:</strong> This will reverse the approval and decrease the user's visit count for this planet. Use only if this submission was approved incorrectly.</p>
                </div>
            </div>
            <form method="POST" action="{{ url('admin/expeditions/'.$submission->id.'/takedown') }}" style="padding:0 15px 15px 15px;">
                @csrf
                <div style="margin-bottom:15px;">
                    <label style="color:#ffaa00; display:block; margin-bottom:5px;">Reason for Takedown (Optional)</label>
                    <textarea name="reason" class="form-control" rows="4" placeholder="Explain why this submission is being taken down..." style="background:#0a1428; border:1px solid #ffaa00; color:#fff; width:100%; padding:10px; box-sizing:border-box; resize:vertical;"></textarea>
                </div>
                <div style="display:flex; gap:10px; justify-content:flex-end; flex-wrap:wrap;">
                    <button type="button" onclick="document.getElementById('takedownModal').style.display='none'" class="btn btn-secondary">Cancel</button>
                    <button type="submit" class="btn btn-warning" onclick="return confirm('Are you sure you want to take down this approved submission? This will decrease the user\'s visit count.');">
                        <i class="fas fa-exclamation-triangle"></i> Take Down
                    </button>
                </div>
            </form>
        </div>
    </div>
    <script>
        // Move modal to body on page load to escape stacking context issues
        document.addEventListener('DOMContentLoaded', function() {
            var takedownModal = document.getElementById('takedownModal');
            if (takedownModal) {
                document.body.appendChild(takedownModal);
            }
        });
    </script>
@endif
@endsection
