<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Galaxy;

class GalaxyController extends Controller
{
    /**
     * Display a listing of galaxies.
     */
    public function getIndex()
    {
        return view('admin.galaxies.index', [
            'galaxies' => Galaxy::paginate(20)
        ]);
    }
    
    /**
     * Show the form for creating a new galaxy.
     */
    public function getCreateGalaxy()
    {
        return view('admin.galaxies.create_edit_galaxy', [
            'galaxy' => new Galaxy()
        ]);
    }
    
    /**
     * Show the form for editing the specified galaxy.
     */
    public function getEditGalaxy($id)
    {
        $galaxy = Galaxy::findOrFail($id);
        return view('admin.galaxies.create_edit_galaxy', [
            'galaxy' => $galaxy
        ]);
    }
    
    /**
     * Store a newly created galaxy in storage.
     */
    public function postCreateEditGalaxy(Request $request, $id = null)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'rotation_date' => 'nullable|date',
            'is_current' => 'sometimes|boolean'
        ]);
        
        $data = $request->only(['name', 'is_current', 'rotation_date']);
        
        if ($id) {
            $galaxy = Galaxy::findOrFail($id);
            $galaxy->update($data);
            flash('Galaxy updated successfully.')->success();
        } else {
            // If setting as current, unset others
            if ($request->has('is_current') && $request->is_current) {
                Galaxy::query()->update(['is_current' => false]);
            }
            
            Galaxy::create($data);
            flash('Galaxy created successfully.')->success();
        }
        
        return redirect('admin/galaxies');
    }
    
    /**
     * Set a galaxy as current.
     */
    public function postSetCurrent($id)
    {
        $galaxy = Galaxy::findOrFail($id);
        Galaxy::where('id', '!=', $id)->update(['is_current' => false]);
        $galaxy->update(['is_current' => true, 'rotation_date' => now()]);
        
        flash('Galaxy set as current.')->success();
        return redirect('admin/galaxies');
    }
    
    /**
     * Delete the specified galaxy.
     */
    public function getDeleteGalaxy($id)
    {
        $galaxy = Galaxy::findOrFail($id);
        return view('admin.galaxies._delete_galaxy', ['galaxy' => $galaxy]);
    }
    
    /**
     * Destroy the specified galaxy.
     */
    public function postDeleteGalaxy(Request $request, $id)
    {
        if ($request->password) {
            \Auth::user()->validatePassword($request->password);
        }
        
        $galaxy = Galaxy::findOrFail($id);
        $galaxy->delete();
        
        flash('Galaxy deleted successfully.')->success();
        return redirect('admin/galaxies');
    }
}
