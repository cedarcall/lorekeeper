@extends('admin.layout')

@section('admin-title') Events @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel'=>'admin', 'Events'=>'admin/events', ($event->id ? 'Edit' : 'Create').' Event' => $event->id ? 'admin/events/edit/'.$event->id : 'admin/events/create']) !!}

<h1>{{ $event->id ? 'Edit' : 'Create' }} Event
    @if($event->id)
        <a href="#" class="btn btn-danger float-right delete-event-button">Delete Event</a>
        <a href="{{ url('monthly-event/'.$event->slug) }}" class="btn btn-info float-right mr-md-2">View</a>
    @endif
</h1>

{!! Form::open(['url' => $event->id ? 'admin/events/edit/'.$event->id : 'admin/events/create', 'files' => true]) !!}

<div class="form-group">
    {!! Form::label('Title') !!}
    {!! Form::text('title', $event->title, ['class' => 'form-control']) !!}
    {!! Form::label('Slug') !!}
    {!! Form::text('slug', $event->slug, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
    {!! Form::label('Content') !!}
    {!! Form::textarea('content', $event->content, ['class' => 'form-control wysiwyg']) !!}
</div>

<div class="form-group">
    {!! Form::label('FAQ / Rewards Content (Optional)') !!}
    {!! Form::textarea('qna_content', $event->qna_content, ['class' => 'form-control wysiwyg']) !!}
</div>

<div class="row">
    <div class="col-md-4">
        <div class="form-group">
            {!! Form::label('Start At') !!}
            {!! Form::text('start_at', $event->start_at ? $event->start_at->format('Y-m-d H:i:s') : null, ['class' => 'form-control datepicker']) !!}
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            {!! Form::label('End At') !!}
            {!! Form::text('end_at', $event->end_at ? $event->end_at->format('Y-m-d H:i:s') : null, ['class' => 'form-control datepicker']) !!}
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            {!! Form::checkbox('is_visible', 1, $event->id ? $event->is_visible : 1, ['class' => 'form-check-input', 'data-toggle' => 'toggle']) !!}
            {!! Form::label('is_visible', 'Is Viewable', ['class' => 'form-check-label ml-3']) !!}
        </div>
    </div>
</div>

<div class="form-group">
    {!! Form::label('Header Image') !!}
    @if($event->header_image)
        <div class="mb-2"><img src="{{ asset($event->header_image) }}" style="max-width:100%; height:auto;"></div>
    @endif
    {!! Form::file('header_image') !!}
</div>

<div class="text-right">
    {!! Form::submit($event->id ? 'Edit' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@endsection

@section('scripts')
@parent
<script>
$( document ).ready(function() {
    $('.delete-event-button').on('click', function(e) {
        e.preventDefault();
        loadModal("{{ url('admin/events/delete') }}/{{ $event->id }}", 'Delete Event');
    });
    
    $( ".datepicker" ).datetimepicker({
        dateFormat: "yy-mm-dd",
        timeFormat: "HH:mm:ss"
    });
    
    tinymce.init({
        selector: '.wysiwyg',
        height: 500,
        menubar: false,
        plugins: [
            'advlist autolink lists link image charmap print preview anchor',
            'searchreplace visualblocks code fullscreen',
            'insertdatetime media table paste code help'
        ],
        toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | removeformat | code',
        paste_data_images: true,
        paste_as_text: false,
        automatic_uploads: true,
        images_upload_url: "{{ url('admin/events/upload-image') }}",
        images_upload_handler: function(blobInfo, success, failure) {
            var xhr = new XMLHttpRequest();
            var formData = new FormData();
            formData.append('file', blobInfo.blob(), blobInfo.filename());
            formData.append('_token', '{{ csrf_token() }}');
            xhr.open('POST', "{{ url('admin/events/upload-image') }}");
            xhr.onload = function() {
                if (xhr.status === 200) {
                    try {
                        var json = JSON.parse(xhr.responseText);
                        if(json.location) {
                            success(json.location);
                        } else if(json.error) {
                            failure('Image upload failed: ' + json.error);
                        } else {
                            failure('Image upload failed: No location returned');
                        }
                    } catch(e) {
                        failure('Image upload failed: Invalid response');
                    }
                } else {
                    try {
                        var json = JSON.parse(xhr.responseText);
                        failure('Image upload failed: ' + (json.error || xhr.status));
                    } catch(e) {
                        failure('Image upload failed: HTTP ' + xhr.status);
                    }
                }
            };
            xhr.onerror = function() {
                failure('Image upload failed: Network error');
            };
            xhr.send(formData);
        },
        paste_preprocess: function(plugin, args) {
            // Remove Cloudinary metadata from pasted content
            var content = args.content;
            // Remove patterns like: -150.png","h":4,"w":150...
            content = content.replace(/-\d+\.png["\']?,\s*"[htwcfrsxo]":[^}]*}\s*(?:\{"t":[^}]*\})*,/gi, '","');
            // Remove entityId and filetype metadata
            content = content.replace(/",\s*"filetype":\s*"[^"]*",\s*"entityId":\s*\d+\s*\}"\s+data-/gi, '" data-');
            // Remove data-link attributes with JSON
            content = content.replace(/\s+data-link="https?:\/\/[^"]*"/g, '');
            // Clean up extra spacing
            content = content.replace(/>\s+-\d+\.png/g, '>');
            args.content = content;
        },
        content_css: [
            '//www.tiny.cloud/css/codepen.min.css',
            '{{ asset('css/app.css') }}',
            '{{ asset('css/lorekeeper.css') }}',
            '{{ asset('css/custom.css') }}',
            '{{ asset($theme?->cssUrl) }}',
            '{{ asset($conditionalTheme?->cssUrl) }}',
            '{{ asset($decoratorTheme?->cssUrl) }}',
            '{{ asset('css/all.min.css') }}'
        ]
    });
});
</script>
@endsection
