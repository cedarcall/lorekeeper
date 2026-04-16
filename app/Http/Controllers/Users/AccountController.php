<?php

namespace App\Http\Controllers\Users;

use Auth;
use Settings;
use File;
use Image;

use App\Models\Theme;
use App\Models\User\User;
use App\Models\User\UserAlias;
use App\Models\Character\Character;
use App\Models\Currency\Currency;
use App\Models\ExpeditionSubmission;
use App\Models\FeaturedPlanet;
use App\Models\Item\Item;
use App\Models\User\UserItem;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;
use App\Models\Notification;
use App\Models\ThemeEditor;
use App\Models\WorldExpansion\Location;
use App\Models\WorldExpansion\Faction;

use App\Services\UserService;
use App\Services\LinkService;
use App\Services\CurrencyManager;
use App\Services\ModifierItemService;

use App\Http\Controllers\Controller;

class AccountController extends Controller {
    /*
    |--------------------------------------------------------------------------
    | Account Controller
    |--------------------------------------------------------------------------
    |
    | Handles the user's account management.
    |
    */

    /**
     * Shows the banned page, or redirects the user to the home page if they aren't banned.
     *
     * @return \Illuminate\Contracts\Support\Renderable|\Illuminate\Http\RedirectResponse
     */
    public function getBanned() {
        if (Auth::user()->is_banned)
            return view('account.banned');
        else
            return redirect()->to('/');
    }

