<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use PhpOffice\PhpSpreadsheet\Calculation\MathTrig\Random;

class gallaryMediaResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $lang = $request->header('lang');
        $ALLImages = json_decode($this->images);
        $count = count($ALLImages);
        $random = rand(0, $count-1);
        return [
            'id' => $this->id,
            'categoryName' => $this['categoryName_'.$lang] != '' ? $this['categoryName_'.$lang] : $this['categoryName_en'],
            'images' => $ALLImages[$random],
        ];
    }
}
