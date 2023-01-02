<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\admin\ourTeamRequest;
use App\ourTeam;
use Illuminate\Http\Request;
use File;
use Response;
class ourTeamController extends Controller
{
    public function index()
    {
        $ourTeams = ourTeam::paginate(20);
        return view('AdminPanel.ourTeam.index',[
            'active' => 'ourTeam',
            'title' => "فريقنا",
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => "فريقنا"
                ]
            ]
        ], compact('ourTeams'));
    }

    public function store(ourTeamRequest $request){
        // dd($request);
        $data = $request->except(['_token', 'image']);
        $member = ourTeam::create($data);
        if($request->hasFile('image')){
            $data['image'] = upload_image_without_resize('ourTeam/'.$member->id , $request->image );
            $member->update($data);
        }
        if ($member) {
            return redirect()->route('admin.ourTeam')
                            ->with('success','تم حفظ البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع حفظ البيانات');
        }
    }
    public function update(Request $request, $id)
    {
        // dd($request, $id);
        $member = ourTeam::findOrFail($id);
        $data = $request->except(['_token', 'image']);
        if($request->hasFile('image')){
            if($member->image != '' && file_exists(public_path('uploads/ourTeam/'.$member->id .'/'. $member->image))){
                unlink(public_path('uploads/ourTeam/'.$member->id .'/'. $member->image));
            }
            $data['image'] = upload_image_without_resize('ourTeam/'.$member->id , $request->image );
        }
        $member->update($data);
        if ($member) {
            return redirect()->route('admin.ourTeam')
                            ->with('success','تم تعديل البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('failed','لم نستطع تعديل البيانات');
        }
    }
    public function delete($id){
        // dd($id);
        $member = ourTeam::find($id);
        if($member->image != '' && file_exists(public_path('uploads/ourTeam/'.$member->id .'/'. $member->image))){
            File::deleteDirectory(public_path('uploads/ourTeam/'.$member->id),);
        }
        if ($member->delete()) {
            return Response::json($id);
        } else {
            return Response::json("false");
        }
    }
}
