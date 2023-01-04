<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\gallaryMediaResource;
use App\Http\Resources\MediaImagesResource;
use App\Media;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class gallaryMediaController extends Controller
{
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

    public function MediaImages(Request $request, $id)
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
        $MediaImages = Media::find($id);
        if(!$MediaImages){
            return response()->json(['status' => 'No Data', Response::HTTP_NOT_FOUND]);
        }
        $AllImages = json_decode($MediaImages->images);
        return response()->json($AllImages,  Response::HTTP_OK);
    }


}
