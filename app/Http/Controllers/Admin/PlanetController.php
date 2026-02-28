<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Galaxy;
use App\Models\Planet;
use App\Models\PlanetInfoTier;
use App\Models\Item\Item;

class PlanetController extends Controller
{
    /**
     * Display a listing of planets.
     */
    public function getIndex()
    {
        $planets = Planet::with('galaxy')
            ->paginate(20);
        
        return view('admin.planets.index', [
            'planets' => $planets
        ]);
    }
    
    /**
     * Show the form for creating a new planet.
     */
    public function getCreatePlanet()
    {
        return view('admin.planets.create_edit_planet', [
            'planet' => new Planet(),
            'galaxies' => Galaxy::all()->pluck('name', 'id')->toArray(),
            'items' => Item::orderBy('name')->pluck('name', 'id')->toArray(),
        ]);
    }
    
    /**
     * Show the form for editing the specified planet.
     */
    public function getEditPlanet($id)
    {
        $planet = Planet::with('infoTiers')->findOrFail($id);
        return view('admin.planets.create_edit_planet', [
            'planet' => $planet,
            'galaxies' => Galaxy::all()->pluck('name', 'id')->toArray(),
            'items' => Item::orderBy('name')->pluck('name', 'id')->toArray(),
        ]);
    }
    
    /**
     * Store a newly created planet or update existing.
     */
    public function postCreateEditPlanet(Request $request, $id = null)
    {
        $request->validate([
            'galaxy_id' => 'required|exists:galaxies,id',
            'name' => 'nullable|string|max:255',
            'slug' => 'required|string|max:255|unique:planets,slug' . ($id ? ",$id" : ''),
            'rarity' => 'required|in:common,uncommon,rare,legendary',
            'description' => 'nullable|string',
            'is_active' => 'sometimes|boolean',
            'has_hazard' => 'sometimes|boolean',
            'hazard_name' => 'nullable|string|max:255',
            'hazard_penalty' => 'nullable|string',
            'hidden_item_id' => 'nullable|integer|exists:items,id',
            // Vital info fields
            'weather' => 'nullable|string|max:255',
            'flora_level' => 'nullable|string|max:255',
            'fauna_level' => 'nullable|string|max:255',
            'danger_level' => 'nullable|string|max:255',
            'atmosphere' => 'nullable|string|max:255',
            'terrain' => 'nullable|string|max:255',
            'special_notes' => 'nullable|string',
            // Reference images
            'ref_image_1' => 'nullable|image|mimes:png,jpg,jpeg,gif|max:2048',
            'ref_image_2' => 'nullable|image|mimes:png,jpg,jpeg,gif|max:2048',
            'ref_image_3' => 'nullable|image|mimes:png,jpg,jpeg,gif|max:2048',
            'ref_image_4' => 'nullable|image|mimes:png,jpg,jpeg,gif|max:2048',
            'ref_image_5' => 'nullable|image|mimes:png,jpg,jpeg,gif|max:2048',
            'color_palette' => 'nullable|string',
        ]);
        
        $data = $request->only([
            'galaxy_id', 'name', 'slug', 'rarity', 'description', 'is_active',
            'has_hazard', 'hazard_name', 'hazard_penalty', 'hidden_item_id',
            'weather', 'flora_level', 'fauna_level', 'danger_level', 'atmosphere', 'terrain', 'special_notes'
        ]);

        $data['has_hazard'] = $request->has('has_hazard');
        if(!$data['has_hazard']) {
            $data['hazard_name'] = null;
            $data['hazard_penalty'] = null;
            $data['hidden_item_id'] = null;
        }
        
        // Handle color palette (convert comma-separated to array)
        if ($request->filled('color_palette')) {
            $colors = array_filter(array_map('trim', explode(',', $request->input('color_palette'))));
            $data['color_palette'] = $colors;
        } else {
            $data['color_palette'] = null;
        }
        
        if ($id) {
            $planet = Planet::findOrFail($id);
            $planet->update($data);
            flash('Planet updated successfully.')->success();
        } else {
            $planet = Planet::create($data);
            flash('Planet created successfully.')->success();
        }
        
        // Handle reference image uploads
        $refImageDir = public_path($planet->refImageDirectory);
        if (!file_exists($refImageDir)) {
            mkdir($refImageDir, 0755, true);
        }
        
        for ($i = 1; $i <= 5; $i++) {
            $fieldName = "ref_image_$i";
            $removeField = "remove_ref_image_$i";
            
            // Remove image if requested
            if ($request->has($removeField) && $request->input($removeField)) {
                $oldFile = $planet->$fieldName;
                if ($oldFile && file_exists($refImageDir . '/' . $oldFile)) {
                    unlink($refImageDir . '/' . $oldFile);
                }
                $planet->$fieldName = null;
                $planet->save();
            }
            
            // Upload new image
            if ($request->hasFile($fieldName)) {
                // Delete old file if exists
                $oldFile = $planet->$fieldName;
                if ($oldFile && file_exists($refImageDir . '/' . $oldFile)) {
                    unlink($refImageDir . '/' . $oldFile);
                }
                
                $file = $request->file($fieldName);
                $filename = $planet->id . '-ref' . $i . '.' . $file->getClientOriginalExtension();
                $file->move($refImageDir, $filename);
                $planet->$fieldName = $filename;
                $planet->save();
            }
        }
        
        return redirect("admin/planets/edit/{$planet->id}");
    }
    
