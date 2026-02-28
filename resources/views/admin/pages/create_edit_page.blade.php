@extends('admin.layout')

@section('admin-title') Pages @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Pages' => 'admin/pages', ($page->id ? 'Edit' : 'Create').' Page' => $page->id ? 'admin/pages/edit/'.$page->id : 'admin/pages/create']) !!}

<h1>{{ $page->id ? 'Edit' : 'Create' }} Page
    @if($page->id && !Config::get('lorekeeper.text_pages.'.$page->key))
        <a href="#" class="btn btn-danger float-right delete-page-button">Delete Page</a>
    @endif
    @if($page->id)
        <a href="{{ $page->url }}" class="btn btn-info float-right mr-md-2">View Page</a>
    @endif
</h1>

{!! Form::open(['url' => $page->id ? 'admin/pages/edit/'.$page->id : 'admin/pages/create', 'files' => true]) !!}

<h3>Basic Information</h3>

<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            {!! Form::label('Title') !!}
            {!! Form::text('title', $page->title, ['class' => 'form-control']) !!}
        </div>
    </div>

    <div class="col-md-6">
        <div class="form-group">
            {!! Form::label('Key') !!} {!! add_help('This is a unique name used to form the URL of the page. Only alphanumeric characters, dash and underscore (no spaces) can be used.') !!}
            {!! Form::text('key', $page->key, ['class' => 'form-control', 'id' => 'page-key']) !!}
        </div>
    </div>
</div>

<div class="form-group">
    {!! Form::label('Description') !!} {!! add_help('A brief description that will appear below the page title.') !!}
    {!! Form::text('description', $page->description, ['class' => 'form-control', 'maxlength' => '500']) !!}
</div>

<div class="form-group">
    {!! Form::label('Page Content') !!}
    {!! Form::textarea('text', $page->text, ['class' => 'form-control wysiwyg']) !!}
</div>

@php
    $pageKey = strtolower((string) $page->key);
    $oldKey = strtolower((string) old('key', ''));
    $showHomeworldImages = $pageKey === 'homeworld' || $oldKey === 'homeworld';
@endphp

<div id="homeworld-image-manager" class="{{ $showHomeworldImages ? '' : 'd-none' }}">
    <h3>Homeworld Images</h3>
    <p class="text-muted mb-3">Add or remove images for the Homeworld page. The gallery must always contain 1 to 5 images.</p>

    @if($homeworldImages->count())
        <div class="row mb-3">
            @foreach($homeworldImages as $image)
                <div class="col-md-4 mb-3">
                    <div class="card h-100">
                        @if($image->image_url)
                            <img src="{{ $image->image_url }}" class="card-img-top" style="max-height: 180px; object-fit: cover;" alt="Homeworld image">
                        @endif
                        <div class="card-body p-2">
                            <div class="form-check">
                                {!! Form::checkbox('remove_homeworld_images[]', $image->id, false, ['id' => 'remove_homeworld_image_'.$image->id, 'class' => 'form-check-input']) !!}
                                {!! Form::label('remove_homeworld_image_'.$image->id, 'Remove this image', ['class' => 'form-check-label']) !!}
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif

    <div class="form-group">
        {!! Form::label('homeworld_images[]', 'Add Images (up to 5 total)') !!}
        {!! Form::file('homeworld_images[]', ['class' => 'form-control-file', 'multiple' => true, 'accept' => 'image/*']) !!}
        <small class="form-text text-muted">Accepted formats: JPG, PNG, GIF, WEBP. Max 10MB per image.</small>
        @if($errors->has('homeworld_images'))
            <div class="text-danger mt-2">{{ $errors->first('homeworld_images') }}</div>
        @endif
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <div class="form-group">
            {!! Form::checkbox('is_visible', 1, $page->id ? $page->is_visible : 1, ['class' => 'form-check-input', 'data-toggle' => 'toggle']) !!}
            {!! Form::label('is_visible', 'Is Viewable', ['class' => 'form-check-label ml-3']) !!} {!! add_help('If this is turned off, users will not be able to view the page even if they have the link to it.') !!}
        </div>
    </div>

    <div class="col-md-4">
        <div class="form-group">
            {!! Form::checkbox('can_comment', 1, $page->id ? $page->can_comment : 0, ['class' => 'form-check-input', 'data-toggle' => 'toggle']) !!}
            {!! Form::label('can_comment', 'Commentable', ['class' => 'form-check-label ml-3']) !!} {!! add_help('If this is turned on, users will be able to comment on the page.') !!}
        </div>
    </div>
</div>

<div class="text-right">
    {!! Form::submit($page->id ? 'Edit' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@endsection

@section('scripts')
@parent
<script>
$( document ).ready(function() {
    function toggleHomeworldImageManager() {
        const currentKey = ($('#page-key').val() || '').toLowerCase().trim();
        if(currentKey === 'homeworld') {
            $('#homeworld-image-manager').removeClass('d-none');
        }
        else {
            $('#homeworld-image-manager').addClass('d-none');
        }
    }

    toggleHomeworldImageManager();
    $('#page-key').on('input change', toggleHomeworldImageManager);

    $('.delete-page-button').on('click', function(e) {
        e.preventDefault();
        loadModal("{{ url('admin/pages/delete') }}/{{ $page->id }}", 'Delete Page');
    });
});

</script>
@endsection
