<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Productbrand extends Model
{
    protected $table = 'product_brands';

    protected $fillable = ['name'];

    public $timestamp = true;

    public function product() {
        return $this->hasMany(Product::class, 'product_brands_id');
    }

}

