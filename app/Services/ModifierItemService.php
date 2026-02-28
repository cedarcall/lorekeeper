<?php namespace App\Services;

use DB;

use App\Models\Item\Item;
use App\Models\User\UserItem;
use App\Models\User\UserItemChargeProgress;

class ModifierItemService extends Service
{
    public function hasModifierItem($user, $itemName)
    {
        $item = Item::where('name', $itemName)->first();
        if(!$item) return false;

        return UserItem::where('user_id', $user->id)
            ->where('item_id', $item->id)
            ->where('count', '>', 0)
            ->exists();
    }

    public function consumeModifierCharge($user, $itemName, $charges = 1, $logType = 'Modifier Item Use', $logData = null)
    {
        DB::beginTransaction();

        try {
            $item = Item::where('name', $itemName)->first();
            if(!$item) throw new \Exception($itemName.' is not configured as an item.');

            $usesPerItem = (int) ($item->uses ?: 1);
            if($usesPerItem < 1) $usesPerItem = 1;

            $progress = UserItemChargeProgress::firstOrCreate(
                ['user_id' => $user->id, 'item_id' => $item->id],
                ['charges_used' => 0]
            );

            for($i = 0; $i < $charges; $i++) {
                $hasStack = UserItem::where('user_id', $user->id)
                    ->where('item_id', $item->id)
                    ->where('count', '>', 0)
                    ->exists();
                if(!$hasStack) throw new \Exception('You do not have any '.$itemName.' left.');

                $progress->charges_used = (int) $progress->charges_used + 1;

                if($progress->charges_used >= $usesPerItem) {
                    $stack = UserItem::where('user_id', $user->id)
                        ->where('item_id', $item->id)
                        ->where('count', '>', 0)
                        ->first();
                    if(!$stack) throw new \Exception('You do not have any '.$itemName.' left.');

                    if(!(new InventoryManager)->debitStack(
                        $user,
                        $logType,
                        ['data' => $logData ?: 'Used '.$itemName],
                        $stack,
                        1
                    )) {
                        throw new \Exception('Failed to consume '.$itemName.'.');
                    }

                    $progress->charges_used = 0;
                }
            }

            $progress->save();

            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }

        return $this->rollbackReturn(false);
    }
}
