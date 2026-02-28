<div class="row">
    <div class="col-lg-3 col-4"><h5>Owner</h5></div>
    <div class="col-lg-9 col-8">{!! $character->displayOwner !!}</div>
</div>
@if(!$character->is_myo_slot)
    <div class="row">
        <div class="col-lg-3 col-4"><h5>Category</h5></div>
        <div class="col-lg-9 col-8">{!! $character->category->displayName !!}</div>
    </div>
@endif
<div class="row">
    <div class="col-lg-3 col-4"><h5 class="mb-0">Created</h5></div>
    <div class="col-lg-9 col-8">{!! format_date($character->created_at) !!}</div>
</div>

@php
    // Get reputation currency
    $reputationCurrency = \App\Models\Currency\Currency::where('name', 'Reputation')->where('is_character_owned', 1)->first();
    $reputation = 0;
    if($reputationCurrency) {
        $charCurrency = \App\Models\Character\CharacterCurrency::where('character_id', $character->id)->where('currency_id', $reputationCurrency->id)->first();
        $reputation = $charCurrency ? $charCurrency->quantity : 0;
    }
    
    // Get available factions for selection
    $availableFactions = \App\Models\WorldExpansion\Faction::where('is_character_faction', 1)->where('is_active', 1)->orderBy('name')->pluck('name', 'id');
    
    // Check if current user is owner
    $isOwner = Auth::check() && $character->user_id == Auth::user()->id;
    
    // Get faction rank and bonuses
    $factionRank = null;
    $factionBonus = '';
    if($character->faction_id && $character->faction) {
        $factionBonusService = new \App\Services\FactionBonusService;
        $factionRank = $factionBonusService->getCharacterFactionRank($character);
        $factionBonus = $factionBonusService->getBonusDescription($character);
    }
@endphp

<hr />

{{-- Reputation Display --}}
<div class="row">
    <div class="col-lg-3 col-4"><h5>Reputation</h5></div>
    <div class="col-lg-9 col-8">
        <span style="color: #00ff88; font-weight: bold;">{{ $reputation }} REP</span>
    </div>
</div>

{{-- Faction Display/Selection --}}
<div class="row">
    <div class="col-lg-3 col-4"><h5>Faction</h5></div>
    <div class="col-lg-9 col-8">
        @if($character->faction_id && $character->faction)
            <a href="{{ $character->faction->url }}">{!! $character->faction->displayName !!}</a>
            @if($factionRank)
                <br><small class="text-muted">Rank: <strong style="color: #00ff88;">{{ $factionRank->name }}</strong></small>
                @if($factionBonus)
                    <br><small class="text-info"><i class="fas fa-star"></i> {{ $factionBonus }}</small>
                @endif
            @endif
        @elseif($isOwner && $availableFactions->count() > 0)
            <button type="button" class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#factionModal">
                <i class="fas fa-flag"></i> Choose Faction
            </button>
            <small class="text-muted d-block mt-1">Warning: This choice is permanent!</small>
        @else
            <span class="text-muted">None</span>
        @endif
    </div>
</div>

<hr />

<h5><i class="text-{{ $character->is_giftable ? 'success far fa-circle' : 'danger fas fa-times'  }} fa-fw mr-2"></i> {{ $character->is_giftable ? 'Can' : 'Cannot'  }} be gifted</h5>
<h5><i class="text-{{ $character->is_tradeable ? 'success far fa-circle' : 'danger fas fa-times'  }} fa-fw mr-2"></i> {{ $character->is_tradeable ? 'Can' : 'Cannot'  }} be traded</h5>
<h5><i class="text-{{ $character->is_sellable ? 'success far fa-circle' : 'danger fas fa-times'  }} fa-fw mr-2"></i> {{ $character->is_sellable ? 'Can' : 'Cannot'  }} be sold</h5>
<div class="row">
    <div class="col-lg-3 col-4"><h5>Sale Value</h5></div>
    <div class="col-lg-9 col-8">{{ Config::get('lorekeeper.settings.currency_symbol') }}{{ $character->sale_value }}</div>
</div>
@if($character->transferrable_at && $character->transferrable_at->isFuture())
    <div class="row">
        <div class="col-lg-3 col-4"><h5>Cooldown</h5></div>
        <div class="col-lg-9 col-8">Cannot be transferred until {!! format_date($character->transferrable_at) !!}</div>
    </div>
@endif
@if(Auth::check() && Auth::user()->hasPower('manage_characters'))
    <div class="mt-3">
        <a href="#" class="btn btn-outline-info btn-sm edit-stats" data-{{ $character->is_myo_slot ? 'id' : 'slug' }}="{{ $character->is_myo_slot ? $character->id : $character->slug }}"><i class="fas fa-cog"></i> Edit</a>
    </div>
@endif

{{-- Faction Selection Modal --}}
@if($isOwner && !$character->faction_id && $availableFactions->count() > 0)
<div class="modal fade" id="factionModal" tabindex="-1" role="dialog" aria-labelledby="factionModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="background: #0a1428; border: 2px solid #00ff88;">
            <div class="modal-header" style="border-bottom-color: #00ff88;">
                <h5 class="modal-title" id="factionModalLabel" style="color: #00ff88;">Choose Your Faction</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color: #00ff88;">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            {!! Form::open(['url' => 'character/'.$character->slug.'/faction']) !!}
            <div class="modal-body">
                <div class="alert alert-warning" style="background: rgba(255, 193, 7, 0.2); border-color: #ffc107; color: #ffc107;">
                    <strong><i class="fas fa-exclamation-triangle"></i> Warning!</strong><br>
                    This choice is <strong>permanent</strong> and cannot be changed once selected.
                </div>
                <div class="form-group">
                    {!! Form::label('faction_id', 'Select Faction') !!}
                    {!! Form::select('faction_id', $availableFactions, null, ['class' => 'form-control', 'placeholder' => 'Choose a faction...', 'required']) !!}
                </div>
            </div>
            <div class="modal-footer" style="border-top-color: #00ff88;">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure? This choice is PERMANENT and cannot be changed!');">
                    <i class="fas fa-flag"></i> Confirm Faction
                </button>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endif
