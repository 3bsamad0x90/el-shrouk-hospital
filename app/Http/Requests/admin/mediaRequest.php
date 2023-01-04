<?php

namespace App\Http\Requests\admin;

use Illuminate\Foundation\Http\FormRequest;

class mediaRequest extends FormRequest
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
            'categoryName_ar' => 'required|string',
            'categoryName_en' => 'required|string',
            'images' => 'required',
            'images.*' => 'image|mimes:png,jpg,jpeg',
        ];

    }

    public function messages()
    {
        return [
            'categoryName_ar.required' => 'يجب ادخال القسم باللغة العربية',
            'categoryName_en.required' => 'يجب ادخال القسم باللغة الانجليزية',
            'images.required' => 'يجب ادخال الصورة',
            'images.mimes' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
            'images.*.mimes' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
        ];
    }
}
