<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\newsEventsResource;
use App\Http\Resources\SpecificEventResource;
use App\News;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class newsEventsController extends Controller
{
    public function newsEvents(Request $request)
    {
        $lang = $request->header('lang');
        if($lang == ''){
            $resArr = [
                'status' => 'failed',
                'message' => trans('api.pleaseSendLangCode'),
                'data' => []
            ];
            return response()->json($resArr);
        }
        $news_events = News::get();
        $staticNewsTitles =[
                'newsEventsTitle' => getSettingValue('NewsTitle_'.$lang),
                'newsEventsDes' => getSettingValue('NewsDes_'.$lang),
        ];
       $staticMediaTitles =[
                'gallaryMediaTitle' => getSettingValue('MediaTitle_'.$lang),
                'gallaryMediaDes' => getSettingValue('MediaDes_'.$lang),
        ];

        if(!$news_events){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(['news_events'=>newsEventsResource::collection($news_events), 'staticNewsTitles'=> $staticNewsTitles, 'staticMediaTitles'=> $staticMediaTitles], Response::HTTP_OK);
    }

    public function show(Request $request, $id){
        $lang = $request->header('lang');
        if($lang == ''){
            $resArr = [
                'status' => 'failed',
                'message' => trans('api.pleaseSendLangCode'),
                'data' => []
            ];
            return response()->json($resArr);
        }
        $news_event = News::find($id);
        if(!$news_event){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(new SpecificEventResource($news_event), Response::HTTP_OK);
    }
}
