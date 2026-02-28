@if(!$recipe)
    <div class="text-center">Invalid recipe selected.</div>
@else
    @if($recipe->imageUrl)
        <div class="text-center">
            <div class="mb-3"><img class="recipe-image" src="{{ $recipe->imageUrl }}"/></div>
        </div>
    @endif
    <h3>Recipe Details <a class="small inventory-collapse-toggle collapse-toggle" href="#recipeDetails" data-toggle="collapse">Show</a></h3>
    <hr>
    <div class="collapse show" id="recipeDetails">
        <div class="row">
            @if($recipe->is_limited)
                <div class="col-md-12">
                    <h5>Requirements</h5>

                    <div class="alert alert-warning">
                        <?php
                        $limits = [];
                        foreach($recipe->limits as $limit)
                        {
                        $name = $limit->reward->name;
                        $quantity = $limit->quantity > 1 ? $limit->quantity . ' ' : '';
                        $limits[] = $quantity . $name;
                        }
                        echo implode(", ", $limits);
                        ?>
                    </div>
                </div>
            @endif
            <div class="col-md-6">
                <h5>Ingredients</h5>
                @foreach($recipe->ingredients as $ingredient)
                    <div class="alert alert-secondary">
                        @include('home.crafting._recipe_ingredient_entry', ['ingredient' => $ingredient])
                    </div>
                @endforeach
            </div>
            <div class="col-md-6">
                <h5>Rewards</h5>
                @foreach($recipe->reward_items as $type)
                    @foreach($type as $item)
                        <div class="alert alert-secondary">
                            @include('home.crafting._recipe_reward_entry', ['reward' => $item])
                        </div>
                    @endforeach
                @endforeach
            </div>
        </div>
    </div>
    {!! Form::open(['url' => 'crafting/craft/'.$recipe->id]) !!}
        @if(isset($catalystOptions) && count($catalystOptions))
            <div class="alert alert-info">
                <p class="mb-2"><strong>Shinevine Catalyst</strong> (optional): reduce one ingredient cost by 1 (minimum 2).</p>
                {!! Form::select('catalyst_ingredient_id', [null => 'Do not use catalyst'] + $catalystOptions, null, ['class' => 'form-control']) !!}
            </div>
        @endif

        @if(isset($hasSufficientIngredients) && !$hasSufficientIngredients)
            <div class="alert alert-danger">You do not currently have all of the required recipe ingredients, but you can still select inventory and try crafting.</div>
        @endif

        @include('widgets._inventory_select', ['user' => Auth::user(), 'inventory' => $inventory, 'categories' => $categories, 'selected' => $selected, 'page' => $page])
        <div class="text-right">
            {!! Form::submit('Craft', ['class' => 'btn btn-primary']) !!}
        </div>
    {!! Form::close() !!}
@endif

@include('widgets._inventory_select_js')
<script>
    $(document).keydown(function(e) {
    var code = e.keyCode || e.which;
    if(code == 13)
        return false;
    });
</script>

