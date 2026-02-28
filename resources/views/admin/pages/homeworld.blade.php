@extends('admin.layout')

@section('admin-title') Homeworld Gallery @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Homeworld Gallery' => 'admin/homeworld']) !!}

<h1>Homeworld Gallery</h1>
<p>Manage images displayed in the homeworld gallery.</p>

{{-- Add New Image Form --}}
<div class="card mb-4">
    <div class="card-header">
        <h5 class="mb-0">Add New Image</h5>
    </div>
    <div class="card-body">
        {!! Form::open(['url' => 'admin/homeworld/create', 'files' => true, 'method' => 'POST']) !!}

        <div class="form-group">
            {!! Form::label('image', 'Image') !!}
            {!! Form::file('image', ['class' => 'form-control-file', 'required']) !!}
            <small class="form-text text-muted">Recommended size: 600x400px or similar. Max 10MB. JPG, PNG, GIF, or WebP.</small>
        </div>

        <div class="form-group">
            {!! Form::label('alt_text', 'Alt Text') !!}
            {!! Form::text('alt_text', null, ['class' => 'form-control', 'placeholder' => 'Brief description for accessibility']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('caption', 'Caption') !!}
            {!! Form::textarea('caption', null, ['class' => 'form-control', 'rows' => 3, 'placeholder' => 'Optional caption to display below the image']) !!}
        </div>

        <button type="submit" class="btn btn-primary">
            <i class="fas fa-plus"></i> Add Image
        </button>

        {!! Form::close() !!}
    </div>
</div>

{{-- Images List --}}
@if($images && $images->count())
    <div class="card">
        <div class="card-header">
            <h5 class="mb-0">Gallery Images</h5>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-sm">
                    <thead>
                        <tr>
                            <th style="width: 120px;">Image</th>
                            <th>Alt Text</th>
                            <th>Caption</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="imagesSortable">
                        @foreach($images as $image)
                            <tr class="image-row" data-image-id="{{ $image->id }}">
                                <td>
                                    @if($image->image_url)
                                        <img src="{{ $image->image_url }}" style="max-width: 100px; max-height: 80px; object-fit: cover;" alt="image">
                                    @else
                                        <span class="text-muted">Image not found</span>
                                    @endif
                                </td>
                                <td>{{ $image->alt_text ?? '---' }}</td>
                                <td>{{ $image->caption ? Str::limit($image->caption, 50) : '---' }}</td>
                                <td>
                                    <button type="button" class="btn btn-sm btn-secondary edit-image" data-id="{{ $image->id }}" data-toggle="modal" data-target="#editModal">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    {!! Form::open(['url' => 'admin/homeworld/delete/'.$image->id, 'method' => 'POST', 'class' => 'd-inline']) !!}
                                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?');">
                                            <i class="fas fa-trash"></i> Delete
                                        </button>
                                    {!! Form::close() !!}
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@else
    <div class="alert alert-info">
        <i class="fas fa-info-circle"></i> No images in the gallery yet. Add one above!
    </div>
@endif

{{-- Edit Modal --}}
<div class="modal fade" id="editModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Image</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            {!! Form::open(['url' => '', 'method' => 'POST', 'id' => 'editForm']) !!}
            <div class="modal-body">
                <div class="form-group">
                    {!! Form::label('edit-alt-text', 'Alt Text') !!}
                    {!! Form::text('alt_text', null, ['id' => 'edit-alt-text', 'class' => 'form-control']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('edit-caption', 'Caption') !!}
                    {!! Form::textarea('caption', null, ['id' => 'edit-caption', 'class' => 'form-control', 'rows' => 3]) !!}
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>

@section('scripts')
@parent
<script>
$(document).ready(function() {
    $('.edit-image').click(function() {
        const imageId = $(this).data('id');
        const row = $(`tr[data-image-id="${imageId}"]`);
        const altText = row.find('td:eq(1)').text().trim();
        const caption = row.find('td:eq(2)').text().trim();
        
        $('#edit-alt-text').val(altText === '---' ? '' : altText);
        $('#edit-caption').val(caption === '---' ? '' : caption);
        $('#editForm').attr('action', `{{ url('admin/homeworld/edit') }}/${imageId}`);
    });
});
</script>
@endsection

@endsection
