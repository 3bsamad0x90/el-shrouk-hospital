<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Settings;
use Response;

class SettingsController extends Controller
{
    public function generalSettings()
    {
        $settings = Settings::get()->keyBy('key')->all();
        return view('AdminPanel.settings.index',
            [
                'title' => trans('common.setting'),
                'active' => 'setting',
                'settings' => $settings,
                'breadcrumbs' => [
                    [
                        'url' => '',
                        'text' => trans('common.setting')
                    ]
                ]
            ]);
    }

    public function updateSettings(Request $request)
    {
        $this->validate($request, [
            'logo'=>'nullable|file|mimes:jpeg,jpg,png,gif',
            'fav'=>'nullable|file|mimes:jpeg,jpg,png,gif',
            'imageMap'=>'nullable|file|mimes:jpeg,jpg',
            'socialPhoto'=>'nullable|file|mimes:jpeg,jpg,png,gif',
            'email' => 'nullable|email',
            'facebook' => 'nullable|url',
            'twitter' => 'nullable|url',
            'instagram' => 'nullable|url',
            'youtube' => 'nullable|url',
            'linkedin' => 'nullable|url',
            'whatsapp' => 'nullable|numeric|regex:/[0-9]{10}/',
            'mobile' => 'nullable|numeric|regex:/[0-9]{10}/',
            'phone' => 'nullable|numeric|regex:/[0-9]{10}/',
            'hotLine' => 'nullable|numeric',
            'ServicesTitle_ar' => 'nullable|string',
            'ServicesTitle_en' => 'nullable|string',
            'ServicesDes_ar' => 'nullable|string',
            'ServicesDes_en' => 'nullable|string',
        ]);

        //foreach inputs which is text ant textarea
        foreach ($_POST as $key => $value) {
            if ($key != '_token') {
                $setting = Settings::where('key', $key)->first();
                if ($setting == '') {
                    $setting = New Settings;
                    $setting->key = $key;
                    $setting->save();
                }
                $setting->value = $value;
                $setting->update();
            }
        }


        //foreach inputs which is file
        foreach ($_FILES as $key => $value) {
            //if thier was a file uploaded with in the post
            if ($request->hasFile($key)) {
                $FileExt = $request->$key->extension();

                //check if thier was an old file
                $countvalue = Settings::where('key', $key)->count();
                if ($countvalue > 0) {

                    $EditOldFile = Settings::where('key', $key)->first();
                    //delete old file and upload the new file

                    delete_image('settings' , $EditOldFile->value);
                    $file = upload_image_without_resize('settings' , $request->$key );

                    $EditOldFile->value = $file;
                    $EditOldFile->save();

                } else {
                    $file = upload_image_without_resize('settings' , $request->$key );
                    $NewFile = New Settings;
                    $NewFile->key = $key;
                    $NewFile->value = $file;
                    $NewFile->save();
                }
            }
        }


        session()->flash('success', trans('common.successMessageText'));
        return back();

    }

    public function deleteSettingPhoto($key)
    {
        $setting = Settings::where('key', $key)->first();
        if ($setting != '') {
            delete_image('uploads/settings' , $setting->value);
            $setting->value = '';
            $setting->update();
        }

        session()->flash('success', trans('common.successMessageText'));
        return back();
    }

}
