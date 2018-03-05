<?php

namespace App\Http\Controllers\FrontEnd;

use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PageController extends Controller
{
    public function getIndex ()
    {
        @newProduct=Product::where('status',1)->orderBy('created_at','desc')->paginate(15);
    }

    public function getShop ()
    {

    }
    public function getCate ($slug)
    {

    }
    public function getProduct ($slug)
    {

    }
    public function getBlog ()
    {

    }
    public function getPost ($slug)
    {

    }
}
