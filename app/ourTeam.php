<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ourTeam extends Model
{
    protected $guarded = [];
    public function photoLink()
    {
        if ($this->image != '') {
            $image = asset('uploads/ourTeam/'.$this->id.'/'.$this->image);
        }
        if(!file_exists(public_path('uploads/ourTeam/'.$this->id.'/'.$this->image))){
            $image = asset('AdminAssets/app-assets/icon/icon.png');
        }

        return $image;
    }
}
