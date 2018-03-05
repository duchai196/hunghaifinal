<?php

namespace App\Http\Controllers\Backend;

use App\Model\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listBrand=Brand::all();
        return view('admin.brand.list',compact('listBrand'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $listBrand=Brand::all();
        return view('admin.brand.add',compact('listBrand'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name'=>'required'
        ],[
            'name.required'=>'Bạn chưa nhập tên thương hiệu'
        ]);
        $brand=new Brand();
        $brand->name=$request->name;
        $brand->logo=$request->image;
        $brand->save();
        return redirect()->back()->with(['level'=>'success','message'=>'Thêm thương hiệu thành công!']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $brand=Brand::find($id);
        return view('admin.brand.edit',compact('brand'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'name'=>'required'
        ],[
            'name.required'=>'Bạn chưa nhập tên thương hiệu'
        ]);
        $brand=Brand::find($id);
        $brand->name=$request->name;
        $brand->logo=$request->image;
        $brand->save();
        return redirect()->back()->with(['level'=>'success','message'=>'Cập nhật thương hiệu thành công!']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function ajax(Request $request)
    {


        // xoa danh muc
        if($request->action=="delete")
        {
            $id=$request->id;
            if(Brand::find($id))
            {
                Brand::destroy($id);
                return json_encode(true);
            }
            else
                return json_encode(false);

        }
    }
}
