@extends('admin.layout')

@section('admin-title') World Info @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Gallery Settings' => 'admin/world-info']) !!}

<h1>Gallery Header Sections</h1>
<p>Manage the 4 information sections displayed at the top of the Gallery page. Each section supports images and rich text.</p>

{!! Form::open(['url' => 'admin/world-info', 'files' => true]) !!}

@for($i = 1; $i <= 4; $i++)
<div class="card mb-4">
    <div class="card-header">
        <h5 class="mb-0">Section {{ $i }}</h5>
    </div>
    <div class="card-body">
        <div class="form-group">
            {!! Form::label('title_'.$i, 'Title') !!}
            {!! Form::text('title_'.$i, $sections[$i]['title'] ?? '', ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('image_'.$i, 'Image') !!}
            @if(!empty($sections[$i]['image']))
                <div class="mb-2">
                    <img src="{{ asset($sections[$i]['image']) }}" style="max-width: 200px; max-height: 150px;" class="img-thumbnail">
                    <div class="form-check mt-1">
                        {!! Form::checkbox('remove_image_'.$i, 1, false, ['class' => 'form-check-input', 'id' => 'remove_image_'.$i]) !!}
                        {!! Form::label('remove_image_'.$i, 'Remove current image', ['class' => 'form-check-label']) !!}
                    </div>
                </div>
            @endif
            {!! Form::file('image_'.$i, ['class' => 'form-control-file']) !!}
            <small class="form-text text-muted">Recommended size: 800x400px or similar aspect ratio.</small>
        </div>

        <div class="form-group">
            {!! Form::label('description_'.$i, 'Description') !!}
            {!! Form::textarea('description_'.$i, $sections[$i]['description'] ?? '', ['class' => 'form-control wysiwyg', 'rows' => 6]) !!}
        </div>
    </div>
</div>
@endfor

<div class="text-right">
    {!! Form::submit('Save All Sections', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@endsection
