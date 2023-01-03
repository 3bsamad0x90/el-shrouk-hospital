<?php

namespace App\Http\Controllers\api;

use App\Equipment;
use App\Http\Controllers\Controller;
use App\Http\Resources\equipmentsResource;
use App\Http\Resources\gallaryMediaResource;
use App\Http\Resources\newsEventsResource;
use App\Http\Resources\ourTeamResource;
use App\Http\Resources\ServicesResource;
use App\Http\Resources\weCaresResource;
use App\Media;
use App\News;
use App\ourTeam;
use App\Services;
use App\weCare;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class StaticPagesController extends Controller
{
    public function services(Request $request)
    {
        $lang = $request->header('lang');
        if ($lang == '') {
            $resArr = [
                'status' => 'failed',
                'message' => trans('api.pleaseSendLangCode'),
                'data' => []
            ];
            return response()->json($resArr);
        }
        $services = Services::get();
        if(!$services){
            return response()->json(['status' => 'No Service', Response::HTTP_NOT_FOUND]);
        }

        return response()->json(ServicesResource::collection($services), Response::HTTP_OK);
    }

    public function weCares(Request $request)
    {
        $lang = $request->header('lang');
        if ($lang == '') {
            $resArr = [
                'status' => 'failed',
                'message' => trans('api.pleaseSendLangCode'),
                'data' => []
            ];
            return response()->json($resArr);
        }
        $weCare = weCare::get();
        if(!$weCare){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(weCaresResource::collection($weCare), Response::HTTP_OK);
    }

    public function ourTeam(Request $request)
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
        $ourteam = ourTeam::get();
        if(!$ourteam){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(ourTeamResource::collection($ourteam), Response::HTTP_OK);
    }
    public function equipments(Request $request)
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
        $equipments = Equipment::get();
        if(!$equipments){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(equipmentsResource::collection($equipments), Response::HTTP_OK);
    }
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
        if(!$news_events){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(newsEventsResource::collection($news_events), Response::HTTP_OK);
    }
    public function allMedia(Request $request)
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
        $allMedia = Media::get();
        if(!$allMedia){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        return response()->json(gallaryMediaResource::collection($allMedia), Response::HTTP_OK);
    }



    public function settings(Request $request){
        $lang = $request->header('lang');
        if ($lang == '') {
            $resArr = [
                'status' => 'failed',
                'message' => trans('api.pleaseSendLangCode'),
                'data' => []
            ];
            return response()->json($resArr);
        }
        $list = [
            'general_Settings' => [
                'siteTitle' => getSettingValue('siteTitle_'.$lang),
                'siteDescription' => getSettingValue('siteDescription_'.$lang),
            ],
            'mainPage' => [
                'mainPageTitle' => getSettingValue('mainPageTitle_'.$lang),
                'mainPageDesc' => getSettingValue('mainPageDesc_'.$lang),
                'mainPageImage' => getSettingImageLink('mainPageImage'),
            ],
            'weCare'=> [
                'weCareTitle' => getSettingValue('weCareTitle_'.$lang),
                'weCareImage' => getSettingImageLink('weCareImage'),
            ],
            'social' => [
                'facebook' => getSettingValue('facebook'),
                'twitter' => getSettingValue('twitter'),
                'instagram' => getSettingValue('instagram'),
                'youtube' => getSettingValue('youtube'),
                'whatsapp' => getSettingValue('whatsapp'),
                'linkedin' => getSettingValue('linkedin'),
            ],
            'siteLogo' => getSettingImageLink('logo'),
            'contact_data' => [
                'address' => getSettingValue('address_'.$lang),
                'email' => getSettingValue('email'),
                'phone' => getSettingValue('phone'),
                'hotLine' => getSettingValue('hotLine'),
                'map' => getSettingValue('map'),
                'imageMap' => getSettingImageLink('imageMap'),
            ],
            'aboutUs' => [
                'Description' => getSettingValue('aboutusDes_'.$lang),
                'boxes' => [
                    [
                        'title' => getSettingValue('aboutUs1title_'.$lang),
                        'desc' => getSettingValue('aboutUs1des_'.$lang),
                        'icon' => getSettingImageLink('aboutUs1icon'),
                    ],
                    [
                        'title' => getSettingValue('aboutUs2title_'.$lang),
                        'desc' => getSettingValue('aboutUs2des_'.$lang),
                        'image' => getSettingImageLink('aboutUs2icon'),
                    ],
                    [
                        'title' => getSettingValue('aboutUs3title_'.$lang),
                        'desc' => getSettingValue('aboutUs3des_'.$lang),
                        'image' => getSettingImageLink('aboutUs3icon'),
                    ],
                ],
            ],
        ];

        $resArr = [
            'status' => 'success',
            'data' => [$list]
        ];
        return response()->json($resArr, Response::HTTP_OK );
    }
}
