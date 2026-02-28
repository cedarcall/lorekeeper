<?php

namespace App\Services;

use App\Services\Service;

use DB;
use Config;
use Notifications;

use App\Models\Contract;
use App\Models\Currency\Currency;

class ContractService extends Service
{
    /*
    |--------------------------------------------------------------------------
    | Contract Service
    |--------------------------------------------------------------------------
    |
    | Handles the creation and editing of contracts.
    |
    */

    /**
     * Creates a new contract.
     *
     * @param  array                  $data
     * @param  \App\Models\User\User  $user
     * @return bool|\App\Models\Contract
     */
    public function createContract($data, $user)
    {
        DB::beginTransaction();

        try {
            $data = $this->populateContractData($data);

            $image = null;
            if(isset($data['image']) && $data['image']) {
                $image = $data['image'];
                unset($data['image']);
            }
            $thumb = null;
            if(isset($data['thumb']) && $data['thumb']) {
                $thumb = $data['thumb'];
                unset($data['thumb']);
            }

            $contract = Contract::create($data);

            if ($image) {
                $contract->image_extension = $image->getClientOriginalExtension();
                $contract->update();
                $this->handleImage($image, $contract->imagePath, $contract->imageFileName, null);
            }
            if ($thumb) {
                $contract->thumb_extension = $thumb->getClientOriginalExtension();
                $contract->update();
                $this->handleImage($thumb, $contract->imagePath, $contract->thumbFileName, null);
            }

            return $this->commitReturn($contract);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Updates a contract.
     *
     * @param  \App\Models\Contract  $contract
     * @param  array                  $data
     * @param  \App\Models\User\User  $user
     * @return bool|\App\Models\Contract
     */
    public function updateContract($contract, $data, $user)
    {
        DB::beginTransaction();

        try {
            // More specific validation
            if(Contract::where('name', $data['name'])->where('id', '!=', $contract->id)->exists()) throw new \Exception("The name has already been taken.");

            $data = $this->populateContractData($data, $contract);

            // Image processing
            $image = null;
            if(isset($data['image']) && $data['image']) {
                if(isset($contract->image_extension)) $old = $contract->imageFileName;
                else $old = null;
                $image = $data['image'];
                unset($data['image']);
            }
            if ($image) {
                $contract->image_extension = $image->getClientOriginalExtension();
                $contract->update();
                $this->handleImage($image, $contract->imagePath, $contract->imageFileName, $old);
            }

            // Thumb Processing
            $thumb = null;
            if(isset($data['thumb']) && $data['thumb']) {
                if(isset($contract->thumb_extension)) $old_thumb = $contract->thumbFileName;
                else $old_thumb = null;
                $thumb = $data['thumb'];
                unset($data['thumb']);
            }

            if ($thumb) {
                $contract->thumb_extension = $thumb->getClientOriginalExtension();
                $contract->update();
                $this->handleImage($thumb, $contract->imagePath, $contract->thumbFileName, $old_thumb);
            }

            $contract->update($data);

            return $this->commitReturn($contract);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Deletes a contract.
     *
     * @param  \App\Models\Contract  $contract
     * @return bool
     */
    public function deleteContract($contract)
    {
        DB::beginTransaction();

        try {
            if(isset($contract->image_extension)) $this->deleteImage($contract->imagePath, $contract->imageFileName);
            if(isset($contract->thumb_extension)) $this->deleteImage($contract->imagePath, $contract->thumbFileName);
            $contract->delete();
            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Sorts contract order.
     *
     * @param  array  $data
     * @return bool
     */
    public function sortContract($data)
    {
        DB::beginTransaction();

        try {
            // explode the sort array and reverse it since the order is inverted
            $sort = array_reverse(explode(',', $data));

            foreach($sort as $key => $s) {
                Contract::where('id', $s)->update(['sort' => $key]);
            }

            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Processes user input for creating/updating a contract.
     *
     * @param  array                  $data
     * @param  \App\Models\Contract  $contract
     * @return array
     */
    private function populateContractData($data, $contract = null)
    {
        $saveData['description'] = isset($data['description']) ? $data['description'] : null;
        if(isset($data['description']) && $data['description']) $saveData['parsed_description'] = parse($data['description']);
        $saveData['summary'] = isset($data['summary']) ? $data['summary'] : null;
        $saveData['location'] = isset($data['location']) ? $data['location'] : null;
        $saveData['planet_id'] = isset($data['planet_id']) && $data['planet_id'] ? $data['planet_id'] : null;

        if(isset($data['name']) && $data['name']) $saveData['name'] = $data['name'];
        $saveData['is_active'] = isset($data['is_active']);

        $saveData['image'] = isset($data['image']) ? $data['image'] : null;
        $saveData['thumb'] = isset($data['thumb']) ? $data['thumb'] : null;

        $saveData['occur_start'] = isset($data['occur_start']) ? $data['occur_start'] : null;
        $saveData['occur_end'] = isset($data['occur_end']) ? $data['occur_end'] : null;

        $saveData['max_claims'] = isset($data['max_claims']) ? $data['max_claims'] : 0;

        // Process required items
        if(isset($data['required_item_ids'])) {
            $required_items = [];
            foreach($data['required_item_ids'] as $key => $item_id) {
                if($item_id && isset($data['required_item_quantities'][$key])) {
                    $required_items[] = [
                        'item_id' => $item_id,
                        'quantity' => $data['required_item_quantities'][$key]
                    ];
                }
            }
            $saveData['required_items'] = json_encode($required_items);
        }

        // Process rewards
        if(isset($data['reward_type'])) {
            $rewards = [];
            foreach($data['reward_type'] as $key => $type) {
                if($type && isset($data['reward_id'][$key]) && isset($data['reward_quantity'][$key])) {
                    $rewards[] = [
                        'type' => $type,
                        'id' => $data['reward_id'][$key],
                        'quantity' => $data['reward_quantity'][$key]
                    ];
                }
            }
            $saveData['rewards'] = json_encode($rewards);
        }

        if(isset($data['remove_image']))
        {
            if($contract && isset($contract->image_extension) && $data['remove_image'])
            {
                $saveData['image_extension'] = null;
                $this->deleteImage($contract->imagePath, $contract->imageFileName);
            }
            unset($data['remove_image']);
        }

        if(isset($data['remove_thumb']) && $data['remove_thumb'])
        {
            if($contract && isset($contract->thumb_extension) && $data['remove_thumb'])
            {
                $saveData['thumb_extension'] = null;
                $this->deleteImage($contract->imagePath, $contract->thumbFileName);
            }
            unset($data['remove_thumb']);
        }

        return $saveData;
    }

    /**
     * Claims a contract for a user.
     *
     * @param  \App\Models\Contract  $contract
     * @param  \App\Models\User\User  $user
     * @return bool|\App\Models\UserContract
     */
    public function claimContract($contract, $user)
    {
        DB::beginTransaction();

        try {
            // Check if contract is active
            if (!$contract->is_active) throw new \Exception("This contract is not currently active.");

            // Check if contract has already been claimed by this user
            $existingClaim = \App\Models\UserContract::where('user_id', $user->id)
                ->where('contract_id', $contract->id)
                ->whereIn('status', ['claimed'])
                ->first();

            if ($existingClaim) throw new \Exception("You have already claimed this contract.");

            // Check if max claims reached
            if ($contract->max_claims > 0) {
                $claimCount = \App\Models\UserContract::where('contract_id', $contract->id)->count();
                if ($claimCount >= $contract->max_claims) {
                    throw new \Exception("This contract has reached the maximum number of claims.");
                }
            }

            // Create user contract
            $userContract = \App\Models\UserContract::create([
                'user_id' => $user->id,
                'contract_id' => $contract->id,
                'status' => 'claimed',
                'claimed_at' => now()
            ]);

            return $this->commitReturn($userContract);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }

    /**
     * Completes a contract for a user.
     *
     * @param  \App\Models\UserContract  $userContract
     * @param  \App\Models\User\User  $user
     * @return bool
     */
    public function completeContract($userContract, $user)
    {
        DB::beginTransaction();

        try {
            $contract = $userContract->contract;
            $pendingReputationQuantity = 0;
            
            // Check if user owns this contract claim
            if ($userContract->user_id != $user->id) throw new \Exception("You do not own this contract claim.");

            // Check if already completed
            if ($userContract->status == 'completed') throw new \Exception("This contract has already been completed.");

            // Check required items
            $requiredItems = $contract->requiredItemsArray;
            if (!empty($requiredItems)) {
                foreach ($requiredItems as $reqItem) {
                    $userItem = \App\Models\User\UserItem::where('user_id', $user->id)
                        ->where('item_id', $reqItem['item_id'])
                        ->where('count', '>=', $reqItem['quantity'])
                        ->first();

                    if (!$userItem) {
                        $item = \App\Models\Item\Item::find($reqItem['item_id']);
                        throw new \Exception("You do not have enough " . ($item ? $item->name : "items") . " to complete this contract.");
                    }
                }

                // Debit required items
                foreach ($requiredItems as $reqItem) {
                    $userItem = \App\Models\User\UserItem::where('user_id', $user->id)
                        ->where('item_id', $reqItem['item_id'])
                        ->first();
                    
                    if (!(new \App\Services\InventoryManager)->debitStack($user, 'Contract Completion', ['data' => 'Completed contract: ' . $contract->name], $userItem, $reqItem['quantity'])) {
                        throw new \Exception("Failed to debit items.");
                    }
                }
            }

            // Grant rewards
            $rewards = $contract->rewardsArray;
            if (!empty($rewards)) {
                foreach ($rewards as $reward) {
                    if ($reward['type'] == 'item') {
                        if (!(new \App\Services\InventoryManager)->creditItem(null, $user, 'Contract Reward', ['data' => 'Completed contract: ' . $contract->name], \App\Models\Item\Item::find($reward['id']), $reward['quantity'])) {
                            throw new \Exception("Failed to grant item reward.");
                        }
                    } elseif ($reward['type'] == 'currency') {
                        $currency = Currency::find($reward['id']);
                        if(!$currency) throw new \Exception("Failed to grant currency reward.");

                        $isContractReputation = strtolower($currency->name) === 'reputation' && $currency->is_character_owned;
                        if($isContractReputation) {
                            $pendingReputationQuantity += (int) $reward['quantity'];
                            continue;
                        }

                        if (!(new \App\Services\CurrencyManager)->creditCurrency(null, $user, 'Contract Reward', 'Completed contract: ' . $contract->name, $currency, $reward['quantity'])) {
                            throw new \Exception("Failed to grant currency reward.");
                        }
                    }
                }
            }

            // Mark as completed
            $userContract->status = 'completed';
            $userContract->completed_at = now();
            $userContract->save();

            if($pendingReputationQuantity > 0) {
                Notifications::create('CONTRACT_REPUTATION_CLAIM', $user, [
                    'contract_name' => $contract->name,
                    'reputation_quantity' => $pendingReputationQuantity,
                ]);
            }

            return $this->commitReturn(true);
        } catch(\Exception $e) {
            $this->setError('error', $e->getMessage());
        }
        return $this->rollbackReturn(false);
    }
}
