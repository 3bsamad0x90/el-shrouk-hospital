<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ourTeamResource extends JsonResource
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
            'name' => $this['name_'.$lang] != '' ? $this['name_'.$lang] : $this['name_en'],
            'title' => $this['title_'.$lang] != '' ? $this['title_'.$lang] : $this['title_en'],
            'image' => $this->image,
        ];
    }
}
