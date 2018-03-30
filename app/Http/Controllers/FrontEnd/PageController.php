<?php

namespace App\Http\Controllers\FrontEnd;

use App\Model\Category;
use App\Model\Product;
use DateTime;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getIndex ()
    {
        $listNewProduct = Product::where('status', 1)->orderBy('created_at', 'desc')->take(15)->get();
        $listFeaturedProducts = Product::where('status', 1)->where('featured', 1)->orderBy('created_at', 'desc')->take(6)->get();
        $listCategories = Category::where('category_type', 'product')->take(5)->get();
//        $dealsOfWeek= DB::table('products')
//            ->whereExists(function ($query) {
//                $query->select(DB::raw(1))
//                    ->from('countdowns')
//                    ->whereRaw('countdowns.product_id = products.id');
//            })
//            ->get();


        $dealsOfWeek = DB::table('products')
            ->join('countdowns', 'products.id', '=', 'countdowns.product_id')
            ->select('products.id', 'products.name', 'products.price', 'products.sale_price', 'products.image', 'products.image', 'countdowns.datetime')
            ->where('datetime', '>', Carbon::now())
            ->get();


//            if (is_string($item->datetime)){
//                $dateObject = DateTime::createFromFormat('Y-m-d H:i:s', $item->datetime);
//                echo  $dateObject->format('d');
//            }


        return view('front.pages.index', compact('listFeaturedProducts', 'listCategories', 'listNewProduct', 'dealsOfWeek'));

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
