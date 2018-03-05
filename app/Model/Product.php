<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table="products";
    public function category()
    {
        return $this->belongsTo('App\Model\Category');
    }
    public  function brand()
    {
        return $this->belongsTo('App\Model\Brand');
    }
    public function imageDetail()
    {
        return $this->hasMany('App\Model\ImgProduct');
    }
}
