<div class="modal-body">
    <p>Are you sure you want to delete the event "{{ $event->title }}"?</p>
</div>
<div class="modal-footer">
    {!! Form::open(['url' => 'admin/events/delete/'.$event->id]) !!}
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
    {!! Form::close() !!}
</div>
