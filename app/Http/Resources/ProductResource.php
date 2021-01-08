<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class ProductResource extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' => $this->name,
            'desc' => $this->desc,
            'image' => $this->image,
            'price' => $this->price,
            'brand' => [
                'id' => $this->productBrand->id,
                'name' => $this->productBrand->name,
                'created_at' => $this->productBrand->created_at,
                'updated_at' => $this->productBrand->updated_at,
            ],
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at
        ];
    }
}
