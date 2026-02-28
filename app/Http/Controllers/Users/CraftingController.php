<?php

namespace App\Http\Controllers\Users;

use DB;
use Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Recipe\Recipe;
use App\Models\User\UserRecipe;
use App\Models\Item\ItemCategory;
use App\Models\Item\Item;
use App\Models\User\User;
use App\Models\User\UserItem;
use App\Models\Currency\Currency;

use App\Services\RecipeService;
use App\Services\RecipeManager;
use App\Services\ModifierItemService;

class CraftingController extends Controller
{
    private const CRAFTING_BLOCKED_ITEM_NAMES = [
        'the resonance',
    ];

    /*
    |--------------------------------------------------------------------------
    | Crafting Controller
    |--------------------------------------------------------------------------
    |
    | Handles viewing the user's available and locked recipes, as well as their usage.
    |
    */

    /**
     * Shows the user's trades.
     *
     * @param  string  $type
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getIndex(Request $request)
    {
        return view('home.crafting.index', [
            'default' => Recipe::where('needs_unlocking','0')->get(),
        ]);
    }

    /**
     * Shows a recipe's crafting modal.
     *
     * @param  integer  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getCraftRecipe(RecipeManager $service, $id)
    {
        $recipe = Recipe::find($id);
        $selected = [];
        $hasSufficientIngredients = false;
        $catalystOptions = [];

        if(!$recipe || !Auth::user()) abort(404);

        $this->consolidateUserStacksForCrafting(Auth::user()->id);

        // foreach ingredient, search for a qualifying item in the users inv, and select items up to the quantity, if insufficient continue onto the next entry
        // until there are no more eligible items, then proceed to the next item
        $selected = $service->pluckIngredients(Auth::user(), $recipe);
        $hasSufficientIngredients = $recipe->onlyCurrency || $selected !== null;
        $selected = $selected ?: [];

        $modifierService = new ModifierItemService();
        if($modifierService->hasModifierItem(Auth::user(), 'Shinevine Catalyst')) {
            foreach($recipe->ingredients->where('quantity', '>', 2) as $ingredient) {
                $catalystOptions[$ingredient->id] = $this->getIngredientLabel($ingredient);
            }
        }

        $inventory = UserItem::with('item')
            ->whereNull('deleted_at')
            ->where('count', '>', '0')
            ->where('user_id', Auth::user()->id)
            ->get()
            ->filter(function($stack) {
                return !$this->isCraftingBlockedItemName(optional($stack->item)->name);
            })
            ->values();

        $itemFilter = Item::orderBy('name')->get()->filter(function($item) {
            return !$this->isCraftingBlockedItemName($item->name);
        })->keyBy('id');

        return view('home.crafting._modal_craft', [
            'recipe' => $recipe,
            'categories' => ItemCategory::orderBy('sort', 'DESC')->get(),
            'item_filter' => $itemFilter,
            'inventory' => $inventory,
            'page' => 'craft',
            'selected' => $selected,
            'hasSufficientIngredients' => $hasSufficientIngredients,
            'catalystOptions' => $catalystOptions,
        ]);
    }

    /**
     * Crafts a recipe
     *
     * @param  integer  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function postCraftRecipe(Request $request, RecipeManager $service, $id)
    {
        $recipe = Recipe::find($id);
        if(!$recipe) abort(404);

        if($service->craftRecipe($request->only(['stack_id', 'stack_quantity', 'catalyst_ingredient_id']), $recipe, Auth::user())) {
            flash('Recipe crafted successfully.')->success();
            if($request->filled('catalyst_ingredient_id')) {
                flash('1 Use consumed for Shinevine Catalyst')->success();
            }
        }
        else {
            $errors = $service->errors()->getMessages();
            if(isset($errors['error']) && count($errors['error'])) {
                foreach($errors['error'] as $error) flash($error)->error();
            }
            else {
                flash('Could not craft this recipe. Please ensure you have all required ingredients selected.')->error();
            }
        }
        return redirect()->back();
    }

    private function getIngredientLabel($ingredient)
    {
        switch($ingredient->ingredient_type) {
            case 'Item':
                return $ingredient->ingredient->name . ' (x' . $ingredient->quantity . ')';
            case 'MultiItem':
                return 'Any listed item (x' . $ingredient->quantity . ')';
            case 'Category':
                return $ingredient->ingredient->name . ' category (x' . $ingredient->quantity . ')';
            case 'MultiCategory':
                return 'Any listed category item (x' . $ingredient->quantity . ')';
            case 'Currency':
                return $ingredient->ingredient->name . ' (x' . $ingredient->quantity . ')';
            default:
                return 'Ingredient #' . $ingredient->id . ' (x' . $ingredient->quantity . ')';
        }
    }

    private function isCraftingBlockedItemName($name)
    {
        if(!$name) return false;
        return in_array(mb_strtolower(trim($name)), self::CRAFTING_BLOCKED_ITEM_NAMES, true);
    }

    private function consolidateUserStacksForCrafting($userId)
    {
        DB::transaction(function() use ($userId) {
            $stacks = UserItem::where('user_id', $userId)
                ->whereNull('deleted_at')
                ->where('count', '>', 0)
                ->get();

            $grouped = $stacks->groupBy(function($stack) {
                return $stack->item_id.'|'.json_encode($this->normalizeUserStackData($stack->data));
            });

            foreach($grouped as $group) {
                if($group->count() <= 1) continue;

                $primary = $group->first();
                $totalCount = $group->sum('count');
                $totalTradeCount = $group->sum('trade_count');
                $totalUpdateCount = $group->sum('update_count');
                $totalSubmissionCount = $group->sum('submission_count');

                $primary->count = $totalCount;
                $primary->trade_count = $totalTradeCount;
                $primary->update_count = $totalUpdateCount;
                $primary->submission_count = $totalSubmissionCount;
                $primary->data = json_encode($this->normalizeUserStackData($primary->data));
                $primary->save();

                foreach($group->skip(1) as $duplicate) {
                    $duplicate->delete();
                }
            }
        });
    }

    private function normalizeUserStackData($data)
    {
        if(!is_array($data)) $data = [];

        if(isset($data['data'])) unset($data['data']);

        foreach($data as $key => $value) {
            if($value === null || $value === '') unset($data[$key]);
        }

        ksort($data);

        return $data;
    }

}
