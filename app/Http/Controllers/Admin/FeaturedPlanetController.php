<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\FeaturedPlanet;
use App\Models\Galaxy;
use App\Models\Item\Item;
use App\Models\Planet;
use App\Models\Loot\LootTable;
use Auth;

class FeaturedPlanetController extends Controller
{
    public function getIndex()
    {
        $featuredPlanets = FeaturedPlanet::with('galaxy', 'planet', 'lootTable')
            ->orderBy('updated_at', 'desc')
            ->paginate(20);

        return view('admin.featured_planets.index', [
            'featuredPlanets' => $featuredPlanets
        ]);
    }

    public function getCreateFeaturedPlanet()
    {
        return view('admin.featured_planets.create_edit_featured_planet', [
            'featuredPlanet' => new FeaturedPlanet(),
            'galaxies' => Galaxy::all()->pluck('name', 'id')->toArray(),
            'planets' => Planet::orderBy('name')->pluck('name', 'id')->toArray(),
            'lootTables' => LootTable::orderBy('name')->pluck('name', 'id')->toArray(),
            'items' => Item::sortAlphabetical()->pluck('name', 'id')->toArray(),
            'selectedMaterials' => []
        ]);
    }

    public function getEditFeaturedPlanet($id)
    {
        $featuredPlanet = FeaturedPlanet::findOrFail($id);

        return view('admin.featured_planets.create_edit_featured_planet', [
            'featuredPlanet' => $featuredPlanet,
            'galaxies' => Galaxy::all()->pluck('name', 'id')->toArray(),
            'planets' => Planet::orderBy('name')->pluck('name', 'id')->toArray(),
            'lootTables' => LootTable::orderBy('name')->pluck('name', 'id')->toArray(),
            'items' => Item::sortAlphabetical()->pluck('name', 'id')->toArray(),
            'selectedMaterials' => $featuredPlanet->materials()->pluck('items.id')->toArray()
        ]);
    }

    public function postCreateEditFeaturedPlanet(Request $request, $id = null)
    {
        $request->validate([
            'galaxy_id' => 'required|exists:galaxies,id',
            'planet_id' => 'nullable|exists:planets,id',
            'loot_table_id' => 'nullable|exists:loot_tables,id',
            'name' => 'nullable|string|max:255',
            'slug' => 'required|string|max:255|unique:featured_planets,slug' . ($id ? "," . $id : ''),
            'rarity' => 'required|in:common,uncommon,rare,legendary',
            'type' => 'required|string|max:255',
            'risk_level' => 'required|string|max:255',
            'theme' => 'nullable|string|max:255',
            'description' => 'nullable|string',
            'start_at' => 'nullable|date',
            'end_at' => 'nullable|date',
            'material_item_ids' => 'nullable|array',
            'material_item_ids.*' => 'exists:items,id',
            'is_active' => 'sometimes|boolean'
        ]);

        $data = $request->only([
            'planet_id',
            'galaxy_id',
            'name',
            'slug',
            'rarity',
            'type',
            'risk_level',
            'theme',
            'description',
            'start_at',
            'end_at',
            'loot_table_id',
            'is_active'
        ]);

        if (!empty($data['description'])) {
            $data['parsed_description'] = function_exists('parse') ? parse($data['description']) : $data['description'];
        } else {
            $data['parsed_description'] = null;
        }

        if ($id) {
            $featuredPlanet = FeaturedPlanet::findOrFail($id);
            $featuredPlanet->update($data);
            flash('Featured planet updated successfully.')->success();
        } else {
            $data['created_by'] = Auth::id();
            $featuredPlanet = FeaturedPlanet::create($data);
            flash('Featured planet created successfully.')->success();
        }

        $materialIds = $request->input('material_item_ids', []);
        $featuredPlanet->materials()->sync($materialIds);

        return redirect('admin/featured-planets/edit/' . $featuredPlanet->id);
    }

    public function postDeleteFeaturedPlanet(Request $request, $id)
    {
        $featuredPlanet = FeaturedPlanet::findOrFail($id);
        $featuredPlanet->delete();

        flash('Featured planet deleted successfully.')->success();
        return redirect('admin/featured-planets');
    }
}
