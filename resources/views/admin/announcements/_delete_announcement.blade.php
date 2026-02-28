@if($announcement)
    {!! Form::open(['url' => 'admin/announcements/delete/'.$announcement->id]) !!}

    <p>You are about to delete the announcement <strong>{{ $announcement->title }}</strong>. This is not reversible. Users will no longer see this announcement.</p>
    <p>Are you sure you want to delete <strong>{{ $announcement->title }}</strong>?</p>

    <div class="text-right">
        {!! Form::submit('Delete Announcement', ['class' => 'btn btn-danger']) !!}
    </div>

    {!! Form::close() !!}
@else 
    Invalid announcement selected.
@endif
