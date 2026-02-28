@extends('admin.layout')

@section('admin-title') Contract @endsection

@section('admin-content')
{!! breadcrumbs(['Admin Panel' => 'admin', 'Contracts' => 'admin/contracts', ($contract->id ? 'Edit' : 'Create').' Contract' => $contract->id ? 'admin/contracts/edit/'.$contract->id : 'admin/contracts/create']) !!}

<h1>{{ $contract->id ? 'Edit' : 'Create' }} Contract
    @if($contract->id)
        ({{ $contract->name }})
        <a href="#" class="btn btn-danger float-right delete-contract-button">Delete Contract</a>
    @endif
</h1>

{!! Form::open(['url' => $contract->id ? 'admin/contracts/edit/'.$contract->id : 'admin/contracts/create', 'files' => true]) !!}

<div class="card mb-3">
    <div class="card-header h3">Basic Information</div>
    <div class="card-body">
        <div class="form-group">
            {!! Form::label('Name') !!}
            {!! Form::text('name', $contract->name, ['class' => 'form-control']) !!}
        </div>

        <div class="row mx-0 px-0">
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('occur_start', 'Start Date (Optional)') !!}
                {!! Form::text('occur_start', $contract->occur_start, ['class' => 'form-control datepicker']) !!}
            </div>
            <div class="form-group col-md px-0 pr-md-1">
                {!! Form::label('occur_end', 'End Date (Optional)') !!} {!! add_help('If left blank but start date is set, this will be considered Ongoing.') !!}
                {!! Form::text('occur_end', $contract->occur_end, ['class' => 'form-control datepicker']) !!}
            </div>
        </div>

        <div class="form-group">
            {!! Form::label('Summary (Optional)') !!}
            {!! Form::text('summary', $contract->summary, ['class' => 'form-control']) !!}
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Images</div>
    <div class="card-body row">
        <div class="form-group col-md-6">
            @if($contract->thumb_extension)
                <a href="{{$contract->thumbUrl}}"  data-lightbox="entry" data-title="{{ $contract->name }}"><img src="{{$contract->thumbUrl}}" class="mw-100 float-left mr-3" style="max-height:125px"></a>
            @endif
            {!! Form::label('Thumbnail Image (Optional)') !!} {!! add_help('This thumbnail is used on the contract list.') !!}
            <div>{!! Form::file('thumb') !!}</div>
            <div class="text-muted">Recommended size: 200x200</div>
            @if(isset($contract->thumb_extension))
                <div class="form-check">
                    {!! Form::checkbox('remove_thumb', 1, false, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Leave Thumbnail As-Is', 'data-on' => 'Remove Thumbnail Image']) !!}
                </div>
            @endif
        </div>

        <div class="form-group col-md-6">
            @if($contract->image_extension)
                <a href="{{$contract->imageUrl}}"  data-lightbox="entry" data-title="{{ $contract->name }}"><img src="{{$contract->imageUrl}}" class="mw-100 float-left mr-3" style="max-height:125px"></a>
            @endif
            {!! Form::label('Contract Image (Optional)') !!} {!! add_help('This image is used on the contract page as a header.') !!}
            <div>{!! Form::file('image') !!}</div>
            <div class="text-muted">Recommended size: None (Choose a standard size for all contract header images.)</div>
            @if(isset($contract->image_extension))
                <div class="form-check">
                    {!! Form::checkbox('remove_image', 1, false, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'data-off' => 'Leave Header Image As-Is', 'data-on' => 'Remove Current Header Image']) !!}
                </div>
            @endif
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Contract Details</div>
    <div class="card-body">
        <div class="form-group">
            {!! Form::label('Planet (Optional)') !!} {!! add_help('Link this contract to a planet. The location will show "Unknown" until the planet is discovered/named, then it will display the planet\'s name.') !!}
            {!! Form::select('planet_id', $planets, $contract->planet_id, ['class' => 'form-control', 'placeholder' => 'Select Planet (or use text location below)']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Location Text (Optional)') !!} {!! add_help('Fallback text location if no planet is selected. If a planet is selected above, this field is ignored.') !!}
            {!! Form::text('location', $contract->location, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Max Claims (Optional)') !!} {!! add_help('Maximum number of times a user can claim this contract. Leave empty for unlimited.') !!}
            {!! Form::number('max_claims', $contract->max_claims, ['class' => 'form-control', 'min' => 1]) !!}
        </div>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Required Items</div>
    <div class="card-body">
        <div id="requiredItemsList">
            @if($contract->requiredItemsArray && count($contract->requiredItemsArray) > 0)
                @foreach($contract->requiredItemsArray as $index => $reqItem)
                    <div class="form-group required-item-row mb-2">
                        <div class="row">
                            <div class="col-md-6">
                                {!! Form::label('Item') !!}
                                {!! Form::select('required_item_ids[]', $items, $reqItem['item_id'], ['class' => 'form-control', 'placeholder' => 'Select Item']) !!}
                            </div>
                            <div class="col-md-4">
                                {!! Form::label('Quantity') !!}
                                {!! Form::number('required_item_quantities[]', $reqItem['quantity'], ['class' => 'form-control', 'min' => 1, 'placeholder' => 'Quantity']) !!}
                            </div>
                            <div class="col-md-2 d-flex align-items-end">
                                <button type="button" class="btn btn-danger remove-required-item">Remove</button>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
        <button type="button" class="btn btn-primary" id="addRequiredItem">Add Required Item</button>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Rewards</div>
    <div class="card-body">
        <div id="rewardsList">
            @if($contract->rewardsArray && count($contract->rewardsArray) > 0)
                @foreach($contract->rewardsArray as $index => $reward)
                    <div class="form-group reward-row mb-2">
                        <div class="row">
                            <div class="col-md-3">
                                {!! Form::label('Type') !!}
                                {!! Form::select('reward_type[]', ['item' => 'Item', 'currency' => 'Currency'], $reward['type'], ['class' => 'form-control reward-type', 'placeholder' => 'Select Type']) !!}
                            </div>
                            <div class="col-md-5">
                                {!! Form::label('Reward') !!}
                                @if($reward['type'] == 'item')
                                    {!! Form::select('reward_id[]', $items, $reward['id'], ['class' => 'form-control reward-select', 'placeholder' => 'Select Item']) !!}
                                @else
                                    {!! Form::select('reward_id[]', $currencies, $reward['id'], ['class' => 'form-control reward-select', 'placeholder' => 'Select Currency']) !!}
                                @endif
                            </div>
                            <div class="col-md-2">
                                {!! Form::label('Quantity') !!}
                                {!! Form::number('reward_quantity[]', $reward['quantity'], ['class' => 'form-control', 'min' => 1, 'placeholder' => 'Quantity']) !!}
                            </div>
                            <div class="col-md-2 d-flex align-items-end">
                                <button type="button" class="btn btn-danger remove-reward">Remove</button>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
        <button type="button" class="btn btn-primary" id="addReward">Add Reward</button>
    </div>
</div>

<div class="card mb-3">
    <div class="card-header h3">Randomization Settings</div>
    <div class="card-body">
        <p class="text-muted text-sm">These settings control whether this contract can be randomly unlocked via expeditions.</p>
        
        <div class="form-check mb-2">
            {!! Form::checkbox('is_randomizable', 1, $contract->is_randomizable ?? false, ['class' => 'form-check-input', 'data-toggle' => 'toggle', 'id' => 'is_randomizable', 'data-off' => 'Not Randomizable', 'data-on' => 'Can Be Unlocked']) !!}
            {!! Form::label('is_randomizable', 'Enable Random Unlocks', ['class' => 'form-check-label']) !!}
            {!! add_help('If enabled, this contract can randomly unlock for players who complete expeditions.') !!}
        </div>

        <div id="randomizationFields" style="{{ $contract->is_randomizable ? '' : 'display: none;' }}">
            <div class="form-group">
                {!! Form::label('unlock_contract_chance', 'Unlock Chance (%)') !!}
                {!! Form::number('unlock_contract_chance', $contract->unlock_contract_chance ?? 50, ['class' => 'form-control', 'min' => 0, 'max' => 100, 'step' => 1]) !!}
                <small class="text-muted">Percentage chance (0-100) this contract unlocks when a user completes an expedition. Default: 50%</small>
            </div>

            <div class="form-group">
                {!! Form::label('rarity_weight', 'Rarity Weight') !!}
                {!! Form::number('rarity_weight', $contract->rarity_weight ?? 1, ['class' => 'form-control', 'min' => 1, 'step' => 1]) !!}
                <small class="text-muted">Weight used for weighted randomization. Higher values = more likely to unlock. Default: 1</small>
            </div>
        </div>
    </div>
</div>

<div class="form-group">
    {!! Form::checkbox('is_active', 1, $contract->id ? $contract->is_active : 1, ['class' => 'form-check-input', 'data-toggle' => 'toggle']) !!}
    {!! Form::label('is_active', 'Set Active', ['class' => 'form-check-label ml-3']) !!} {!! add_help('If turned off, the contract will not be visible to regular users.') !!}
</div>

<div class="text-right">
    {!! Form::submit($contract->id ? 'Edit' : 'Create', ['class' => 'btn btn-primary']) !!}
</div>

{!! Form::close() !!}

@endsection

@section('scripts')
@parent
<script>
$( document ).ready(function() {
    $('.delete-contract-button').on('click', function(e) {
        e.preventDefault();
        loadModal("{{ url('admin/contracts/delete') }}/{{ $contract->id }}", 'Delete Contract');
    });
    $('.datepicker').datetimepicker({
        dateFormat: "yy-mm-dd",
        timeFormat: 'HH:mm:ss',
    });

    // Required Items
    $('#addRequiredItem').on('click', function() {
        var itemsOptions = '{!! addslashes(Form::select('required_item_ids[]', $items, null, ['class' => 'form-control', 'placeholder' => 'Select Item'])) !!}';
        var newItem = `
            <div class="form-group required-item-row mb-2">
                <div class="row">
                    <div class="col-md-6">
                        {!! Form::label('Item') !!}
                        ${itemsOptions}
                    </div>
                    <div class="col-md-4">
                        {!! Form::label('Quantity') !!}
                        {!! Form::number('required_item_quantities[]', null, ['class' => 'form-control', 'min' => 1, 'placeholder' => 'Quantity']) !!}
                    </div>
                    <div class="col-md-2 d-flex align-items-end">
                        <button type="button" class="btn btn-danger remove-required-item">Remove</button>
                    </div>
                </div>
            </div>
        `;
        $('#requiredItemsList').append(newItem);
    });

    $(document).on('click', '.remove-required-item', function() {
        $(this).closest('.required-item-row').remove();
    });

    // Rewards
    var itemsOptions = '{!! addslashes(Form::select('reward_id[]', $items, null, ['class' => 'form-control reward-select', 'placeholder' => 'Select Item'])) !!}';
    var currenciesOptions = '{!! addslashes(Form::select('reward_id[]', $currencies, null, ['class' => 'form-control reward-select', 'placeholder' => 'Select Currency'])) !!}';

    $('#addReward').on('click', function() {
        var newReward = `
            <div class="form-group reward-row mb-2">
                <div class="row">
                    <div class="col-md-3">
                        {!! Form::label('Type') !!}
                        {!! Form::select('reward_type[]', ['item' => 'Item', 'currency' => 'Currency'], null, ['class' => 'form-control reward-type', 'placeholder' => 'Select Type']) !!}
                    </div>
                    <div class="col-md-5">
                        {!! Form::label('Reward') !!}
                        <select class="form-control reward-select" name="reward_id[]">
                            <option value="">Select Type First</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        {!! Form::label('Quantity') !!}
                        {!! Form::number('reward_quantity[]', null, ['class' => 'form-control', 'min' => 1, 'placeholder' => 'Quantity']) !!}
                    </div>
                    <div class="col-md-2 d-flex align-items-end">
                        <button type="button" class="btn btn-danger remove-reward">Remove</button>
                    </div>
                </div>
            </div>
        `;
        $('#rewardsList').append(newReward);
    });

    $(document).on('change', '.reward-type', function() {
        var type = $(this).val();
        var $select = $(this).closest('.row').find('.reward-select');
        
        if (type === 'item') {
            $select.html(itemsOptions);
        } else if (type === 'currency') {
            $select.html(currenciesOptions);
        } else {
            $select.html('<option value="">Select Type First</option>');
        }
    });

    $(document).on('click', '.remove-reward', function() {
        $(this).closest('.reward-row').remove();
    });

    // Randomization toggle
    $('#is_randomizable').on('change', function() {
        if ($(this).is(':checked')) {
            $('#randomizationFields').slideDown();
        } else {
            $('#randomizationFields').slideUp();
        }
    });
});
</script>
@endsection