    /**
     * Shows the user settings page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getSettings()
    {
        $user = Auth::user();

        if ($user->isStaff || $user->isAdmin) {
            // staff can see all active themes
            $themeOptions = ['0' => 'Select Theme'] + Theme::where('is_active', 1)->where('theme_type', 'base')->get()->pluck('displayName', 'id')->toArray();
        } else {
            // members can only see active themes that are user selectable
            $themeOptions = ['0' => 'Select Theme'] + Theme::where('is_active', 1)->where('theme_type', 'base')->where('is_user_selectable', 1)->get()->pluck('displayName', 'id')->toArray();
        }

        $decoratorOptions = ['0' => 'Select Decorator Theme'] + Theme::where('is_active', 1)->where('theme_type', 'decorator')->where('is_user_selectable', 1)->get()->pluck('displayName', 'id')->toArray();

        $interval = array(
            0 => 'whenever',
            1 => 'yearly',
            2 => 'quarterly',
            3 => 'monthly',
            4 => 'weekly',
            5 => 'daily'
        );

        return view('account.settings', [
            'themeOptions' => $themeOptions + Auth::user()->themes()->where('theme_type', 'base')->get()->pluck('displayName', 'id')->toArray(),
            'decoratorThemes' => $decoratorOptions + Auth::user()->themes()->where('theme_type', 'decorator')->get()->pluck('displayName', 'id')->toArray(),
            'locations' => Location::all()->where('is_user_home')->pluck('style','id')->toArray(),
            'factions' => Faction::all()->where('is_user_faction')->pluck('style','id')->toArray(),
            'user_enabled' => Settings::get('WE_user_locations'),
            'user_faction_enabled' => Settings::get('WE_user_factions'),
            'char_enabled' => Settings::get('WE_character_locations'),
            'char_faction_enabled' => Settings::get('WE_character_factions'),
            'location_interval' => $interval[Settings::get('WE_change_timelimit')]
        ]);
    }

    /**
     * Edits the user's profile.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postProfile(Request $request) {
        Auth::user()->profile->update([
            'text' => $request->get('text'),
            'parsed_text' => parse($request->get('text'))
        ]);
        flash('Profile updated successfully.')->success();
        return redirect()->back();
    }

    /**
     * Edits the user's avatar.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postAvatar(Request $request, UserService $service) {
        if ($service->updateAvatar($request->file('avatar'), Auth::user())) {
            flash('Avatar updated successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Edits the user's theme.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postTheme(Request $request, UserService $service) {
        if ($service->updateTheme($request->only(['theme', 'decorator_theme']), Auth::user())) {
            flash('Theme updated successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Edits the user's location from a list of locations that users can make their home.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postLocation(Request $request, UserService $service)
    {
        if($service->updateLocation($request->input('location'), Auth::user())) {
            flash('Location updated successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Edits the user's faction from a list of factions that users can make their home.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postFaction(Request $request, UserService $service)
    {
        if($service->updateFaction($request->input('faction'), Auth::user())) {
            flash('Faction updated successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }


    /**
     * Changes the user's password.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\UserService  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postPassword(Request $request, UserService $service) {
        $request->validate([
            'old_password' => 'required|string',
            'new_password' => 'required|string|min:8|confirmed'
        ]);
        if ($service->updatePassword($request->only(['old_password', 'new_password', 'new_password_confirmation']), Auth::user())) {
            flash('Password updated successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Changes the user's email address and resets verification.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\UserService  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postEmail(Request $request, UserService $service) {
        $request->validate([
            'email' => 'required|string|email|max:255|unique:users'
        ]);

        $user = Auth::user();
        if ($service->updateEmail($request->only(['email']), $user)) {
            $this->sendVerificationCode($user);
            flash('Email updated successfully. We sent a 6-digit verification code to your email.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Sends a 6-digit email verification code.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postSendEmailVerificationCode()
    {
        $user = Auth::user();
        if($user->hasVerifiedEmail()) {
            flash('Your email is already verified.')->success();
            return redirect()->back();
        }

        if($this->sendVerificationCode($user)) {
            flash('A verification code has been sent to your email.')->success();
        }
        else {
            flash('Could not send verification code right now. Please try again later.')->error();
        }

        return redirect()->back();
    }

    /**
     * Verifies email using a 6-digit code.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postVerifyEmailCode(Request $request)
    {
        $request->validate([
            'verification_code' => 'required|string|size:6'
        ]);

        $user = Auth::user();
        if($user->hasVerifiedEmail()) {
            flash('Your email is already verified.')->success();
            return redirect()->back();
        }

        if(!$user->email_verification_code || !$user->email_verification_code_expires_at) {
            flash('No verification code is active. Please request a new code.')->error();
            return redirect()->back();
        }

        if(Carbon::now()->gt($user->email_verification_code_expires_at)) {
            flash('That verification code has expired. Please request a new code.')->error();
            return redirect()->back();
        }

        if(!Hash::check($request->input('verification_code'), $user->email_verification_code)) {
            flash('Invalid verification code.')->error();
            return redirect()->back();
        }

        $user->email_verified_at = Carbon::now();
        $user->email_verification_code = null;
        $user->email_verification_code_expires_at = null;
        $user->save();

        flash('Email verified successfully.')->success();
        return redirect()->back();
    }

    /**
     * Generates and emails a verification code for the given user.
     */
    private function sendVerificationCode(User $user): bool
    {
        $plainCode = str_pad((string) random_int(0, 999999), 6, '0', STR_PAD_LEFT);
        $user->email_verification_code = Hash::make($plainCode);
        $user->email_verification_code_expires_at = Carbon::now()->addMinutes(15);
        $user->save();

        try {
            Mail::raw("Your Dreadfarer verification code is: {$plainCode}\n\nThis code expires in 15 minutes.", function ($message) use ($user) {
                $message->to($user->email)
                    ->subject('Dreadfarer Email Verification Code');
            });
            return true;
        } catch (\Throwable $e) {
            Log::error('Failed to send verification code email.', [
                'user_id' => $user->id,
                'email' => $user->email,
                'error' => $e->getMessage(),
            ]);
            return false;
        }
    }

