<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\Contract;
use App\Models\UserContract;
use App\Models\UnlockedContract;
use App\Services\ContractService;
use Auth;

class ContractController extends Controller
{
    // Show current contract (or latest) and a list of previous contracts
    public function index()
    {
        $now = Carbon::now();
        
        // Get all active contracts
        $allContracts = Contract::where('is_active', 1)
            ->orderBy('occur_start', 'desc')
            ->orderBy('id', 'desc')
            ->get();
        
        // Filter: Get free contracts OR unlocked contracts for user
        $visibleContracts = $allContracts->filter(function($contract) {
            // If it's free (not randomizable), show to everyone
            if (!$contract->is_randomizable) {
                return true;
            }
            
            // If randomizable, only show if user is logged in and has unlocked it
            if (Auth::check()) {
                $unlocked = UnlockedContract::where('user_id', Auth::id())
                    ->where('contract_id', $contract->id)
                    ->exists();
                return $unlocked;
            }
            
            return false;
        });
        
        // Get current contract (active one)
        $current = $visibleContracts->filter(function($contract) use ($now) {
            if (!$contract->occur_start) return false;
            if ($contract->occur_start > $now) return false;
            if ($contract->occur_end && $contract->occur_end < $now) return false;
            return true;
        })->first();

        if (!$current && count($visibleContracts) > 0) {
            $current = $visibleContracts->first();
        }

        $previous = $visibleContracts->filter(function($contract) use ($current) {
            return !$current || $contract->id !== $current->id;
        });

        // Get user's claimed contracts if logged in
        $userClaimed = [];
        if (Auth::check()) {
            $userClaimed = UserContract::where('user_id', Auth::id())
                ->whereIn('status', ['claimed', 'completed'])
                ->pluck('status', 'contract_id')
                ->toArray();
        }

        $howItWorks = \DB::table('site_settings')->where('key', 'contracts_how_it_works')->value('value');

        return view('contracts.index', compact('current', 'previous', 'userClaimed', 'howItWorks'));
    }

    // Show a single contract by id
    public function show($id)
    {
        $contract = Contract::where('is_active', 1)->where('id', $id)->firstOrFail();
        
        // Check access
        if ($contract->is_randomizable && !Auth::check()) {
            flash('You must be logged in to view this contract.')->error();
            return redirect('contracts');
        }
        
        if ($contract->is_randomizable && Auth::check()) {
            $unlocked = UnlockedContract::where('user_id', Auth::id())
                ->where('contract_id', $contract->id)
                ->exists();
            
            if (!$unlocked) {
                flash('You have not unlocked this contract yet.')->error();
                return redirect('contracts');
            }
        }
        
        // Get user's claim status if logged in
        $userContract = null;
        if (Auth::check()) {
            $userContract = UserContract::where('user_id', Auth::id())
                ->where('contract_id', $contract->id)
                ->first();
        }

        return view('contracts.show', compact('contract', 'userContract'));
    }

    // Claim a contract
    public function postClaim(Request $request, ContractService $service, $id)
    {
        if(!Auth::check()) {
            flash('You must be logged in to claim a contract.')->error();
            return redirect()->back();
        }

        $contract = Contract::where('is_active', 1)->where('id', $id)->first();
        if(!$contract) {
            flash('Invalid contract.')->error();
            return redirect()->back();
        }

        if($service->claimContract($contract, Auth::user())) {
            flash('Contract claimed successfully!')->success();
        } else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        
        return redirect()->back();
    }

    // Complete a contract
    public function postComplete(Request $request, ContractService $service, $id)
    {
        if(!Auth::check()) {
            flash('You must be logged in to complete a contract.')->error();
            return redirect()->back();
        }

        $userContract = UserContract::where('user_id', Auth::id())->where('id', $id)->first();
        if(!$userContract) {
            flash('Invalid contract claim.')->error();
            return redirect()->back();
        }

        if($service->completeContract($userContract, Auth::user())) {
            flash('Contract completed successfully! Rewards have been granted. If Reputation was included, open Notifications to choose which character receives it.')->success();
        } else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        
        return redirect()->back();
    }
}
