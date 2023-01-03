<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class newsEventsResource extends JsonResource
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
            'title' => $this['title_'.$lang] != '' ? $this['title_'.$lang] : $this['title_en'],
            'description' => $this['description_'.$lang] != '' ? $this['description_'.$lang] : $this['description_en'],
            'image' => $this->image,
        ];
    }
}
