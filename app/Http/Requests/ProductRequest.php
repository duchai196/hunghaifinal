<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
                'name'=>'required|min:2|max:255',
        ];
    }
    public function messages()
    {
        return
        [
            'name.required'=>'Bạn chưa nhập tên sản phẩm',
            'name.min'=>'Tên sản phẩm lớn hơn 2 ký tự',
            'name.max'=>'Tên sản phẩm không vượt quá 255 ký tự'
        ];
    }
}

