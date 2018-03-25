<?php

namespace App\Http\Controllers\FrontEnd;

use App\Model\Category;
use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PageController extends Controller
{
    public function getIndex ()
    {
        $listNewProduct = Product::where('status', 1)->orderBy('created_at', 'desc')->take(15)->get();
        $listFeaturedProducts = Product::where('status', 1)->where('featured', 1)->orderBy('created_at', 'desc')->take(6)->get();
        $listCategories = Category::where('category_type', 'product')->take(5)->get();


        return view('front.pages.index', compact('listFeaturedProducts', 'listCategories', 'listNewProduct'));

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
