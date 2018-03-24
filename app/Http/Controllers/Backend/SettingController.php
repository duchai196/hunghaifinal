<?php

namespace App\Http\Controllers\Backend;

use App\Model\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SettingController extends Controller
{
    public function index()
    {
        return view('admin.setting.add');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'key' => 'required|max:50',
            'value' => 'required|max:255',
        ]);
        $setting = new Setting();
        $setting->key = str_slug($request->key);
        $setting->value = $request->value;
        $setting->save();

        return redirect()->back()->with(['level' => 'success', 'message' => 'Lưu thành công']);


    }
}
