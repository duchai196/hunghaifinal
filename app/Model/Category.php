<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function  subCategory()
    {
        return $this->hasMany('App\Model\Category','parent_id','id');
    }
    public function  product()
    {
        return $this->hasMany('App\Model\Product');
    }
    public function  post()
    {
        return $this->hasMany('App\Mode\Post');
    }
    public function parentCate()
    {
        return $this->belongsTo('App\Model\Category','parent_id');
    }
}
