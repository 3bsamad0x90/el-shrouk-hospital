<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class SpecificEventResource extends JsonResource
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
        $allImages = json_decode($this->images);
        return [
            'id' => $this->id,
            'title' => $this['title_'.$lang] != '' ? $this['title_'.$lang] : $this['title_en'],
            'description' => $this['description_'.$lang] != '' ? $this['description_'.$lang] : $this['description_en'],
            'images' => $allImages,
            'created_at' => Carbon::parse($this->created_at)->format('Y-m-d H:i A'),
        ];
    }
}
