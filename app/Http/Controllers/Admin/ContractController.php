<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Auth;
use App\Models\Contract;
use App\Models\Item\Item;
use App\Models\Currency\Currency;
use App\Models\Planet;
use App\Services\ContractService;

class ContractController extends Controller
{
    /**
     * Shows the contract index.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getIndex()
    {
        return view('admin.contracts.contracts', [
            'contracts' => Contract::orderBy('sort', 'DESC')->paginate(20)
        ]);
    }

    /**
     * Saves contract settings.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postSettings(Request $request)
    {
        \DB::table('site_settings')->updateOrInsert(
            ['key' => 'contracts_how_it_works'],
            ['value' => $request->get('contracts_how_it_works')]
        );
        flash('Contract settings updated successfully.')->success();
        return redirect()->back();
    }

    /**
     * Shows the create contract page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getCreateContract()
    {
        return view('admin.contracts.create_edit_contract', [
            'contract' => new Contract,
            'items' => Item::orderBy('name')->pluck('name', 'id'),
            'currencies' => Currency::orderBy('name')->pluck('name', 'id'),
            'planets' => Planet::where('is_active', 1)->orderBy('name')->pluck('name', 'id')
        ]);
    }

    /**
     * Shows the edit contract page.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getEditContract($id)
    {
        $contract = Contract::find($id);
        if(!$contract) abort(404);
        return view('admin.contracts.create_edit_contract', [
            'contract' => $contract,
            'items' => Item::orderBy('name')->pluck('name', 'id'),
            'currencies' => Currency::orderBy('name')->pluck('name', 'id'),
            'planets' => Planet::where('is_active', 1)->orderBy('name')->pluck('name', 'id')
        ]);
    }

    /**
     * Creates or edits a contract.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\ContractService  $service
     * @param  int|null                  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postCreateEditContract(Request $request, ContractService $service, $id = null)
    {
        $id ? $request->validate(Contract::$updateRules) : $request->validate(Contract::$createRules);
        $data = $request->only([
            'name', 'description', 'summary', 'location', 'planet_id', 'image', 'thumb', 'remove_image', 'remove_thumb', 
            'is_active', 'occur_start', 'occur_end', 'max_claims',
            'required_item_ids', 'required_item_quantities',
            'reward_type', 'reward_id', 'reward_quantity',
            'is_randomizable', 'unlock_contract_chance', 'rarity_weight'
        ]);
        if($id && $service->updateContract(Contract::find($id), $data, Auth::user())) {
            flash('Contract updated successfully.')->success();
        }
        else if (!$id && $contract = $service->createContract($data, Auth::user())) {
            flash('Contract created successfully.')->success();
            return redirect()->to('admin/contracts/edit/'.$contract->id);
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }

    /**
     * Gets the contract deletion modal.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function getDeleteContract($id)
    {
        $contract = Contract::find($id);
        return view('admin.contracts._delete_contract', [
            'contract' => $contract,
        ]);
    }

    /**
     * Deletes a contract.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\ContractService  $service
     * @param  int                       $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postDeleteContract(Request $request, ContractService $service, $id)
    {
        if($id && $service->deleteContract(Contract::find($id))) {
            flash('Contract deleted successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->to('admin/contracts');
    }

    /**
     * Sorts contracts.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  App\Services\ContractService  $service
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postSortContract(Request $request, ContractService $service)
    {
        if($service->sortContract($request->get('sort'))) {
            flash('Contract order updated successfully.')->success();
        }
        else {
            foreach($service->errors()->getMessages()['error'] as $error) flash($error)->error();
        }
        return redirect()->back();
    }
}