    /**
     * Changes user birthday setting
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\UserService  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postBirthday(Request $request, UserService $service) {
        if ($service->updateDOB($request->input('birthday_setting'), Auth::user())) {
            flash('Setting updated successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Shows the notifications page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getNotifications() {
        $notifications = Auth::user()->notifications()->orderBy('id', 'DESC')->paginate(30);
        $notificationCharacterOptions = Character::visible()->myo(0)->where('user_id', Auth::id())->orderBy('sort', 'DESC')->get()->pluck('fullName', 'id')->toArray();
        Auth::user()->notifications()->update(['is_unread' => 0]);
        Auth::user()->notifications_unread = 0;
        Auth::user()->save();

        return view('account.notifications', [
            'notifications' => $notifications,
            'notificationCharacterOptions' => $notificationCharacterOptions,
        ]);
    }

    /**
     * Claims pending contract reputation reward to the selected character.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postClaimContractReputation(Request $request, CurrencyManager $service, $id) {
        $notification = Notification::where('id', $id)
            ->where('user_id', Auth::id())
            ->where('notification_type_id', Notification::CONTRACT_REPUTATION_CLAIM)
            ->first();

        if(!$notification) {
            flash('Invalid contract reputation notification.')->error();
            return redirect()->back();
        }

        $character = Character::visible()->myo(0)
            ->where('id', $request->input('character_id'))
            ->where('user_id', Auth::id())
            ->first();

        if(!$character) {
            flash('Please select one of your characters.')->error();
            return redirect()->back();
        }

        $data = $notification->data;
        $reputationQuantity = isset($data['reputation_quantity']) ? (int) $data['reputation_quantity'] : 0;
        if($reputationQuantity <= 0) {
            flash('This contract reputation notification is no longer valid.')->error();
            $notification->delete();
            return redirect()->back();
        }

        $reputationCurrency = Currency::where('name', 'Reputation')->where('is_character_owned', 1)->first();
        if(!$reputationCurrency) {
            flash('Reputation currency not found.')->error();
            return redirect()->back();
        }

        $contractName = isset($data['contract_name']) ? $data['contract_name'] : 'Unknown Contract';
        if($service->creditCurrency(null, $character, 'Contract Reputation Reward', 'Completed contract: '.$contractName, $reputationCurrency, $reputationQuantity)) {
            $notification->delete();
            flash('Reputation has been granted to '.$character->fullName.'.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }

        return redirect()->back();
    }

    /**
     * Handles expedition reward reroll prompt decision.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postExpeditionRewardReroll(Request $request, $id) {
        $notification = Notification::where('id', $id)
            ->where('user_id', Auth::id())
            ->where('notification_type_id', Notification::EXPEDITION_REWARD_REROLL)
            ->first();

        if(!$notification) {
            flash('Invalid expedition reroll notification.')->error();
            return redirect()->back();
        }

        $choice = $request->input('reroll_choice');
        if($choice !== 'yes') {
            $notification->delete();
            flash('Expedition reroll skipped.')->success();
            return redirect()->back();
        }

        $modifierService = new ModifierItemService();
        if(!$modifierService->consumeModifierCharge(Auth::user(), 'Emergency Fabricator Charge', 1, 'Expedition Modifier Use', 'Emergency reroll used for expedition reward')) {
            foreach($modifierService->errors()->getMessages()['error'] as $error) flash($error)->error();
            return redirect()->back();
        }

        $data = $notification->data;
        $submission = ExpeditionSubmission::where('id', $data['submission_id'] ?? null)
            ->where('user_id', Auth::id())
            ->first();

        if(!$submission || !$submission->planet_id) {
            flash('Could not locate the original expedition reward.')->error();
            $notification->delete();
            return redirect()->back();
        }

        $originalItemId = isset($data['original_item_id']) ? (int) $data['original_item_id'] : 0;
        $originalQty = isset($data['original_item_quantity']) ? (int) $data['original_item_quantity'] : 0;
        if($originalItemId > 0 && $originalQty > 0) {
            $remaining = $originalQty;
            $service = new \App\Services\InventoryManager();
            $stacks = UserItem::where('user_id', Auth::id())
                ->where('item_id', $originalItemId)
                ->where('count', '>', 0)
                ->orderBy('count', 'desc')
                ->get();

            foreach($stacks as $stack) {
                if($remaining <= 0) break;
                $debit = min($remaining, $stack->count);
                if(!$service->debitStack(Auth::user(), 'Expedition Reward Reroll', ['data' => 'Removed original expedition reward before reroll'], $stack, $debit)) {
                    flash('Could not remove the original reward item.')->error();
                    return redirect()->back();
                }
                $remaining -= $debit;
            }

            if($remaining > 0) {
                flash('Could not remove the original reward item quantity for reroll.')->error();
                return redirect()->back();
            }
        }

        $featuredPlanet = FeaturedPlanet::with('lootTable')
            ->where('is_active', 1)
            ->where('planet_id', $submission->planet_id)
            ->first();

        if(!$featuredPlanet || !$featuredPlanet->lootTable) {
            flash('No active expedition loot table is available for reroll.')->error();
            return redirect()->back();
        }

        $assets = createAssetsArray();
        $rerolledItem = null;
        for($i = 0; $i < 30; $i++) {
            $rolled = $featuredPlanet->lootTable->roll(1, Auth::id());
            if(isset($rolled['items']) && count($rolled['items'])) {
                foreach($rolled['items'] as $asset) {
                    $rerolledItem = $asset;
                    break 2;
                }
            }
        }

        if(!$rerolledItem) {
            flash('Failed to reroll a valid item reward.')->error();
            return redirect()->back();
        }

        addAsset($assets, $rerolledItem['asset'], $rerolledItem['quantity']);
        if(!fillUserAssets($assets, null, Auth::user(), 'Expedition Reward Reroll', ['data' => 'Emergency Fabricator reroll'])) {
            flash('Failed to grant rerolled reward.')->error();
            return redirect()->back();
        }

        $notification->delete();
        flash('1 Use consumed for Emergency Fabricator Charge')->success();
        flash('Expedition reward rerolled to '.$rerolledItem['asset']->name.' x'.$rerolledItem['quantity'].'.')->success();
        return redirect()->back();
    }

    /**
     * Deletes a notification and returns a response.
     *
     * @return \Illuminate\Http\Response
     */
    public function getDeleteNotification($id) {
        $notification = Notification::where('id', $id)->where('user_id', Auth::user()->id)->first();
        if ($notification) $notification->delete();
        return response(200);
    }

