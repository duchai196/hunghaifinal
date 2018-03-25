<?php

namespace App\Http\Controllers\Backend;

use App\Model\Countdown;
use App\Model\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class CountDownController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        $listProduct=Product::where(['sale_price','!=',0],['status',1])->take(50)->get();
        $listProduct = DB::select(DB::raw("SELECT * FROM products WHERE  status=1 AND sale_price <> 0 "));
        dd($listProduct);
        return view('admin.setting.add', compact('listProducts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\app\Model\Countdown $countdown
     * @return \Illuminate\Http\Response
     */
    public function show(Countdown $countdown)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\app\Model\Countdown $countdown
     * @return \Illuminate\Http\Response
     */
    public function edit(Countdown $countdown)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\app\Model\Countdown $countdown
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Countdown $countdown)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\app\Model\Countdown $countdown
     * @return \Illuminate\Http\Response
     */
    public function destroy(Countdown $countdown)
    {
        //
    }
}
