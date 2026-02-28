@extends('admin.layout')

@section('admin-title') Featured Planet @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Featured Planets' => 'admin/featured-planets', ($featuredPlanet->id ? 'Edit' : 'Create').' Featured Planet' => $featuredPlanet->id ? 'admin/featured-planets/edit/'.$featuredPlanet->id : 'admin/featured-planets/create']) !!}

<h1>{{ $featuredPlanet->id ? 'Edit' : 'Create' }} Featured Planet
    @if($featuredPlanet->id)
        ({{ $featuredPlanet->name }})
        <a href="#" class="btn btn-danger float-right" onclick="event.preventDefault(); if(confirm('Delete this featured planet?')) { document.getElementById('deleteFeaturedPlanetForm').submit(); }">Delete</a>
    @endif
</h1>

{!! Form::open(['url' => $featuredPlanet->id ? 'admin/featured-planets/edit/'.$featuredPlanet->id : 'admin/featured-planets/create']) !!}

<div class="card mb-3 overflow-visible">
    <div class="card-header h3">Basic Information</div>
    <div class="card-body">
        <div class="form-group">
            {!! Form::label('Name') !!}
            {!! Form::text('name', $featuredPlanet->name, ['class' => 'form-control', 'required', 'id' => 'featuredPlanetName']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Slug') !!}
            {!! Form::text('slug', $featuredPlanet->slug, ['class' => 'form-control', 'id' => 'featuredPlanetSlug', 'placeholder' => 'auto-generated from name']) !!}
            <small class="form-text text-muted">Auto-generates when you tab out of the Name field.</small>
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Galaxy') !!}
                {!! Form::select('galaxy_id', ['0' => '-- Choose a Galaxy --'] + $galaxies, $featuredPlanet->galaxy_id, ['class' => 'form-control', 'required']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Rarity') !!}
                {!! Form::select('rarity', ['common' => 'Common', 'uncommon' => 'Uncommon', 'rare' => 'Rare', 'legendary' => 'Legendary'], $featuredPlanet->rarity, ['class' => 'form-control', 'required']) !!}
            </div>
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('planet_id', 'Linked Planet (Optional)') !!}
                {!! Form::select('planet_id', ['0' => '-- Select a Planet --'] + $planets, $featuredPlanet->planet_id, ['class' => 'form-control selectize']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('loot_table_id', 'Featured Loot Table (Optional)') !!}
                {!! Form::select('loot_table_id', ['0' => '-- Select a Loot Table --'] + $lootTables, $featuredPlanet->loot_table_id, ['class' => 'form-control selectize']) !!}
            </div>
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Type') !!}
                {!! Form::text('type', $featuredPlanet->type, ['class' => 'form-control', 'placeholder' => 'e.g., Terrestrial, Gas Giant']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Risk Level') !!}
                {!! Form::text('risk_level', $featuredPlanet->risk_level, ['class' => 'form-control']) !!}
            </div>
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('start_at', 'Started (Optional)') !!}
                {!! Form::text('start_at', $featuredPlanet->start_at ? $featuredPlanet->start_at->format('Y-m-d H:i:s') : null, ['class' => 'form-control datepicker']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('end_at', 'Ends (Optional)') !!}
                {!! Form::text('end_at', $featuredPlanet->end_at ? $featuredPlanet->end_at->format('Y-m-d H:i:s') : null, ['class' => 'form-control datepicker']) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('Theme (Optional)') !!}
            {!! Form::text('theme', $featuredPlanet->theme, ['class' => 'form-control', 'placeholder' => 'e.g., Desert, Ocean, Volcanic']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Description (Optional)') !!}
            {!! Form::textarea('description', $featuredPlanet->description, ['class' => 'form-control wysiwyg', 'rows' => 6]) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Materials found on this planet (Optional)') !!}
            {!! Form::select('material_item_ids[]', $items, $selectedMaterials, ['class' => 'form-control selectize', 'multiple', 'placeholder' => 'Select items']) !!}
        </div>

        <div class="form-check">
            {!! Form::checkbox('is_active', 1, $featuredPlanet->id ? $featuredPlanet->is_active : 1, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Inactive', 'data-on' => 'Active']) !!}
            {!! Form::label('is_active', 'Active Featured Planet', ['class' => 'form-check-label']) !!}
        </div>
    </div>
</div>

<div class="text-right">
    {!! Form::submit($featuredPlanet->id ? 'Edit Featured Planet' : 'Create Featured Planet', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@if($featuredPlanet->id)
<form method="POST" id="deleteFeaturedPlanetForm" action="{{ url('admin/featured-planets/delete/'.$featuredPlanet->id) }}" style="display:none;">
    @csrf
</form>
@endif

@endsection

@section('scripts')
@parent
<script>
    $(document).ready(function() {
        $('.selectize').selectize();
        $('.datepicker').datetimepicker({
            dateFormat: "yy-mm-dd",
            timeFormat: "HH:mm:ss"
        });

        document.getElementById('featuredPlanetName').addEventListener('blur', function() {
            var name = this.value;
            var slug = name
                .toLowerCase()
                .trim()
                .replace(/[^\w\s-]/g, '')
                .replace(/[\s_]+/g, '-')
                .replace(/^-+|-+$/g, '');
            if (slug) {
                document.getElementById('featuredPlanetSlug').value = slug;
            }
        });
    });
</script>
@endsection
