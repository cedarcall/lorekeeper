<?php namespace App\Services;

use Carbon\Carbon;
use App\Services\Service;

use DB;
use Auth;
use Config;
use Notifications;

use Illuminate\Support\Arr;
use App\Models\User\User;
use App\Models\User\UserStorage;
use App\Models\Item\Item;
use App\Models\Item\ItemCategory;
use App\Models\User\UserItem;
use App\Models\User\UserCurrency;
use App\Models\Character\CharacterItem;
use App\Models\Currency\Currency;

class StorageManager extends Service
{
    /*
    |--------------------------------------------------------------------------
    | Inventory Manager
    |--------------------------------------------------------------------------
    |
    | Handles moving from and to the Safety Deposit Box for items, currency, and other such things.
    |
    */


    /**
     * Transfers items between user stacks.
     *
     * @param  \App\Models\User\User      $sender
     * @param  \App\Models\User\User      $recipient
     * @param  \App\Models\User\UserItem  $stacks
     * @param  int                        $quantities
     * @return bool
     */
    public function depositStack($user, $stacks, $quantities)
    {
        DB::beginTransaction();

        try {
            foreach($stacks as $key=>$stack) {
                $quantity = $quantities[$key];

                $storage = (new UserStorage)->storageDetails($stack);
                if(!$storage) throw new \Exception("An invalid object was selected.");

                $existing = UserStorage::where('user_id',$user->id)->where('storer_id', $storage['id'])->where('storable_type', $storage['type'])->first();

                if($this->depositOrigins($user, $stack, $quantity, $storage)){
                    if(!$this->creditStorage(
                        $user,
                        $stack,
                        $stack->data,
                        $quantity,
                        $storage,
                        $existing
                    )) throw new \Exception("Unable to add object to storage.");

                } else throw new \Exception("Unable to deposit object.");
            }
            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }



    /**
     * Credits an item to a user or character.
     *
     * @param  \App\Models\User\User|\App\Models\Character\Character  $sender
     * @param  \App\Models\User\User|\App\Models\Character\Character  $recipient
     * @param  string                                                 $type
     * @param  array                                                  $data
     * @param  \App\Models\Item\Item                                  $item
     * @param  int                                                    $quantity
     * @return bool
     */
    public function creditStorage($user, $stack, $data, $quantity, $storage, $existing = null)
    {
        DB::beginTransaction();

        try {

            $new = false;

            // If there is a current storage for this stack, check specifics.
            if(
                !isset($existing) ||
                (
                    $existing->data != $stack->data
                    || $existing->user_id != $user->id
                    || $existing->storable_id != $stack->id
                    || $existing->storer_type != get_class($stack)
                )
            ) $new = true;
            if(isset($new) && $new){
                $user_storage = UserStorage::create([
                    'user_id'       =>  $user->id,
                    'count'         =>  (int) $quantity,
                    'storable_id'   =>  (int) $storage['id'],
                    'storable_type' =>  $storage['type'],
                    'storer_id'     =>  (int) $stack->id,
                    'storer_type'   =>  get_class($stack),
                    'data'          =>  json_encode($data),
                ]);
            } else {
                $user_storage = $existing;
                $user_storage->update(['count' => ($existing->count + $quantity)]);
                $user_storage->save();
            }


            return $this->commitReturn($user_storage);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Credits an item to a user or character.
     *
     * @param  \App\Models\User\User|\App\Models\Character\Character  $sender
     * @param  \App\Models\User\User|\App\Models\Character\Character  $recipient
     * @param  string                                                 $type
     * @param  array                                                  $data
     * @param  \App\Models\Item\Item                                  $item
     * @param  int                                                    $quantity
     * @return bool
     */
    public function depositOrigins($user, $stack, $quantity, $storage)
    {
        $data = ['data' => 'Moved to Safety Deposit Box.'];
        $type = 'Deposit';

        switch(get_class($stack)){
            default: case 'App/Models/User/UserItem':   (new InventoryManager)->debitStack($user, $type, $data, $stack, $quantity);
            // case 'App/Models/User/UserCurrency':        (new InventoryManager)->debitCurrency($user, null, $type, $data, $stack->currency_id, $quantity);
        }

        return true;
    }




}
