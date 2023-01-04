<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\ServiceRequest;
use App\weCare;
use Illuminate\Http\Request;
use File;
use Response;
class weCareController extends Controller
{
    public function index()
    {
        $weCares = weCare::all();
        return view('AdminPanel.weCare.index',[
            'active' => 'weCare',
            'title' => "مميزاتنا",
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => "مميزاتنا"
                ]
            ]
        ], compact('weCares'));
    }
    public function store(ServiceRequest $request){

        $data = $request->except(['_token', 'icon']);
        $weCare = weCare::create($data);
        if($request->hasFile('icon')){
            $data['icon'] = upload_image_without_resize('weCares/'.$weCare->id , $request->icon );
            $weCare->update($data);
        }
        if ($weCare) {
            return redirect()->route('admin.weCares')
                            ->with('success','تم حفظ البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }

    public function update(Request $request, $id)
    {
        // dd($request, $id);
        $weCare = weCare::findOrFail($id);
        $data = $request->except(['_token', 'icon']);
        if($request->hasFile('icon')){
            if($weCare->icon != '' && file_exists(public_path('uploads/weCares/'.$weCare->id .'/'. $weCare->icon))){
                unlink(public_path('uploads/weCares/'.$weCare->id .'/'. $weCare->icon));
            }
            $data['icon'] = upload_image_without_resize('weCares/'.$weCare->id , $request->icon );
        }
        $weCare->status = 1;
        $weCare->update($data);
        if ($weCare) {
            return redirect()->route('admin.weCares')
                            ->with('success','تم تعديل البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع تعديل البيانات');
        }
    }
    public function delete($id){
        // dd($id);
        $weCare = weCare::find($id);
        // if($weCare->icon != '' && file_exists(public_path('uploads/weCares/'.$weCare->id .'/'. $weCare->icon))){
        //     File::deleteDirectory(public_path('uploads/weCares/'.$weCare->id),);
        // }
        $weCare->status = 0;
        $weCare->title_ar = '';
        $weCare->title_en = '';
        $weCare->description_ar = '';
        $weCare->description_en = '';
        if ($weCare->update()) {
            return Response::json($id);
        } else {
            return Response::json("false");
        }
    }
}
