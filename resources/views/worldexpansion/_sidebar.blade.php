<ul>
    <li class="sidebar-header"><a href="{{ url('world/gallery') }}" class="card-link">Gallery</a></li>
    <li class="sidebar-section">
        <div class="sidebar-section-header">Geography</div>
        <div class="sidebar-item"><a href="{{ url('world/locations') }}" class="{{ set_active('world/locations*') }}">All Locations</a></div>
    </li>
    <li class="sidebar-section">
        <div class="sidebar-section-header">History and Society</div>
        <div class="sidebar-item"><a href="{{ url('world/figures') }}" class="{{ set_active('world/figures*') }}">Figures</a></div>
        <div class="sidebar-item"><a href="{{ url('world/factions') }}" class="{{ set_active('world/factions*') }}">All Factions</a></div>
    </li>
    <li class="sidebar-section">
        <div class="sidebar-section-header">Nature</div>
        <div class="sidebar-item"><a href="{{ url('world/faunas') }}" class="{{ set_active('world/faunas*') }}">All Fauna</a></div>
        <div class="sidebar-item"><a href="{{ url('world/floras') }}" class="{{ set_active('world/floras*') }}">All Flora</a></div>
    </li>
</ul>
