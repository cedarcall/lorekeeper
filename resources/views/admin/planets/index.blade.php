@extends('admin.layout')

@section('admin-title') Planets @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Planets' => 'admin/planets']) !!}

<h1>Planets</h1>

<div class="text-right mb-3">
    <a class="btn btn-primary" href="{{ url('admin/planets/create') }}"><i class="fas fa-plus mr-2"></i> Create New Planet</a>
</div>

@if(!count($planets))
    <p>No planets found.</p>
@else
    <div class="row">
        @foreach($planets as $planet)
            <div class="col-md-6 col-lg-4 mb-3">
                <div class="card" style="background: rgba(10, 20, 40, 0.6); border: 1px solid #00ccff;">
                    <div class="card-body">
                        <h5 class="card-title">{{ $planet->name }}</h5>
                        <p class="card-text text-muted">
                            @if($planet->galaxy) Galaxy: {{ $planet->galaxy->name }}<br> @endif
                            Type: {{ ucfirst($planet->type) }}<br>
                            Rarity: <span class="badge badge-{{ $planet->rarity == 'legendary' ? 'warning' : ($planet->rarity == 'rare' ? 'info' : 'secondary') }}">{{ ucfirst($planet->rarity) }}</span><br>
                            @if($planet->discoverer)
                                Discovered by: {{ $planet->discoverer->name }}<br>
                            @else
                                Status: <span class="badge badge-secondary">Not Discovered Yet</span>
                            @endif
                        </p>
                        <div class="btn-group" role="group">
                            <a href="{{ url('admin/planets/edit/'.$planet->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Edit</a>
                            <button type="button" class="btn btn-sm btn-danger delete-planet-btn" data-planet-id="{{ $planet->id }}" data-planet-name="{{ $planet->name }}"><i class="fas fa-trash"></i> Delete</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    {{ $planets->render() }}
@endif

<!-- Delete Modal -->
<div id="deletePlanetModal" class="modal" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.7); z-index: 1050;">
    <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background: #0a1428; padding: 0; border-radius: 4px; min-width: 400px; z-index: 1051; border: 1px solid #00ccff;">
        <div style="background: rgba(0, 204, 255, 0.1); padding: 15px 20px; border-bottom: 1px solid #00ccff; border-radius: 4px 4px 0 0;">
            <h5 style="margin: 0; display: flex; justify-content: space-between; align-items: center; color: #00ccff;">
                <span>DELETE PLANET</span>
                <span id="closeModal" style="cursor: pointer; font-size: 24px; line-height: 1; color: #00ccff;">&times;</span>
            </h5>
        </div>
        <form method="POST" id="deletePlanetForm">
            @csrf
            <div style="padding: 20px; color: #ccc;">
                Are you sure you want to delete <strong id="planetToDelete" style="color: #00ccff;"></strong>? This action cannot be undone.
            </div>
            <div style="padding: 15px 20px; border-top: 1px solid #00ccff; background: rgba(0, 204, 255, 0.05); display: flex; justify-content: flex-end; gap: 10px; border-radius: 0 0 4px 4px;">
                <button type="button" id="cancelDelete" class="btn" style="padding: 6px 16px; background: #1a3a4a; color: #00ccff; border: 1px solid #00ccff; cursor: pointer; border-radius: 3px;">Cancel</button>
                <button type="submit" class="btn btn-danger" style="padding: 6px 16px; background: #dc3545; color: white; border: none; cursor: pointer; border-radius: 3px;">Delete</button>
            </div>
        </form>
    </div>
</div>

<script>
    const modal = document.getElementById('deletePlanetModal');
    const closeBtn = document.getElementById('closeModal');
    const cancelBtn = document.getElementById('cancelDelete');
    
    function hideModal() {
        modal.style.display = 'none';
    }
    
    function showModal() {
        modal.style.display = 'block';
    }
    
    closeBtn.addEventListener('click', hideModal);
    cancelBtn.addEventListener('click', hideModal);
    
    // Close modal when clicking outside of it
    modal.addEventListener('click', function(e) {
        if (e.target === modal) {
            hideModal();
        }
    });
    
    // Handle delete button clicks
    document.querySelectorAll('.delete-planet-btn').forEach(btn => {
        btn.addEventListener('click', function() {
            const planetId = this.getAttribute('data-planet-id');
            const planetName = this.getAttribute('data-planet-name');
            
            // Update modal content
            document.getElementById('planetToDelete').textContent = planetName;
            
            // Update form action
            const form = document.getElementById('deletePlanetForm');
            form.setAttribute('action', '{{ url("admin/planets/delete") }}/' + planetId);
            
            // Show modal
            showModal();
        });
    });
</script>
@endsection