    /**
     * Deletes all of the user's notifications.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postClearNotifications($type = null) {
        if (isset($type) && $type) Auth::user()->notifications()->where('notification_type_id', $type)->delete();
        else Auth::user()->notifications()->delete();
        flash('Notifications cleared successfully.')->success();
        return redirect()->back();
    }

    /**
     * Shows the account links page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getAliases() {
        return view('account.aliases');
    }

    /**
     * Shows the make primary alias modal.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getMakePrimary($id) {
        return view('account._make_primary_modal', ['alias' => UserAlias::where('id', $id)->where('user_id', Auth::user()->id)->first()]);
    }

    /**
     * Makes an alias the user's primary alias.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postMakePrimary(LinkService $service, $id) {
        if ($service->makePrimary($id, Auth::user())) {
            flash('Your primary alias has been changed successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Shows the hide alias modal.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getHideAlias($id) {
        return view('account._hide_alias_modal', ['alias' => UserAlias::where('id', $id)->where('user_id', Auth::user()->id)->first()]);
    }

    /**
     * Hides or unhides the selected alias from public view.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postHideAlias(LinkService $service, $id) {
        if ($service->hideAlias($id, Auth::user())) {
            flash('Your alias\'s visibility setting has been changed successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Shows the remove alias modal.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getRemoveAlias($id) {
        return view('account._remove_alias_modal', ['alias' => UserAlias::where('id', $id)->where('user_id', Auth::user()->id)->first()]);
    }

    /**
     * Removes the selected alias from the user's account.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postRemoveAlias(LinkService $service, $id) {
        if ($service->removeAlias($id, Auth::user())) {
            flash('Your alias has been removed successfully.')->success();
        } else {
            foreach ($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }
}
