<?php

namespace App\Http\Controllers\Backend;

use App\Model\Slide;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SlideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listSlide = Slide::paginate(20);
        return view('admin.slide.list', compact('listSlide'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.slide.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'image' => 'required',
            'type' => 'required',
        ], [
            'image.required' => 'Bạn chưa chọn hình ảnh',
            'type.required' => 'Bạn chưa  chọn vị trí hình ảnh',
        ]);
        $slide = new Slide();
        $slide->title = $request->title;
        $slide->descriptions = $request->tidescriptionstle;
        $slide->link = $request->link;
        $slide->title_link = $request->title_link;
        $slide->image = $request->image;
        if ($request->status == "on") {
            $slide->status = 1;
        }
        $slide->type = $request->type;

        $slide->save();
        return redirect()->back()->with(['level' => 'success', 'message' => 'Thêm  banner thành công!']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Slide  $slide
     * @return \Illuminate\Http\Response
     */
    public function show(Slide $slide)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Slide  $slide
     * @return \Illuminate\Http\Response
     */
    public function edit(Slide $slide)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Slide  $slide
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Slide $slide)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Slide  $slide
     * @return \Illuminate\Http\Response
     */
    public function destroy(Slide $slide)
    {
        //
    }
}
