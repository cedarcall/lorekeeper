@extends('admin.layout')

@section('admin-title') Event @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Events' => 'admin/world/events', ($event->id ? 'Edit' : 'Create').' Event' => $event->id ? 'admin/world/events/edit/'.$event->id : 'admin/world/events/create']) !!}

<h1>{{ $event->id ? 'Edit' : 'Create' }} Event
    @if($event->id)
        ({!! $event->displayName !!})
        <a href="#" class="btn btn-danger float-right delete-event-button">Delete Event</a>
    @endif
</h1>

{!! Form::open(['url' => $event->id ? 'admin/world/events/edit/'.$event->id : 'admin/world/events/create', 'files' => true]) !!}

<div class="card mb-3">
    <div class="card-header h3">Basic Information</div>
    <div class="card-body">
        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Name') !!}
                {!! Form::text('name', $event->name, ['class' => 'form-control']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Category') !!} {!! add_help('What category of event is this?') !!}
                {!! Form::select('category_id', [0=>'Choose an Event Category'] + $categories, $event->category_id, ['class' => 'form-control', 'id' => 'category']) !!}
            </div>
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('occur_start', 'Start Date (Optional)') !!}
                {!! Form::text('occur_start', $event->occur_start, ['class' => 'form-control datepicker']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('occur_end', 'End Date (Optional)') !!} {!! add_help('If left blank but start date is set, this will be considered Ongoing.') !!}
                {!! Form::text('occur_end', $event->occur_end, ['class' => 'form-control datepicker']) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('Summary (Optional)') !!}
            {!! Form::text('summary', $event->summary, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('loot_table_id', 'Loot Table (Optional)') !!} {!! add_help('Select a loot table for reward rolling from this event.') !!}
            @php
                $lootTableOptions = [0 => 'No Loot Table'];
                if(isset($lootTables) && is_array($lootTables)) {
                    $lootTableOptions = $lootTableOptions + $lootTables;
                }
            @endphp
            {!! Form::select('loot_table_id', $lootTableOptions, $event->loot_table_id ?? 0, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('award_id', 'Participation Badge (Optional)') !!} {!! add_help('Award/badge that users will receive when their event submission is approved. Leave blank for no badge.') !!}
            @php
                $awardOptions = [0 => 'No Badge'];
                if(isset($awards) && $awards) {
                    foreach($awards as $award) {
                        $awardOptions[$award->id] = $award->name;
                    }
                }
            @endphp
            {!! Form::select('award_id', $awardOptions, $event->award_id ?? 0, ['class' => 'form-control']) !!}
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Images</div>
    <div class="card-body row">
        <div class="form-group col-md-6">
            @if($event->thumb_extension)
                <a href="{{$event->thumbUrl}}"  data-lightbox="entry" data-title="{{ $event->name }}"><img src="{{$event->thumbUrl}}" class="mw-100 float-left mr-3" style="max-height:125px"></a>
            @endif
            {!! Form::label('Thumbnail Image (Optional)') !!} {!! add_help('This thumbnail is used on the event index.') !!}
            <div>{!! Form::file('image_th') !!}</div>
            <div class="text-muted">Recommended size: 200x200</div>
            @if(isset($event->thumb_extension))
                <div class="form-check">
                    {!! Form::checkbox('remove_image_th', 1, false, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Leave Thumbnail As-Is', 'data-on' => 'Remove Thumbnail Image']) !!}
                </div>
            @endif
        </div>

        <div class="form-group col-md-6">
            @if($event->image_extension)
                <a href="{{$event->imageUrl}}"  data-lightbox="entry" data-title="{{ $event->name }}"><img src="{{$event->imageUrl}}" class="mw-100 float-left mr-3" style="max-height:125px"></a>
            @endif
            {!! Form::label('Event Image (Optional)') !!} {!! add_help('This image is used on the event page as a header.') !!}
            <div>{!! Form::file('image') !!}</div>
            <div class="text-muted">Recommended size: None (Choose a standard size for all event header images.)</div>
            @if(isset($event->image_extension))
                <div class="form-check">
                    {!! Form::checkbox('remove_image', 1, false, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Leave Header Image As-Is', 'data-on' => 'Remove Current Header Image']) !!}
                </div>
            @endif
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Inspiration Images</div>
    <div class="card-body">
        <p class="text-muted">Upload 5-10 reference/inspiration images for this event. These will appear in an "Inspiration" section on the event page.</p>
        
        @if($event->inspiration_images && count($event->inspiration_images) > 0)
            <div class="row mb-3">
                @foreach($event->inspiration_images as $img)
                    <div class="col-md-3 mb-2">
                        <div class="card">
                            <img src="{{ asset('images/events/inspiration/'.$img) }}" class="card-img-top" style="max-height: 120px; object-fit: cover;">
                            <div class="card-body p-2 text-center">
                                <div class="form-check">
                                    {!! Form::checkbox('remove_inspiration[]', $img, false, ['class' => 'form-check-input']) !!}
                                    {!! Form::label('remove_inspiration[]', 'Remove', ['class' => 'form-check-label text-danger']) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <p class="text-muted small">{{ count($event->inspiration_images) }}/10 images uploaded</p>
        @endif
        
        @php $remainingSlots = 10 - ($event->inspiration_images ? count($event->inspiration_images) : 0); @endphp
        @if($remainingSlots > 0)
            <div class="form-group">
                {!! Form::label('inspiration_images', 'Add Inspiration Images (up to '.$remainingSlots.' more)') !!}
                {!! Form::file('inspiration_images[]', ['class' => 'form-control-file', 'multiple' => true, 'accept' => 'image/*']) !!}
                <small class="text-muted">Select multiple images at once (hold Ctrl/Cmd while clicking)</small>
            </div>
        @else
            <p class="text-success">Maximum of 10 images reached. Remove some to add more.</p>
        @endif
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">
        {!! Form::label('Description (Optional)') !!}
    </div>
    <div class="card-body">
        <div class="form-group" style="clear:both">
            {!! Form::textarea('description', $event->description, ['class' => 'form-control wysiwyg']) !!}
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">
        {!! Form::label('FAQ / Rewards (Optional)') !!}
    </div>
    <div class="card-body">
        <div class="form-group" style="clear:both">
            {!! Form::textarea('qna_content', $event->qna_content, ['class' => 'form-control wysiwyg']) !!}
        </div>
    </div>
</div>


@if($event->id)
    <div class="card mb-3">
        <div class="card-header h3">
            <div class="float-right"><a href="#" class="btn btn-sm btn-primary" id="addAttachment">Add Attachment</a></div>
            Attachments
        </div>
        <div class="card-body">
            @include('widgets._attachment_select', ['attachments' => $event->attachments])
        </div>
        @if($event->attachers->count())
            <div class="card-footer">
                <h5>Attached to the following</h5>
                <div class="row">
                    @foreach($event->attachers->groupBy('attacher_type') as $type => $attachers)
                        <div class="col-6 col-md-3"><div class="card"><div class="card-body p-2 text-center">
                            <div><strong>{!! $type !!}</strong> <small>({{ $attachers->count() }})</small></div>
                            <p class="mt-2 mb-1">
                                @foreach($attachers as $attacher)
                                    {!! $attacher->attacher->displayName !!}
                                    {{ !$loop->last ? ', ' : '' }}
                                @endforeach
                            </p>
                        </div></div></div>
                    @endforeach
                </div>
            </div>
        @endif
    </div>
@endif


<div class="form-group">
    {!! Form::hidden('is_active', 0) !!}
    <div class="custom-control custom-checkbox">
        <input type="checkbox" name="is_active" id="is_active" value="1" class="custom-control-input" {{ ($event->id ? $event->is_active : 1) ? 'checked' : '' }}>
        {!! Form::label('is_active', 'Set Active', ['class' => 'custom-control-label']) !!}
    </div>
    {!! add_help('If turned off, the event will appear in the World Event History/Archive instead of the current world events list. This does not control the /monthly-event page.') !!}
</div>

<div class="text-right">
    {!! Form::submit($event->id ? 'Edit' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}




@include('widgets._attachment_select_row')

@endsection

@section('scripts')
@parent
@include('js._attachment_js')
<script>
$( document ).ready(function() {
    $('.delete-event-button').on('click', function(e) {
        e.preventDefault();
        loadModal("{{ url('admin/world/events/delete') }}/{{ $event->id }}", 'Delete Event');
    });

    $( ".datepicker" ).datetimepicker({
        dateFormat: "yy-mm-dd",
        timeFormat: '',
    });
});

</script>
@endsection
