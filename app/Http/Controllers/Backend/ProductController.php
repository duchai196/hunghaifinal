<?php

namespace App\Http\Controllers\Backend;

use App\Model\Brand;
use App\Model\Category;
use App\Model\Product;
use App\Model\ImgProduct;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index ()
    {
        $listProduct = Product::paginate(15);
        return view('admin.product.list', compact('listProduct'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create ()
    {
        $data = Category::where('category_type', 'product')->get();
        $listBrand = Brand::all();
//        $brand=Brand::all();
        return view('admin.product.add', compact('data', 'listBrand'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store (ProductRequest $request)
    {

        $product = new Product();
        $product->name = $request->name;
        $product->slug = str_slug($product->name);
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->price = $request->price;
        $product->sale_price = $request->sale_price;
        $product->short_description = $request->short_description;
        $product->description = $request->description;
        $product->image = $request->image;
        if ($request->status == "on") {
            $product->status = 1;
        }

        $product->seo_title = $request->title_seo;
        if ($request->featured == "on") {
            $product->featured = 1;
        }
        else
            $product->featured=0;

        $product->meta_description = $request->meta_description;
        $product->meta_keywords = $request->meta_keywords;


        $product->save();
        $id = $product->id;
        if ($request->imageDetail != null) {
            $imgDetails = $request->imageDetail;
            foreach ($imgDetails as $imgDetail) {
                $imgProduct = new ImgProduct();
                if (isset($imgDetail)) {
                    $imgProduct->product_id = $id;
                    $imgProduct->image = $imgDetail;
                    $imgProduct->save();
                }
            }
        }
        return redirect()->back()->with(['level' => 'success', 'message' => 'Thêm sản phẩm thành công!']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Product $product
     * @return \Illuminate\Http\Response
     */
    public function show (Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Product $product
     * @return \Illuminate\Http\Response
     */
    public function edit (Product $product)
    {
        $data = Category::where('category_type', 'product')->get();
        $listBrand = Brand::all();
        return view('admin.product.edit', compact('product', 'data', 'listBrand'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Model\Product $product
     * @return \Illuminate\Http\Response
     */
    public function update (Request $request, Product $product)
    {
        $product->name = $request->name;
        $product->slug = str_slug($product->name);
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->price = $request->price;
        $product->sale_price = $request->sale_price;
        $product->short_description = $request->short_description;
        $product->description = $request->description;
        $product->image = $request->image;
        if ($request->status == "on") {
            $product->status = 1;
        } else
            $product->status = 0;

        $product->seo_title = $request->title_seo;
        if ($request->featured == "on") {
            $product->featured = 1;

        } else
            $product->featured = 0;

        $product->meta_description = $request->meta_description;
        $product->meta_keywords = $request->meta_keywords;


        $product->save();
        $id = $product->id;
        if ($request->imageDetail != null) {
            $imgDetails = $request->imageDetail;
            foreach ($imgDetails as $imgDetail) {
                $imgProduct = new ImgProduct();
                if (isset($imgDetail)) {
                    $imgProduct->product_id = $id;
                    $imgProduct->image = $imgDetail;
                    $imgProduct->save();
                }
            }
        }
        return redirect()->back()->with(['level' => 'success', 'message' => 'Cập nhật sản phẩm thành công!']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Product $product
     * @return \Illuminate\Http\Response
     */
    public function destroy (Product $product)
    {
        //
    }

    /**
     * @param Request $request
     * @return string
     */
    public function ajax (Request $request)
    {

        if ($request->action == "delete") {
            $id = $request->id;
            if (Product::find($id)) {
                if (Product::find($id)->image != NULL) {
                    foreach (Product::find($id)->imageDetail as $item) {
                        $item->delete();
                    }
                }
                Product::destroy($id);
                return json_encode(true);
            } else
                return json_encode(false);

        }

    }
}
