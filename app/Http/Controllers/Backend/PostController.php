<?php

namespace App\Http\Controllers\Backend;

use App\Http\Requests\PostRequest;
use App\Model\Category;
use App\Model\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index ()
    {
        $listPosts = Post::paginate(15);
        return view('admin.post.list', compact('listPosts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create ()
    {
        $data = Category::where('category_type', 'post')->get();

        return view('admin.post.add', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store (PostRequest $request)
    {

        $post = new Post();
        $post->category_id = $request->category_id;
        $post->title = $request->name;
        $post->excerpt = $request->excerpt;
        $post->body = $request->body;
        $post->image = $request->image;
        $post->meta_description = $request->meta_description;
        $post->meta_keywords = $request->meta_keywords;

        $post->slug = str_slug($post->name);
        if ($request->featured == "on") {
            $post->featured = 1;
        } else
            $post->featured = 0;

        if ($request->status == "on") {
            $post->status = 1;
        } else
            $post->status = 0;
        $post->save();


        return redirect()->back()->with(['level' => 'success', 'message' => 'Thêm bài viết thành công!']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Post $post
     * @return \Illuminate\Http\Response
     */
    public function show (Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Post $post
     * @return \Illuminate\Http\Response
     */
    public function edit (Post $post)
    {
        $data = Category::where('category_type', 'post')->get();
        return view('admin.post.edit', compact('data', 'post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Model\Post $post
     * @return \Illuminate\Http\Response
     */
    public function update (Request $request, Post $post)
    {
        $post->category_id = $request->category_id;
        $post->title = $request->name;
        $post->excerpt = $request->excerpt;
        $post->body = $request->body;
        $post->image = $request->image;
        $post->meta_description = $request->meta_description;
        $post->meta_keywords = $request->meta_keywords;

        $post->slug = str_slug($post->name);
        if ($request->featured == "on") {
            $post->featured = 1;
        } else
            $post->featured = 0;

        if ($request->status == "on") {
            $post->status = 1;
        } else
            $post->status = 0;
        $post->save();


        return redirect()->back()->with(['level' => 'success', 'message' => 'Cập nhật bài viết thành công!']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Post $post
     * @return \Illuminate\Http\Response
     */
    public function destroy (Post $post)
    {
        //
    }

    public function ajax (Request $request)
    {
        // xoa danh muc
        if($request->action=="delete")
        {
            $id=$request->id;
            if(Post::find($id))
            {
                Post::destroy($id);
                return json_encode(true);
            }
            else
                return json_encode(false);

        }
    }
}
