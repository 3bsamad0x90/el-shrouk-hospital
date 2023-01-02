<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\users\UpdateUser;
use Illuminate\Notifications\DatabaseNotification;
use Illuminate\Support\Facades\Validator;

use App\User;
use Auth;

class AdminPanelController extends Controller
{
    //
    public function index()
    {
        return view('AdminPanel.index',[
            'active' => 'panelHome',
            'title' => 'الرئيسية'
        ]);
    }

    public function EditProfile()
    {
        return view('AdminPanel.loggedinUser.my-profile',[
            'active' => 'my-profile',
            'title' => 'الملف الشخصي',
            'breadcrumbs' => [
                                [
                                    'url' => '',
                                    'text' => "الحساب"
                                ]
                            ]
        ]);
    }


    public function EditPassword()
    {
        return view('AdminPanel.loggedinUser.my-password',[
            'active' => 'my-password',
            'title' => "كلمة المرور",
            'breadcrumbs' => [
                                [
                                    'url' => '',
                                    'text' => "الأمان"
                                ]
                            ]
        ]);
    }

    public function updatePassword(Request $request)
    {
        $data = $request->except(['_token','password_confirmation']);

        $rules = [
                    'password' => 'required|confirmed',
                ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return redirect()->back()
                            ->withErrors($validator)
                            ->with('faild','لم نستطع حفظ البيانات');
        }
        $data['password'] = bcrypt($request['password']);

        $update = User::find(auth()->user()->id)->update($data);

        if ($update) {
            return redirect()->back()
                            ->with('success','تم حفظ البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('faild','لم نستطع حفظ البيانات');
        }

    }

    public function UpdateProfile(Request $request)
    {
        $data = $request->except(['_token','photo']);
        // return $data;
        if ($request->photo != '') {
            if (auth()->user()->photo != '') {
                delete_image('users/'.auth()->user()->id , auth()->user()->photo);
            }
            $data['photo'] = upload_image_without_resize('users/'.auth()->user()->id , $request->photo );
        }

        $update = User::find(auth()->user()->id)->update($data);
        if ($update) {
            return redirect()->back()
                            ->with('success','تم حفظ البيانات بنجاح');
        } else {
            return redirect()->back()
                            ->with('faild','لم نستطع حفظ البيانات');
        }

    }

    public function notificationDetails($id)
    {
        $Notification = DatabaseNotification::find($id);
        $Notification->markAsRead();

        if (in_array($Notification['data']['type'], ['newPublisher'])) {
            return redirect()->route('admin.publisherUsers.edit',['id'=>$Notification['data']['linked_id']]);
        }
        if (in_array($Notification['data']['type'], ['newPublisherMessage'])) {
            return redirect()->route('admin.contactmessages.details',['id'=>$Notification['data']['linked_id']]);
        }
        if (in_array($Notification['data']['type'], ['newBookReview'])) {
            return redirect()->route('admin.books.reviews',['id'=>$Notification['data']['linked_id']]);
        }

        return redirect()->back();
    }

    public function readAllNotifications()
    {
        auth()->user()->unreadNotifications->markAsRead();
        return back();
    }
}
