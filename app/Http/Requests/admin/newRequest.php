<?php

namespace App\Http\Requests\admin;

use Illuminate\Foundation\Http\FormRequest;

class newRequest extends FormRequest
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
            'title_ar' => 'required|string',
            'title_en' => 'required|string',
            'description_ar' => 'required|string',
            'description_en' => 'required|string',
            'images' => 'required',
            'images.*' => 'image|mimes:png,jpg,jpeg',
        ];
    }

    public function messages()
    {
        return [
            'title_ar.required' => 'يجب ادخال العنوان باللغة العربية',
            'title_en.required' => 'يجب ادخال العنوان باللغة الانجليزية',
            'description_ar.required' => 'يجب ادخال الوصف باللغة العربية',
            'description_en.required' => 'يجب ادخال الوصف باللغة الانجليزية',
            'image.required' => 'يجب ادخال الصورة',
            'images.mimes' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
            'images.*.image' => 'يجب ان يكون حقل الصورة من نوع صورة',
            'images.*.mimes' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
        ];
    }
}
