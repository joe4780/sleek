<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PropertyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' =>$this->id,
            'name' => $this->property_name,
            'type' => $this->property_type,
            'description' => $this->property_description,
            'price' => $this->property_price,
            'status' => $this->property_status,
            'image' => $this->property_image,
            'location' => $this->property_location,
            'contact' => $this->property_contact,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
