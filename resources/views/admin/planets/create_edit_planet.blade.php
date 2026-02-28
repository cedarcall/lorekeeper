@extends('admin.layout')

@section('admin-title') Planet @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Planets' => 'admin/planets', ($planet->id ? 'Edit' : 'Create').' Planet' => $planet->id ? 'admin/planets/edit/'.$planet->id : 'admin/planets/create']) !!}

<h1>{{ $planet->id ? 'Edit' : 'Create' }} Planet
    @if($planet->id)
        ({{ $planet->name }})
        <a href="#" class="btn btn-danger float-right delete-planet-button">Delete Planet</a>
    @endif
</h1>

{!! Form::open(['url' => $planet->id ? 'admin/planets/edit/'.$planet->id : 'admin/planets/create', 'files' => true]) !!}

<div class="card mb-3">
    <div class="card-header h3">Basic Information</div>
    <div class="card-body">
        <div class="form-group">
            {!! Form::label('Name') !!}
            {!! Form::text('name', $planet->name, ['class' => 'form-control', 'required', 'id' => 'planetName']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Slug') !!}
            {!! Form::text('slug', $planet->slug, ['class' => 'form-control', 'id' => 'planetSlug', 'placeholder' => 'auto-generated from name']) !!}
            <small class="form-text text-muted">Auto-generates when you tab out of the Name field. Required to create the planet.</small>
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Galaxy') !!}
                {!! Form::select('galaxy_id', ['0' => '-- Choose a Galaxy --'] + $galaxies, $planet->galaxy_id, ['class' => 'form-control']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('Rarity') !!}
                {!! Form::select('rarity', ['common' => 'Common', 'uncommon' => 'Uncommon', 'rare' => 'Rare', 'legendary' => 'Legendary'], $planet->rarity, ['class' => 'form-control', 'required']) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('Description (Optional)') !!}
            {!! Form::textarea('description', $planet->description, ['class' => 'form-control wysiwyg', 'rows' => 4]) !!}
        </div>

        <div class="form-check">
            {!! Form::checkbox('is_active', 1, $planet->is_active, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Inactive', 'data-on' => 'Active']) !!}
            {!! Form::label('is_active', 'Active Planet', ['class' => 'form-check-label']) !!}
        </div>

        <hr>
        <h5>Hazards</h5>
        <div class="form-check mb-2">
            {!! Form::checkbox('has_hazard', 1, $planet->has_hazard, ['class' => 'form-check-input', 'id' => 'hasHazardToggle']) !!}
            {!! Form::label('has_hazard', 'This planet has a hazard', ['class' => 'form-check-label']) !!}
        </div>

        <div id="hazardFields" style="display: {{ $planet->has_hazard ? 'block' : 'none' }};">
            <div class="form-group">
                {!! Form::label('hazard_name', 'Hazard Name') !!}
                {!! Form::text('hazard_name', $planet->hazard_name, ['class' => 'form-control', 'placeholder' => 'e.g., Toxic Spore Storm']) !!}
            </div>
            <div class="form-group">
                {!! Form::label('hazard_penalty', 'Hazard Penalty Description') !!}
                {!! Form::textarea('hazard_penalty', $planet->hazard_penalty, ['class' => 'form-control', 'rows' => 2, 'placeholder' => 'Describe the hazard/penalty for expeditions.']) !!}
            </div>
            <div class="form-group">
                {!! Form::label('hidden_item_id', 'Hidden Hazard Item (Optional)') !!}
                {!! Form::select('hidden_item_id', ['' => 'None'] + $items, $planet->hidden_item_id, ['class' => 'form-control']) !!}
                <small class="form-text text-muted">Shown to players as hidden unless hazard is negated.</small>
            </div>
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Vital Information</div>
    <div class="card-body">
        <p class="text-muted mb-3">
            These 7 fields unlock progressively as users explore. Unlock timing scales with planet rarity:<br>
            <strong>Common (3 visits):</strong> ~2-3 fields per visit &bull;
            <strong>Uncommon (5):</strong> ~1-2 per visit &bull;
            <strong>Rare (8):</strong> ~1 per visit &bull;
            <strong>Legendary (12):</strong> spread across all visits
        </p>
        
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    {!! Form::label('weather', '1. Weather') !!}
                    {!! Form::text('weather', $planet->weather, ['class' => 'form-control', 'placeholder' => 'e.g., Stormy, Arid, Temperate']) !!}
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    {!! Form::label('flora_level', '2. Flora Level') !!}
                    {!! Form::text('flora_level', $planet->flora_level, ['class' => 'form-control', 'placeholder' => 'e.g., Abundant, Sparse, None']) !!}
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    {!! Form::label('fauna_level', '3. Fauna Level') !!}
                    {!! Form::text('fauna_level', $planet->fauna_level, ['class' => 'form-control', 'placeholder' => 'e.g., Diverse, Minimal, Hostile']) !!}
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    {!! Form::label('danger_level', '4. Danger Level') !!}
                    {!! Form::text('danger_level', $planet->danger_level, ['class' => 'form-control', 'placeholder' => 'e.g., Safe, Moderate, Extreme']) !!}
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    {!! Form::label('atmosphere', '5. Atmosphere') !!}
                    {!! Form::text('atmosphere', $planet->atmosphere, ['class' => 'form-control', 'placeholder' => 'e.g., Breathable, Toxic, Thin']) !!}
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    {!! Form::label('terrain', '6. Terrain') !!}
                    {!! Form::text('terrain', $planet->terrain, ['class' => 'form-control', 'placeholder' => 'e.g., Mountainous, Oceanic, Desert']) !!}
                </div>
            </div>
        </div>
        
        <div class="form-group">
            {!! Form::label('special_notes', '7. Special Notes') !!}
            {!! Form::textarea('special_notes', $planet->special_notes, ['class' => 'form-control', 'rows' => 2, 'placeholder' => 'Any additional information revealed after many visits']) !!}
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Reference Images & Color Palette</div>
    <div class="card-body">
        <p class="text-muted mb-3">Upload up to 5 reference images for artists to use when drawing content related to this planet.</p>
        
        <div class="row">
            @for($i = 1; $i <= 5; $i++)
                <div class="col-md-4 mb-3">
                    <div class="form-group">
                        {!! Form::label('ref_image_'.$i, 'Reference Image '.$i) !!}
                        @php 
                            $fieldName = 'ref_image_'.$i;
                            $imageUrl = $planet->getRefImageUrl($i);
                        @endphp
                        @if($imageUrl)
                            <div class="mb-2">
                                <img src="{{ $imageUrl }}" class="img-thumbnail" style="max-height: 100px;">
                                <div class="form-check mt-1">
                                    {!! Form::checkbox('remove_ref_image_'.$i, 1, false, ['class' => 'form-check-input']) !!}
                                    {!! Form::label('remove_ref_image_'.$i, 'Remove', ['class' => 'form-check-label text-danger']) !!}
                                </div>
                            </div>
                        @endif
                        {!! Form::file('ref_image_'.$i, ['class' => 'form-control-file']) !!}
                    </div>
                </div>
            @endfor
        </div>
        
        <div class="form-group mt-3">
            {!! Form::label('color_palette', 'Color Palette') !!} {!! add_help('Enter hex colors separated by commas (e.g., #FF5733, #33FF57, #3357FF)') !!}
            {!! Form::text('color_palette', $planet->color_palette ? implode(', ', $planet->color_palette) : '', ['class' => 'form-control', 'placeholder' => '#FF5733, #33FF57, #3357FF']) !!}
            @if($planet->color_palette && count($planet->color_palette) > 0)
                <div class="mt-2">
                    @foreach($planet->color_palette as $color)
                        <span style="display: inline-block; width: 30px; height: 30px; background-color: {{ $color }}; border: 1px solid #ccc; margin-right: 5px;" title="{{ $color }}"></span>
                    @endforeach
                </div>
            @endif
        </div>
    </div>
</div>

<div class="text-right">
    {!! Form::submit($planet->id ? 'Edit Planet' : 'Create Planet', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

<!-- Tiers Form - Only for editing existing planets -->
@if($planet->id)
<div class="card mb-3">
    <div class="card-header h3">Information Tiers</div>
    <div class="card-body">
        <p class="text-muted">Players progressively unlock information as they visit the planet. For Common planets: 3 tiers needed. Uncommon: 5 tiers. Rare: 8 tiers. Legendary: 12 tiers.</p>

        @if($planet->infoTiers()->count())
            <h6 style="color: #00ccff;">Existing Tiers</h6>
            <table class="table table-sm mb-4" style="color: #ccc;">
                <thead style="border-bottom: 2px solid #00ccff;">
                    <tr>
                        <th width="10%" style="color: #00ccff;">Tier</th>
                        <th style="color: #00ccff;">Type</th>
                        <th style="color: #00ccff;">Risk</th>
                        <th style="color: #00ccff;">Description</th>
                        <th width="8%"></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($planet->infoTiers()->orderBy('tier_number')->get() as $tier)
                        <tr>
                            <td><strong>{{ $tier->tier_number }}</strong></td>
                            <td>{{ $tier->info_data['type'] ?? '-' }}</td>
                            <td>{{ $tier->info_data['risk'] ?? '-' }}</td>
                            <td>{{ isset($tier->info_data['description']) ? substr($tier->info_data['description'], 0, 40) . (strlen($tier->info_data['description']) > 40 ? '...' : '') : '-' }}</td>
                            <td class="text-right">
                                <form method="POST" action="{{ url('admin/planets/'.$planet->id.'/delete-tier/'.$tier->id) }}" style="display:inline;">
                                    @csrf
                                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Delete this tier?');"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @else
            <p class="text-muted mb-4"><em>No tiers created yet.</em></p>
        @endif

        <h6>Add New Tier(s)</h6>
        {!! Form::open(['url' => 'admin/planets/'.$planet->id.'/add-tier', 'id' => 'tierForm']) !!}
        <div id="tierContainer">
            <div class="tier-row card card-body mb-2" data-tier-index="0">
                <div class="row">
                    <div class="col-md-2">
                        {!! Form::label('Tier Number') !!}
                        {!! Form::number('tiers[0][tier_number]', null, ['class' => 'form-control', 'min' => 1, 'max' => 12, 'placeholder' => '1-12']) !!}
                    </div>
                    <div class="col-md-3">
                        {!! Form::label('Type') !!}
                        {!! Form::text('tiers[0][info][type]', null, ['class' => 'form-control', 'placeholder' => 'e.g., Atmosphere, Biome']) !!}
                    </div>
                    <div class="col-md-3">
                        {!! Form::label('Risk Level') !!}
                        {!! Form::text('tiers[0][info][risk]', null, ['class' => 'form-control', 'placeholder' => 'e.g., Moderate']) !!}
                    </div>
                    <div class="col-md-4">
                        {!! Form::label('Description') !!}
                        {!! Form::text('tiers[0][info][description]', null, ['class' => 'form-control', 'placeholder' => 'Information revealed']) !!}
                    </div>
                </div>
                <button type="button" class="btn btn-sm btn-danger mt-2 remove-tier" style="display:none;">Remove Tier</button>
            </div>
        </div>
        
        <div class="mt-2 mb-3">
            <button type="button" class="btn btn-sm btn-secondary" id="addTierBtn">+ Add Another Tier</button>
        </div>
        
        <div class="text-right">
            {!! Form::submit('Save All Tiers', ['class' => 'btn btn-success']) !!}
        </div>
        {!! Form::close() !!}
    </div>
</div>
@else
<div class="card mb-3">
    <div class="card-header h3">Information Tiers</div>
    <div class="card-body">
        <p class="text-muted">Information tiers will be available after you create the planet. For Common planets: 3 tiers needed. Uncommon: 5 tiers. Rare: 8 tiers. Legendary: 12 tiers.</p>
    </div>
</div>
@endif

<!-- Delete Modal -->
<div id="deletePlanetModal" class="modal" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.7); z-index: 1050;">
    <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background: #0a1428; padding: 0; border-radius: 4px; min-width: 400px; z-index: 1051; border: 1px solid #00ccff;">
        <div style="background: rgba(0, 204, 255, 0.1); padding: 15px 20px; border-bottom: 1px solid #00ccff; border-radius: 4px 4px 0 0;">
            <h5 style="margin: 0; display: flex; justify-content: space-between; align-items: center; color: #00ccff;">
                <span>DELETE PLANET</span>
                <span id="closeDeleteModal" style="cursor: pointer; font-size: 24px; line-height: 1; color: #00ccff;">&times;</span>
            </h5>
        </div>
        <form method="POST" id="deletePlanetForm">
            @csrf
            <div style="padding: 20px; color: #ccc;">
                Are you sure you want to delete <strong>{{ $planet->name }}</strong>? This action cannot be undone.
            </div>
            <div style="padding: 15px 20px; border-top: 1px solid #00ccff; background: rgba(0, 204, 255, 0.05); display: flex; justify-content: flex-end; gap: 10px; border-radius: 0 0 4px 4px;">
                <button type="button" id="cancelDeleteBtn" class="btn" style="padding: 6px 16px; background: #1a3a4a; color: #00ccff; border: 1px solid #00ccff; cursor: pointer; border-radius: 3px;">Cancel</button>
                <button type="submit" class="btn btn-danger" style="padding: 6px 16px; background: #dc3545; color: white; border: none; cursor: pointer; border-radius: 3px;">Delete</button>
            </div>
        </form>
    </div>
</div>

<script>
    // Auto-generate slug from planet name - works on both create and edit
    document.getElementById('planetName').addEventListener('blur', function() {
        const name = this.value;
        const slug = name
            .toLowerCase()
            .trim()
            .replace(/[^\w\s-]/g, '')
            .replace(/[\s_]+/g, '-')
            .replace(/^-+|-+$/g, '');
        if (slug) {
            document.getElementById('planetSlug').value = slug;
        }
    });

    const hasHazardToggle = document.getElementById('hasHazardToggle');
    const hazardFields = document.getElementById('hazardFields');
    if (hasHazardToggle && hazardFields) {
        hasHazardToggle.addEventListener('change', function() {
            hazardFields.style.display = this.checked ? 'block' : 'none';
        });
    }

    @if($planet->id)
        // Delete modal handling
        const deleteModal = document.getElementById('deletePlanetModal');
        const closeDeleteBtn = document.getElementById('closeDeleteModal');
        const cancelDeleteBtn = document.getElementById('cancelDeleteBtn');
        const deleteForm = document.getElementById('deletePlanetForm');
        
        function hideDeleteModal() {
            deleteModal.style.display = 'none';
        }
        
        function showDeleteModal() {
            deleteModal.style.display = 'block';
        }
        
        closeDeleteBtn.addEventListener('click', hideDeleteModal);
        cancelDeleteBtn.addEventListener('click', hideDeleteModal);
        deleteModal.addEventListener('click', function(e) {
            if (e.target === deleteModal) hideDeleteModal();
        });
        
        document.querySelector('.delete-planet-button').addEventListener('click', function(e) {
            e.preventDefault();
            deleteForm.setAttribute('action', '{{ url("admin/planets/delete") }}/{{ $planet->id }}');
            showDeleteModal();
        });

        // Tier management JavaScript
        let tierCount = 1;
        
        document.getElementById('addTierBtn').addEventListener('click', function() {
            const container = document.getElementById('tierContainer');
            const newTier = container.querySelector('.tier-row').cloneNode(true);
            newTier.setAttribute('data-tier-index', tierCount);
            
            // Update all input names to new index
            newTier.querySelectorAll('input').forEach(input => {
                const name = input.getAttribute('name');
                input.setAttribute('name', name.replace(/\[\d+\]/g, (match) => {
                    return '[' + tierCount + ']';
                }));
                input.value = '';
            });
            
            // Show remove button
            newTier.querySelector('.remove-tier').style.display = 'inline-block';
            
            // Add remove event listener
            newTier.querySelector('.remove-tier').addEventListener('click', function() {
                newTier.remove();
            });
            
            container.appendChild(newTier);
            tierCount++;
        });
        
        // Add remove listeners to existing tier rows
        document.querySelectorAll('.tier-row .remove-tier').forEach(btn => {
            btn.addEventListener('click', function() {
                this.closest('.tier-row').remove();
            });
        });
    @endif
</script>
@endsection
