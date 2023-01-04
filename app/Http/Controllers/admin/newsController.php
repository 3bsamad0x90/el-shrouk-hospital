<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\newRequest;
use App\News;
use Illuminate\Http\Request;
use File;
use Response;

class newsController extends Controller
{
    public function index(){
        $news = News::paginate(10);
        return view('AdminPanel.news.index',[
            'active' => 'news',
            'title' => "الأخبار و الأحداث",
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => "الأخبار و الأحداث"
                ]
            ]
        ], compact('news'));
    }
    public function store(newRequest $request){
        $data = $request->except(['_token', 'images']);
        $news = News::create($data);
        $allImages = array();
        if($files = $request->file('images')){
            foreach($files as $image){
                $imageData = upload_image_without_resize('news/'.$news->id , $image );
                $allImages[] = $imageData;
            }
            $data['images'] = json_encode($allImages);
            $news->update($data);
        }
        if($news){
            return redirect()->route('admin.news')
                            ->with('success','تم حفظ البيانات بنجاح');
        }else{
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }
    public function update(Request $request, $id){
        $news = News::findOrFail($id);
        $data = $request->except(['_token','image']);
        if($request->has('image')){
            if($news->image != '' && file_exists(public_path('uploads/news/'.$news->id .'/'. $news->image))){
                unlink(public_path('uploads/news/'.$news->id .'/'. $news->image));
            }
            $data['image'] = upload_image_without_resize('news/'.$news->id , $request->image );
        }
        $news->update($data);
        if ($news) {
            return redirect()->route('admin.news')
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
            'images.*.mimes' => 'يجب ان تكون الصورة من نوع png, jpg, jpeg',
        ]);
        $item = News::findOrFail($id);
        if($files = $request->File('images')){
            if($item->images != ''){
                $decoded_images = json_decode($item->images);
                foreach($decoded_images as $image){
                    unlink(public_path('uploads/news/'.$item->id .'/'. $image));
                }
            }
            $allImages = array();
            foreach($files as $image){
                $imageData = upload_image_without_resize('news/'.$item->id , $image );
                $allImages[] = $imageData;
            }
            $data['images'] = json_encode($allImages);
            $item->update($data);
        }
        if($item){
            return redirect()->route('admin.news')
                            ->with('success','تم حفظ البيانات بنجاح');
        }else{
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }
    public function delete($id){

        $new = News::find($id);

        if($new->images != ''){
            File::deleteDirectory(public_path('uploads/news/'.$new->id),);
        }
        if ($new->delete()) {
            return Response::json($id);
        } else {
            return Response::json("false");
        }
    }
}
