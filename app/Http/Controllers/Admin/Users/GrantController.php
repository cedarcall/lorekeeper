<?php

namespace App\Http\Controllers\Admin\Users;

use Auth;
use Config;
use Illuminate\Http\Request;

use App\Models\User\User;
use App\Models\Item\Item;
use App\Models\Award\Award;
use App\Models\Currency\Currency;

use App\Models\User\UserItem;
use App\Models\Character\CharacterItem;
use App\Models\Trade;
use App\Models\Character\CharacterDesignUpdate;
use App\Models\Submission\Submission;

use App\Models\Character\Character;
use App\Services\CurrencyManager;
use App\Services\InventoryManager;
use App\Services\AwardCaseManager;

use App\Http\Controllers\Controller;

class GrantController extends Controller
{
    /**
     * Show the currency grant page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getUserCurrency()
    {
        return view('admin.grants.user_currency', [
            'users' => User::orderBy('id')->pluck('name', 'id'),
            'userCurrencies' => Currency::where('is_user_owned', 1)->orderBy('sort_user', 'DESC')->pluck('name', 'id')
        ]);
    }

    /**
     * Grants or removes currency from multiple users.
     *
     * @param  \Illuminate\Http\Request      $request
     * @param  App\Services\CurrencyManager  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postUserCurrency(Request $request, CurrencyManager $service)
    {
        $data = $request->only(['names', 'currency_id', 'quantity', 'data']);
        if($service->grantUserCurrencies($data, Auth::user())) {
            flash('Currency granted successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Show the item grant page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getItems()
    {
        return view('admin.grants.items', [
            'users' => User::orderBy('id')->pluck('name', 'id'),
            'items' => Item::orderBy('name')->pluck('name', 'id')
        ]);
    }

    /**
     * Grants or removes items from multiple users.
     *
     * @param  \Illuminate\Http\Request        $request
     * @param  App\Services\InventoryManager  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postItems(Request $request, InventoryManager $service)
    {
        $data = $request->only(['names', 'item_ids', 'quantities', 'data', 'disallow_transfer', 'notes']);
        if($service->grantItems($data, Auth::user())) {
            flash('Items granted successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Show the award grant page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getAwards()
    {
        return view('admin.grants.awards', [
            'userOptions'           => User::orderBy('id')->pluck('name', 'id'),
            'userAwardOptions'      => Award::orderBy('name')->where('is_user_owned',1)->pluck('name', 'id'),
            'characterOptions'      => Character::myo(0)->orderBy('name')->get()->pluck('fullName', 'id'),
            'characterAwardOptions' => Award::orderBy('name')->where('is_character_owned',1)->pluck('name', 'id')
        ]);
    }

    /**
     * Grants or removes awards from multiple users.
     *
     * @param  \Illuminate\Http\Request        $request
     * @param  App\Services\AwardCaseManager  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postAwards(Request $request, AwardCaseManager $service)
    {
        $data = $request->only([
            'names', 'award_ids', 'quantities', 'data', 'disallow_transfer', 'notes',
            'character_names', 'character_award_ids', 'character_quantities',
        ]);
        if($service->grantAwards($data, Auth::user())) {
            flash(ucfirst(__('awards.awards')).' granted successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Show the character reputation grant page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getCharacterReputation()
    {
        return view('admin.grants.character_reputation', [
            'characters' => Character::myo(0)->orderBy('name')->get()->pluck('fullName', 'id')
        ]);
    }

    /**
     * Grants or removes reputation from multiple characters.
     *
     * @param  \Illuminate\Http\Request      $request
     * @param  App\Services\CurrencyManager  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postCharacterReputation(Request $request, CurrencyManager $service)
    {
        // Find the Reputation currency
        $reputationCurrency = Currency::where('name', 'Reputation')->where('is_character_owned', 1)->first();
        
        if(!$reputationCurrency) {
            flash('Reputation currency not found.')->error();
            return redirect()->back();
        }

        // Get character IDs
        $characterIds = $request->input('character_ids', []);
        if (!is_array($characterIds)) {
            $characterIds = [$characterIds];
        }
        $characterIds = array_filter($characterIds);
        
        if (empty($characterIds)) {
            flash('Please select at least one character.')->error();
            return redirect()->back();
        }

        $quantity = $request->input('quantity', 0);
        if ($quantity == 0) {
            flash('Please enter a non-zero quantity.')->error();
            return redirect()->back();
        }

        $data = $request->only(['data']);
        $successCount = 0;
        
        foreach ($characterIds as $characterId) {
            $character = Character::find($characterId);
            if ($character) {
                $grantData = [
                    'currency_id' => $reputationCurrency->id,
                    'quantity' => $quantity,
                    'data' => $data['data'] ?? null
                ];
                
                if ($service->grantCharacterCurrencies($grantData, $character, Auth::user())) {
                    $successCount++;
                }
            }
        }
        
        if ($successCount > 0) {
            flash('Reputation granted to ' . $successCount . ' character(s) successfully.')->success();
        } else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /*
     * Show the item search page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getItemSearch(Request $request)
    {
        $item = Item::find($request->only(['item_id']))->first();

        if($item) {
            // Gather all instances of this item
            $userItems = UserItem::where('item_id', $item->id)->where('count', '>', 0)->get();
            $characterItems = CharacterItem::where('item_id', $item->id)->where('count', '>', 0)->get();

            // Gather the users and characters that own them
            $users = User::whereIn('id', $userItems->pluck('user_id')->toArray())->orderBy('name', 'ASC')->get();
            $characters = Character::whereIn('id', $characterItems->pluck('character_id')->toArray())->orderBy('slug', 'ASC')->get();

            // Gather hold locations
            $designUpdates = CharacterDesignUpdate::whereIn('user_id', $userItems->pluck('user_id')->toArray())->whereNotNull('data')->get();
            $trades = Trade::whereIn('sender_id', $userItems->pluck('user_id')->toArray())->orWhereIn('recipient_id', $userItems->pluck('user_id')->toArray())->get();
            $submissions = Submission::whereIn('user_id', $userItems->pluck('user_id')->toArray())->whereNotNull('data')->get();
        }

        return view('admin.grants.item_search', [
            'item' => $item ? $item : null,
            'items' => Item::orderBy('name')->pluck('name', 'id'),
            'userItems' => $item ? $userItems : null,
            'characterItems' => $item ? $characterItems : null,
            'users' => $item ? $users : null,
            'characters' => $item ? $characters : null,
            'designUpdates' => $item ? $designUpdates :null,
            'trades' => $item ? $trades : null,
            'submissions' => $item ? $submissions : null,
        ]);
    }

}
