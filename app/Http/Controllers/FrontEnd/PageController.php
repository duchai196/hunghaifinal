<?php

namespace App\Http\Controllers\FrontEnd;

use App\Model\Category;
use App\Model\Product;
use App\Model\Slide;
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
    public function getIndex()
    {
        $listNewProduct = Product::select('id', 'name', 'products.price', 'products.sale_price', 'products.image', 'products.image')->where('status', 1)->orderBy('created_at', 'desc')->take(15)->get();
        $listCategories = Category::where('category_type', 'product')->take(5)->get();
        $dealsOfWeek = DB::table('products')
            ->join('countdowns', 'products.id', '=', 'countdowns.product_id')
            ->select('products.id', 'products.name', 'products.price', 'products.sale_price', 'products.image', 'products.image', 'countdowns.datetime')
            ->where('datetime', '>', Carbon::now())
            ->get();
        if (count($dealsOfWeek) == 0) {
            $listFeaturedProducts = Product::select('id', 'name', 'products.price', 'products.sale_price', 'products.image', 'products.image')->where('status', 1)->where('featured', 1)->orderBy('created_at', 'desc')->take(8)->get();
        } else
            $listFeaturedProducts = Product::select('id', 'name', 'products.price', 'products.sale_price', 'products.image', 'products.image')->where('status', 1)->where('featured', 1)->orderBy('created_at', 'desc')->take(6)->get();

        $slides = Slide::take(3)->where('status', 1)->where('type', 0)->get();
        $banner3Cot = Slide::take(3)->where('status', 1)->where('type', 1)->get();
        $banner2Cot = Slide::take(2)->where('status', 1)->where('type', 2)->get();


//            if (is_string($item->datetime)){
//                $dateObject = DateTime::createFromFormat('Y-m-d H:i:s', $item->datetime);
//                echo  $dateObject->format('d');
//            }


        return view('front.pages.index', compact('listFeaturedProducts', 'listCategories', 'listNewProduct', 'dealsOfWeek', 'slides', 'banner2Cot', 'banner3Cot'));

    }

    public function getShop()
    {

    }

    public function getCate($slug)
    {

    }

    public function getProduct($slug)
    {

    }

    public function getBlog()
    {

    }

    public function getPost($slug)
    {

    }
}
