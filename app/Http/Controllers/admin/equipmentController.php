<?php

namespace App\Http\Controllers\admin;

use App\Equipment;
use App\Http\Controllers\Controller;
use App\Http\Requests\admin\equipmentRequest;
use Illuminate\Http\Request;
use File;
use Response;

class equipmentController extends Controller
{
    public function index(){
        $equipments = Equipment::paginate(10);
        return view('AdminPanel.equipments.index',[
            'active' => 'equipments',
            'title' => "الأجهزة والأدوات",
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => "الأجهزة والأدوات"
                ]
            ]
        ], compact('equipments'));
    }
    public function store(equipmentRequest $request){
        $data = $request->except(['_token', 'icon', 'image']);
        $equipment = Equipment::create($data);
        if($request->has('image') && $request->has('icon')){
            $data['image'] = upload_image_without_resize('equipments/images/'.$equipment->id , $request->image );
            $data['icon'] = upload_image_without_resize('equipments/icons/'.$equipment->id , $request->icon );
            $equipment->update($data);
        }
        if($equipment){
            return redirect()->route('admin.equipments')
                            ->with('success','تم حفظ البيانات بنجاح');
        }else{
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }
    public function update(Request $request, $id){
        $equipment = Equipment::findOrFail($id);
        $data = $request->except(['_token','image','icon']);
        if($request->has('image')){
            if($equipment->image != '' && file_exists(public_path('uploads/equipments/images/'.$equipment->id .'/'. $equipment->image))){
                unlink(public_path('uploads/equipments/images/'.$equipment->id .'/'. $equipment->image));
            }
            $data['image'] = upload_image_without_resize('equipments/images/'.$equipment->id , $request->image );
        }
        if($request->has('icon')){
            if($equipment->icon != '' && file_exists(public_path('uploads/equipments/icons/'.$equipment->id .'/'. $equipment->icon))){
                unlink(public_path('uploads/equipments/icons/'.$equipment->id .'/'. $equipment->icon));
            }
            $data['icon'] = upload_image_without_resize('equipments/icons/'.$equipment->id , $request->icon );
        }
        
        $equipment->update($data);
        if ($equipment) {
            return redirect()->route('admin.equipments')
                            ->with('success','تم تعديل البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع تعديل البيانات');
        }
    }
    public function delete($id){
        // dd($id);
        $equipment = Equipment::find($id);
        if($equipment->icon != '' && file_exists(public_path('uploads/equipments/icons/'.$equipment->id .'/'. $equipment->icon))){
            File::deleteDirectory(public_path('uploads/equipments/icons/'.$equipment->id),);
        }
        if($equipment->image != '' && file_exists(public_path('uploads/equipments/images/'.$equipment->id .'/'. $equipment->image))){
            File::deleteDirectory(public_path('uploads/equipments/images/'.$equipment->id),);
        }
        if ($equipment->delete()) {
            return Response::json($id);
        } else {
            return Response::json("false");
        }
    }
}
