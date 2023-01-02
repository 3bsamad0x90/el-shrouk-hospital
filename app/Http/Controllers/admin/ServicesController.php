<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\ServiceRequest;
use App\Services;
use Illuminate\Http\Request;
use File;
use Response;

class ServicesController extends Controller
{
    public function index()
    {
        $services = Services::paginate(20);
        return view('AdminPanel.services.index',[
            'active' => 'services',
            'title' => "الخدمات",
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => "الخدمات"
                ]
            ]
        ], compact('services'));
    }

    public function store(ServiceRequest $request){
        // dd($request);
        $data = $request->except(['_token', 'icon']);
        $service = Services::create($data);
        if($request->hasFile('icon')){
            $data['icon'] = upload_image_without_resize('services/'.$service->id , $request->icon );
            $service->update($data);
        }
        if ($service) {
            return redirect()->route('admin.services')
                            ->with('success','تم حفظ البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }
    public function update(Request $request, $id)
    {
        // dd($request, $id);
        $service = Services::findOrFail($id);
        $data = $request->except(['_token', 'icon']);
        if($request->hasFile('icon')){
            if($service->icon != '' && file_exists(public_path('uploads/services/'.$service->id .'/'. $service->icon))){
                unlink(public_path('uploads/services/'.$service->id .'/'. $service->icon));
            }
            $data['icon'] = upload_image_without_resize('services/'.$service->id , $request->icon );
        }
        $service->update($data);
        if ($service) {
            return redirect()->route('admin.services')
                            ->with('success','تم تعديل البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع تعديل البيانات');
        }
    }
    public function delete($id){
        // dd($id);
        $service = Services::find($id);
        if($service->icon != '' && file_exists(public_path('uploads/services/'.$service->id .'/'. $service->icon))){
            File::deleteDirectory(public_path('uploads/services/'.$service->id),);
        }
        if ($service->delete()) {
            return Response::json($id);
        } else {
            return Response::json("false");
        }
    }

}
