<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Writers;
use App\Books;
use Response;
use App\Imports\WritersImport;
use Maatwebsite\Excel\Facades\Excel;

class WritersController extends Controller
{
    public function index()
    {
        $writers = Writers::orderBy('name_'.session()->get('Lang'),'desc')->paginate(25);
        return view('AdminPanel.writers.index',[
            'active' => 'writers',
            'title' => trans('common.writers'),
            'writers' => $writers,
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => trans('common.writers')
                ]
            ]
        ]);
    }
    public function books($id)
    {
        $books = Books::where('writer_id',$id)->orderBy('id','desc')->paginate(25);
        return view('AdminPanel.books.index',[
            'title' => trans('common.books'),
            'active' => 'books',
            'books' => $books,
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => trans('common.books')
                ]
            ]
        ]);
    }

    public function blockAction($id,$action)
    {
        $update = Writers::find($id)->update(['block'=>$action]);
        if ($update) {
            return redirect()->back()
                            ->with('success',trans('common.successMessageText'));
        } else {
            return redirect()->back()
                            ->with('faild',trans('common.faildMessageText'));
        }
    }

    public function store(Request $request)
    {
        $rules = [
            'name_ar' => 'required',
            'name_en' => 'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return redirect()->back()->withError()->withInput();
        }

        $data = $request->except(['_token','photo']);
        $writer = Writers::create($data);
        if ($request->photo != '') {
            $data['photo'] = upload_image_without_resize('writers/'.$writer->id , $request->photo );
            $writer->update($data);
        }
        if ($writer) {
            return redirect()->route('admin.writers')
                            ->with('success',trans('common.successMessageText'));
        } else {
            return redirect()->back()
                            ->with('faild',trans('common.faildMessageText'));
        }
        
    }

    public function update(Request $request, $id)
    {
        $writer = Writers::find($id);
        $data = $request->except(['_token','photo']);
        // return $data;
        if ($request->photo != '') {
            if ($writer->photo != '') {
                delete_image('writers/'.$id , $writer->photo);
            }
            $data['photo'] = upload_image_without_resize('writers/'.$id , $request->photo );
        }
        if (!isset($data['active'])) {
            $data['active'] = '0';
        }

        $update = Writers::find($id)->update($data);
        if ($update) {
            return redirect()->back()
                            ->with('success',trans('common.successMessageText'));
        } else {
            return redirect()->back()
                            ->with('faild',trans('common.faildMessageText'));
        }
        
    }

    public function delete($id)
    {
        $writer = Writers::find($id);
        if ($writer->photo != '') {
            delete_folder(public_path('uploads/writers/'.$id));
        }
        if ($writer->delete()) {
            return Response::json($id);
        }
        return Response::json("false");
    }
    
    
    public function storeExcel(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|file'
        ]);
        Excel::import(new WritersImport(auth()->user()->id), request()->file);
        // Excel::import(new ClientsImport($branch_id,$user_id), request()->excel('File'));

        $request->session()->put('PopSuccess', trans('Site.SavedSuccessfully'));
        return back();
    }
}
