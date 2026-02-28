<?php namespace App\Services;

use App\Services\Service;

use DB;
use Notifications;
use Config;

use App\Models\User\User;
use App\Models\User\UserItem;
use App\Models\User\UserCurrency;
use App\Models\User\UserRecipe;

use App\Models\Recipe\Recipe;
use App\Models\Recipe\RecipeIngredient;
use App\Models\Recipe\RecipeReward;

use App\Models\Currency\Currency;

use App\Services\InventoryManager;
use App\Services\CurrencyManager;
use App\Services\ModifierItemService;

class RecipeManager extends Service
{
    private const CRAFTING_BLOCKED_ITEM_NAMES = [
        'the resonance',
    ];

/**********************************************************************************************

     RECIPE CRAFTING

 **********************************************************************************************/

    /**
     * Attempts to craft the specified recipe.
    *
    * @param  array                        $data
    * @param  \App\Models\Recipe\Recipe    $recipe
    * @param  \App\Models\User\User        $user
    * @return bool
    */
    public function craftRecipe($data, $recipe, $user)
    {
        DB::beginTransaction();

        try {
            // Check user has all limits
            if($recipe->is_limited)
            {
                foreach($recipe->limits as $limit)
                {
                    $limitType = $limit->limit_type;
                    $check = NULL;
                    switch($limitType)
                    {
                        case 'Item':
                            $check = UserItem::where('item_id', $limit->reward->id)->where('user_id', $user->id)->where('count', '>=', $limit->quantity)->first();
                            break;
                        case 'Currency':
                            $check = UserCurrency::where('currency_id', $limit->reward->id)->where('user_id', $user->id)->where('quantity', '>=', $limit->quantity)->first();
                            break;
                        case 'Recipe':
                            $check = UserRecipe::where('recipe_id', $limit->reward->id)->where('user_id', $user->id)->first();
                            break;
                    }

                    if(!$check) throw new \Exception('You require ' . $limit->reward->name . ' x '. $limit->quantity . ' to craft this');
                }
            }

            $ingredientQuantityOverrides = [];
            $catalystService = new ModifierItemService();
            $canUseCatalyst = $catalystService->hasModifierItem($user, 'Shinevine Catalyst');
            $selectedCatalystIngredientId = isset($data['catalyst_ingredient_id']) && $data['catalyst_ingredient_id'] ? (int)$data['catalyst_ingredient_id'] : null;
            if($selectedCatalystIngredientId) {
                if(!$canUseCatalyst) {
                    throw new \Exception('You do not have a Shinevine Catalyst to use.');
                }

                $selectedIngredient = $recipe->ingredients->firstWhere('id', $selectedCatalystIngredientId);
                if(!$selectedIngredient || $selectedIngredient->quantity <= 2) {
                    throw new \Exception('Invalid ingredient selected for Shinevine Catalyst.');
                }

                $ingredientQuantityOverrides[$selectedIngredient->id] = max(2, $selectedIngredient->quantity - 1);
                if(!$catalystService->consumeModifierCharge($user, 'Shinevine Catalyst', 1, 'Crafting Modifier Use', 'Shinevine Catalyst used on '.$recipe->name.' recipe')) {
                    throw new \Exception('Failed to consume Shinevine Catalyst.');
                }
            }

            // Check for sufficient currencies
            $user_currencies = $user->getCurrencies(true);
            $currency_ingredients = $recipe->ingredients->where('ingredient_type', 'Currency');
            foreach($currency_ingredients as $ingredient) {
                $currency = $user_currencies->where('id', $ingredient->data[0])->first();
                $requiredCurrency = isset($ingredientQuantityOverrides[$ingredient->id]) ? $ingredientQuantityOverrides[$ingredient->id] : $ingredient->quantity;
                if($currency->quantity < $requiredCurrency) throw new \Exception('Insufficient currency.');
            }

            // If there are non-Currency ingredients.
            if(isset($data['stack_id']))
            {
                // Fetch the stacks from DB
                $stacks = UserItem::with('item')->whereIn('id', $data['stack_id'])->get()->map(function($stack) use ($data) {
                    $stack->count = (int)$data['stack_quantity'][$stack->id];
                    return $stack;
                });

                $blockedSelected = $stacks->first(function($stack) {
                    return $this->isCraftingBlockedItemName(optional($stack->item)->name);
                });
                if($blockedSelected) {
                    throw new \Exception($blockedSelected->item->name.' cannot be used for crafting.');
                }

                // Check for sufficient ingredients
                $plucked = $this->pluckIngredients($user, $recipe, $stacks, $ingredientQuantityOverrides);
                if(!$plucked) throw new \Exception('Insufficient ingredients selected.');

                // Debit the ingredients
                $service = new InventoryManager();
                foreach($plucked as $id => $quantity) {
                    $stack = UserItem::find($id);
                    if(!$service->debitStack($user, 'Crafting', ['data' => 'Used in '.$recipe->name.' Recipe'], $stack, $quantity)) throw new \Exception('Items could not be removed.');
                }
            } else {
                $items = $recipe->ingredients->where('ingredient_type', 'Item');
                if (count($items) > 0) throw new \Exception('Insufficient ingredients selected.');
            }

            // Debit the currency
            $service = new CurrencyManager();
            foreach($currency_ingredients as $ingredient) {
                $requiredCurrency = isset($ingredientQuantityOverrides[$ingredient->id]) ? $ingredientQuantityOverrides[$ingredient->id] : $ingredient->quantity;
                if(!$service->debitCurrency($user, null, 'Crafting', 'Used in '.$recipe->name.' Recipe', Currency::find($ingredient->data[0]), $requiredCurrency)) throw new \Exception('Currency could not be debited.');
            }

            // Credit rewards
            $logType = 'Crafting Reward';
            $craftingData = [
                'data' => 'Received rewards from '. $recipe->displayName .' recipe'
            ];

            if(!fillUserAssets($recipe->rewardItems, null, $user, $logType, $craftingData)) throw new \Exception("Failed to distribute rewards to user.");

            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Plucks stacks from a given Collection of user items that meet the crafting requirements of a recipe
    * If there are insufficient ingredients, null is returned
    *
    * @param  \Illuminate\Database\Eloquent\Collection     $user_items
    * @param  \App\Models\Recipe\Recipe                    $recipe
    * @return array|null
    */
    public function pluckIngredients($user, $recipe, $selectedStacks = null, $ingredientQuantityOverrides = [])
    {
        $user_items = UserItem::with('item')->whereNull('deleted_at')->where('count', '>', '0')->where('user_id', $user->id)->get()
            ->filter(function($stack) {
                return !$this->isCraftingBlockedItemName(optional($stack->item)->name);
            })->values();
        $plucked = [];
        // foreach ingredient, search for a qualifying item, and select items up to the quantity, if insufficient continue onto the next entry
        foreach($recipe->ingredients->sortBy('ingredient_type') as $ingredient)
        {
            if($selectedStacks) {
                switch($ingredient->ingredient_type)
                {
                    case 'Item':
                        $stacks = $selectedStacks->where('item.id', $ingredient->data[0]);
                        break;
                    case 'MultiItem':
                        $stacks = $selectedStacks->whereIn('item.id', $ingredient->data);
                        break;
                    case 'Category':
                        $stacks = $selectedStacks->where('item.item_category_id', $ingredient->data[0]);
                        break;
                    case 'MultiCategory':
                        $stacks = $selectedStacks->whereIn('item.item_category_id', $ingredient->data);
                        break;
                    case 'Currency':
                        continue 2;
                }
            }
            else {
                switch($ingredient->ingredient_type)
                {
                    case 'Item':
                        $stacks = $user_items->where('item.id', $ingredient->data[0]);
                        break;
                    case 'MultiItem':
                        $stacks = $user_items->whereIn('item.id', $ingredient->data);
                        break;
                    case 'Category':
                        $stacks = $user_items->where('item.item_category_id', $ingredient->data[0]);
                        break;
                    case 'MultiCategory':
                        $stacks = $user_items->whereIn('item.item_category_id', $ingredient->data);
                        break;
                    case 'Currency':
                        continue 2;
                }
            }

            $stacks = $stacks->filter(function($stack) {
                return !$this->isCraftingBlockedItemName(optional($stack->item)->name);
            })->values();

            $quantity_left = isset($ingredientQuantityOverrides[$ingredient->id]) ? $ingredientQuantityOverrides[$ingredient->id] : $ingredient->quantity;
            while($quantity_left > 0 && count($stacks) > 0)
            {
                $stack = $stacks->pop();
                $plucked[$stack->id] = $stack->count >= $quantity_left ? $quantity_left : $stack->count;
                // Update the larger collection
                $user_items = $user_items->map(function($s) use($stack, $plucked) {
                    if($s->id == $stack->id) $s->count -= $plucked[$stack->id];
                    if($s->count) return $s;
                    else return null;
                })->filter();
                $quantity_left -= $plucked[$stack->id];
            }
            // If there are no more eligible ingredients but the requirement is not fulfilled, the pluck fails
            if($quantity_left > 0) return null;
        }
        return $plucked;
    }

    private function isCraftingBlockedItemName($name)
    {
        if(!$name) return false;
        return in_array(mb_strtolower(trim($name)), self::CRAFTING_BLOCKED_ITEM_NAMES, true);
    }
}
