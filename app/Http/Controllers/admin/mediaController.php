<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;

use App\Http\Requests\admin\mediaRequest;
use App\Media;
use File;
use Illuminate\Http\Request;
use Response;

class mediaController extends Controller
{
    public function index(){
        $media = Media::paginate(10);
        return view('AdminPanel.media.index',[
            'active' => 'media',
            'title' => " المعرض والوسائط",
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => "المعرض والوسائط"
                ]
            ]
        ], compact('media'));
    }
    public function store(mediaRequest $request){
        // dd($request->all());

        $data = $request->except(['_token', 'images']);
        $item = Media::create($data);
        $allImages = array();
        if($files = $request->file('images')){
        //    dd($files);
            foreach($files as $image){
                $imageData = upload_image_without_resize('media/'.$item->id , $image );
                $allImages[] = $imageData;
            }
            $data['images'] = json_encode($allImages);
            $item->update($data);
        }
        if($item){
            return redirect()->route('admin.media')
                            ->with('success','تم حفظ البيانات بنجاح');
        }else{
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }
    public function update(mediaRequest $request, $id){

        $item = Media::findOrFail($id);
        $data = $request->except(['_token']);
        $item->update($data);
        if ($item) {
            return redirect()->route('admin.media')
                            ->with('success','تم تعديل البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع تعديل البيانات');
        }
    }

    public function updateImages(Request $request, $id){
        $request->validate([
            'images.*' => 'mimes:png,jpg,jpeg',
        ],
        [
            'images.mimes' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
            'images.*' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
        ]);
        $item = Media::findOrFail($id);
        if($files = $request->File('images')){
            if($item->images != ''){
                $decoded_images = json_decode($item->images);
                foreach($decoded_images as $image){
                    unlink(public_path('uploads/media/'.$item->id .'/'. $image));
                }
            }
            $allImages = array();
            foreach($files as $image){
                $imageData = upload_image_without_resize('media/'.$item->id , $image );
                $allImages[] = $imageData;
            }
            $data['images'] = json_encode($allImages);
            $item->update($data);
        }
        if($item){
            return redirect()->route('admin.media')
                            ->with('success','تم حفظ البيانات بنجاح');
        }else{
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }

    public function delete($id){
        $item = Media::find($id);

        if($item->images != ''){
            File::deleteDirectory(public_path('uploads/media/'.$item->id),);
        }
        if ($item->delete()) {
            return Response::json($id);
        } else {
            return Response::json("false");
        }
    }
}
