<?php
namespace App\Repositories;

class BrandRepository {
    protected $brand;

    public function __construct($brand){
        $this->brand = $brand;
    }
    public function all() {
        return $this->brand->all();
        
    }

    public function find($id){
        return $this->brand->find($id);
        
    }

    public function create($attributes) {
        return $this->brand->create($attributes);
    }

    public function update($attributes) {
        return $this->brand->update($attributes);
    }

}

?>