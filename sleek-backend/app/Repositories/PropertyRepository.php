<?php

namespace App\Repositories;

use App\Interfaces\PropertyRepositoryInterface;
use App\Models\Property;

class PropertyRepository implements PropertyRepositoryInterface
{
    /**
     * Create a new class instance.
     */
    public function __construct()
    {
        //
    }

    public function get()
    {
        return Property::all();
    }

    public function getById($id)
    {
        $property = Property::find($id);
        if ($property) {
            return $property;
        }

        return null;
    }

    public function add(array $property)
    {
        return Property::create($property);
    }

    public function edit(array $data, $id)
    {
        $property = Property::find($id);
        if ($property) {
            return Property::whereId($id)->update($data);
        }

        return null;
    }

    public function delete($id)
    {
        Property::destroy($id);
    }
}
