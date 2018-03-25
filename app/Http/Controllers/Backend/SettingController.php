<?php

namespace App\Http\Controllers\Backend;

use App\Model\Setting;
use Hamcrest\Core\Set;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SettingController extends Controller
{
    public function index()
    {
        $values = Setting::all();
        return view('admin.setting.list', compact('values'));
    }

    public function create()
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

    public function edit(Setting $setting)
    {

        return view('admin.setting.edit', compact('setting'));
    }

    public function update($id, Request $request)
    {
        $this->validate($request, [
            'key' => 'required|max:50',
            'value' => 'required|max:255',
        ]);
        $setting = Setting::find($id);
        $setting->key = str_slug($request->key);
        $setting->value = $request->value;
        $setting->save();

        return redirect()->back()->with(['level' => 'success', 'message' => 'Cập nhật thành công']);
    }

    public function ajax(Request $request)
    {
        if ($request->action == "delete") {
            $id = $request->id;
            if (Setting::find($id)) {
                Setting::destroy($id);
                return json_encode(true);
            } else
                return json_encode(false);

        }
    }
}
