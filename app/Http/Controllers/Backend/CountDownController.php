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
        $listCountdown = Countdown::all();
        return view('admin.setting.countdown.list', compact('listCountdown'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $listProducts = DB::select(DB::raw("SELECT * FROM products WHERE  status=1 AND sale_price <> 0 "));
        return view('admin.setting.countdown.add', compact('listProducts'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
            'datetime' => 'required',
        ]);

        $countdown = new Countdown();
        $countdown->product_id = $request->product_id;
        $countdown->datetime = $request->datetime;
        $countdown->save();

        return redirect()->route('countdown.index')->with(['level' => 'success', 'message' => 'Đã lưu cài đặt!', 'listCountdown' => Countdown::all()]);

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
        $listCountdown = Countdown::all();
        return view('admin.setting.countdown.edit', compact('countdown', 'listCountdown'));
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

        $this->validate($request, [
            'product_id' => 'required',
            'datetime' => 'required',
        ]);


        $countdown->product_id = $request->product_id;
        $countdown->datetime = $request->datetime;
        $countdown->save();

        return redirect()->route('countdown.index')->with(['level' => 'success', 'message' => 'Đã lưu cài đặt!']);
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

    public function ajax(Request $request)
    {
        if ($request->action == "delete") {
            $id = $request->id;
            if (Countdown::find($id)) {
                Countdown::destroy($id);
                return json_encode(true);
            }
            return false;
        }
    }
}
