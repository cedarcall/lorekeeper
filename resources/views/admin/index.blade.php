@extends('admin.layout')

@section('admin-title') Dashboard @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Home' => 'admin']) !!}

<h1>Admin Dashboard</h1>
<div class="row">
    @if (Auth::user()->hasPower('manage_characters'))
      <div class="col-sm-6">
          <div class="card mb-3">
              <div class="card-body">
                  <h5 class="card-title">Design Updates @if($designCount)<span class="badge badge-primary">{{ $designCount }}</span>@endif</h5>
                  <p class="card-text">
                      @if($designCount)
                          {{ $designCount }} design update{{ $designCount == 1 ? '' : 's' }} awaiting processing.
                      @else
                          The design update approval queue is clear. Hooray!
                      @endif
                  </p>
                  <div class="text-right">
                      <a href="{{ url('admin/design-approvals/pending') }}" class="card-link">View Queue <span class="fas fa-caret-right ml-1"></span></a>
                  </div>
              </div>
          </div>
      </div>
      <div class="col-sm-6">
          <div class="card mb-3">
              <div class="card-body">
                  <h5 class="card-title">MYO Approvals @if($myoCount)<span class="badge badge-primary">{{ $myoCount }}</span>@endif</h5>
                  <p class="card-text">
                      @if($myoCount)
                          {{ $myoCount }} MYO slot{{ $myoCount == 1 ? '' : 's' }} awaiting processing.
                      @else
                          The MYO slot approval queue is clear. Hooray!
                      @endif
                  </p>
                  <div class="text-right">
                      <a href="{{ url('admin/myo-approvals/pending') }}" class="card-link">View Queue <span class="fas fa-caret-right ml-1"></span></a>
                  </div>
              </div>
          </div>
      </div>
      @if($openTransfersQueue)
          <div class="col-sm-6">
              <div class="card mb-3">
                  <div class="card-body">
                      <h5 class="card-title">Character Transfers @if($transferCount + $tradeCount)<span class="badge badge-primary">{{ $transferCount + $tradeCount }}</span>@endif</h5>
                      <p class="card-text">
                          @if($transferCount + $tradeCount)
                              {{ $transferCount + $tradeCount }} character transfer{{$transferCount + $tradeCount == 1 ? '' : 's' }} and/or trade{{$transferCount + $tradeCount == 1 ? '' : 's' }} awaiting processing.
                          @else
                              The character transfer/trade queue is clear. Hooray!
                          @endif
                      </p>
                      <div class="text-right">
                          <a href="{{ url('admin/masterlist/transfers/incoming') }}" class="card-link">View Queue <span class="fas fa-caret-right ml-1"></span></a>
                      </div>
                  </div>
              </div>
          </div>
      @endif
    @endif
    @if(!Auth::user()->hasPower('manage_characters'))
      <div class="card p-4 col-12">
        <h5 class="card-title">You do not have a rank that allows you to access any queues.</h5>
        <p class="mb-1">
           Refer to the sidebar for what you can access as a staff member.
        </p>
        <p class="mb-0">
          If you believe this to be in error, contact your site administrator.
        </p>
      </div>
    @endif
    @if($galleryCurrencyAwards)
        <div class="col-sm-6">        
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Gallery Currency Awards @if($galleryAwardCount)<span class="badge badge-primary">{{ $galleryAwardCount }}</span>@endif</h5>
                    <p class="card-text">
                        @if($galleryAwardCount)
                            {{ $galleryAwardCount }} gallery submission{{$galleryAwardCount == 1 ? '' : 's' }} awaiting currency rewards.
                        @else 
                            The gallery currency award queue is clear. Hooray!
                        @endif
                    </p>
                    <div class="text-right">
                        <a href="{{ url('admin/gallery/currency/pending') }}" class="card-link">View Queue <span class="fas fa-caret-right ml-1"></span></a>
                    </div>
                </div>
            </div>
        </div>
    @endif
</div>

<h3 class="mt-4 mb-3">Dreadfarer Specific</h3>
<div class="row">
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Monthly Events @if($eventCount)<span class="badge badge-primary">{{ $eventCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($eventCount)
                        {{ $eventCount }} event{{ $eventCount == 1 ? '' : 's' }} created.
                    @else
                        No events have been created yet.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/events') }}" class="card-link">Manage Monthly Events <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Announcements @if($announcementCount)<span class="badge badge-primary">{{ $announcementCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($announcementCount)
                        {{ $announcementCount }} announcement{{ $announcementCount == 1 ? '' : 's' }} created.
                    @else
                        No announcements have been created yet.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/announcements') }}" class="card-link">Manage Announcements <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Contracts @if($contractCount)<span class="badge badge-primary">{{ $contractCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($contractCount)
                        {{ $contractCount }} contract{{ $contractCount == 1 ? '' : 's' }} created.
                    @else
                        No contracts have been created yet.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/contracts') }}" class="card-link">Manage Contracts <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Expedition Submissions @if($expeditionSubmissionCount)<span class="badge badge-primary">{{ $expeditionSubmissionCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($expeditionSubmissionCount)
                        {{ $expeditionSubmissionCount }} submission{{ $expeditionSubmissionCount == 1 ? '' : 's' }} awaiting review.
                    @else
                        No pending expedition submissions.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/expeditions') }}" class="card-link">Manage Expedition Submissions <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Event Submissions @if($eventSubmissionCount)<span class="badge badge-primary">{{ $eventSubmissionCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($eventSubmissionCount)
                        {{ $eventSubmissionCount }} submission{{ $eventSubmissionCount == 1 ? '' : 's' }} awaiting review.
                    @else
                        No pending event submissions.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/event-submissions') }}" class="card-link">Manage Event Submissions <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Event Questions @if($eventQuestionCount)<span class="badge badge-primary">{{ $eventQuestionCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($eventQuestionCount)
                        {{ $eventQuestionCount }} question{{ $eventQuestionCount == 1 ? '' : 's' }} awaiting answer.
                    @else
                        No pending event questions.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/event-questions') }}" class="card-link">Manage Questions <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    @if (Auth::user()->hasPower('manage_reports'))
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Reports @if($reportCount||$assignedReportCount)<span class="badge badge-primary">{{ $reportCount + $assignedReportCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($reportCount||$assignedReportCount)
                        @if($reportCount)
                            {{ $reportCount }} report{{ $reportCount == 1 ? '' : 's' }} awaiting assignment.
                        @endif
                        {!! $reportCount && $assignedReportCount ? '<br/>' : '' !!}
                        @if($assignedReportCount)
                            {{ $assignedReportCount }} report{{ $assignedReportCount == 1 ? '' : 's' }} awaiting processing.
                        @endif
                    @else
                        No pending reports.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/reports/pending') }}" class="card-link">Manage Reports <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
    @endif
    @if(Auth::user()->isAdmin)
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Owner Reports @if($ownerReportCount)<span class="badge badge-warning">{{ $ownerReportCount }}</span>@endif</h5>
                <p class="card-text">
                    @if($ownerReportCount)
                        {{ $ownerReportCount }} owner report{{ $ownerReportCount == 1 ? '' : 's' }} (bugs/messages) awaiting review.
                    @else
                        No pending owner reports.
                    @endif
                </p>
                <div class="text-right">
                    <a href="{{ url('admin/reports/pending?type=bug') }}" class="card-link">Bug Reports <span class="fas fa-caret-right ml-1"></span></a>
                    <a href="{{ url('admin/reports/pending?type=owner') }}" class="card-link">Owner Messages <span class="fas fa-caret-right ml-1"></span></a>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection
