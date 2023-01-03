<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

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
        return [
            'id' => $this->id,
            'categoryName' => $this['categoryName_'.$lang] != '' ? $this['categoryName_'.$lang] : $this['categoryName_en'],
            'images' => $this->images,
        ];
    }
}