    /**
     * Add planet info tiers (single or multiple).
     */
    public function postAddTier(Request $request, $planetId)
    {
        $planet = Planet::findOrFail($planetId);
        
        // Handle multiple tiers in one submission
        if ($request->has('tiers')) {
            // Multiple tiers submitted as array
            $tiers = $request->input('tiers', []);
            $addedCount = 0;
            $errors = [];
            
            foreach ($tiers as $index => $tierData) {
                // Check if tier_number is provided and not empty
                if (empty($tierData['tier_number']) || !isset($tierData['info'])) {
                    continue;
                }
                
                // Check if at least one info field is filled
                $hasInfo = false;
                foreach ($tierData['info'] as $value) {
                    if (!empty($value)) {
                        $hasInfo = true;
                        break;
                    }
                }
                
                if (!$hasInfo) {
                    $errors[] = "Tier " . $tierData['tier_number'] . " has no information.";
                    continue;
                }
                
                // Build info_data from form fields
                $infoData = [];
                foreach ($tierData['info'] as $key => $value) {
                    if (!empty($value)) {
                        $infoData[$key] = $value;
                    }
                }
                
                try {
                    PlanetInfoTier::updateOrCreate(
                        ['planet_id' => $planetId, 'tier_number' => (int)$tierData['tier_number']],
                        ['info_data' => $infoData]
                    );
                    $addedCount++;
                } catch (\Exception $e) {
                    $errors[] = "Error saving tier " . $tierData['tier_number'] . ": " . $e->getMessage();
                }
            }
            
            if ($addedCount > 0) {
                flash("Added $addedCount tier(s) successfully.")->success();
            } else {
                if (!empty($errors)) {
                    flash('No tiers were added: ' . implode('; ', $errors))->warning();
                } else {
                    flash('No valid tiers to add. Please fill in tier numbers and at least one information field.')->warning();
                }
            }
        } else {
            flash('No tier data received. Please fill in at least one tier.')->warning();
        }
        
        return redirect("admin/planets/edit/{$planetId}");
    }
    
    /**
     * Delete a planet info tier.
     */
    public function postDeleteTier($planetId, $tierId)
    {
        $tier = PlanetInfoTier::findOrFail($tierId);
        $tier->delete();
        
        flash('Info tier deleted.')->success();
        return redirect("admin/planets/edit/{$planetId}");
    }
    
    /**
     * Delete the specified planet.
     */
    public function postDeletePlanet(Request $request, $id)
    {
        $planet = Planet::findOrFail($id);
        $planet->delete();
        
        flash('Planet deleted successfully.')->success();
        return redirect('admin/planets');
    }
}
