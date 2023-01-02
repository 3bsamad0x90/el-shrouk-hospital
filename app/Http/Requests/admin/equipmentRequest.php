<?php

namespace App\Http\Requests\admin;

use Illuminate\Foundation\Http\FormRequest;

class equipmentRequest extends FormRequest
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
            'icon' => 'required|image|mimes:png',
            'image' => 'required|image|mimes:png,jpg,jpeg',

        ];
    }
}
