<?php

namespace App\Http\Controllers\Backend;

use App\Http\Requests\CategoryRequest;
use App\Model\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listCate=Category::with('parentCate')->get();
        return view('admin.category.list',compact('listCate'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $listCate=Category::all();
        return view('admin.category.add',compact('listCate'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {

            $category=new Category();
            $category->name=$request->name;
            $category->category_type=$request->category_type;
            $category->slug=str_slug($category->name);
            $category->parent_id=$request->parent_id;
            $category->save();
            return redirect()->back()->with([
                'level'=>'success',
                'message'=>'Thêm danh mục thành công!'
            ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        $listCate=Category::all();
        return view('admin.category.edit',compact('category','listCate'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, Category $category)
    {
        $category->name=$request->name;
        $category->category_type=$request->category_type;
        $category->slug=str_slug($category->name);
        $category->parent_id=$request->parent_id;
        $category->save();
        return redirect()->back()->with([
            'level'=>'success',
            'message'=>'Cập nhật thành công!'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
    public function  ajax(Request $request)
    {
        if ($request->action == "loadCate")
        {
            if($request->value)
            {
                $listCate=Category::where('category_type',$request->value)->get();
                echo "<option value='0'>-- Danh mục cha</option>";
                showCategories($listCate,0,$str="--| ",0);
            }
        }
        // xoa danh muc
        if($request->action=="delete")
        {
            $id=$request->id;
            if(Category::find($id)->subCategory!=null)
            {
                Category::destroy($id);
                return json_encode(true);
            }
            else
                return json_encode(false);

        }

    }
}
