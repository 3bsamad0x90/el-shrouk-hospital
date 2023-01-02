<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Currencies;
use Response;

class CurrenciesController extends Controller
{
    public function index()
    {
        $currencies = Currencies::orderBy('name_'.session()->get('Lang'),'desc')->paginate(25);
        return view('AdminPanel.currencies.index',[
            'active' => 'currencies',
            'title' => trans('common.currencies'),
            'currencies' => $currencies,
            'breadcrumbs' => [
                [
                    'url' => '',
                    'text' => trans('common.currencies')
                ]
            ]
        ]);
    }

    public function store(Request $request)
    {
        $data = $request->except(['_token']);

        $currency = Currencies::create($data);
        if ($currency) {
            return redirect()->back()
                            ->with('success',trans('common.successMessageText'));
        } else {
            return redirect()->back()
                            ->with('faild',trans('common.faildMessageText'));
        }
        
    }

    public function update(Request $request, $id)
    {
        $currency = Currencies::find($id);
        $data = $request->except(['_token']);

        $update = Currencies::find($id)->update($data);
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
        $currency = Currencies::find($id);
        if ($currency->delete()) {
            return Response::json($id);
        }
        return Response::json("false");
    }

}
