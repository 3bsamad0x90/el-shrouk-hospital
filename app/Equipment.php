<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Equipment extends Model
{
    protected $guarded = [];

    public function photoLink(){
        $image = asset('AdminAssets/app-assets/icon/icon.png');
        if ($this->image != '') {
            $image = asset('uploads/equipments/images/'.$this->id.'/'.$this->image);
        }
        if(!file_exists(public_path('uploads/equipments/images/'.$this->id .'/'. $this->image))){
            $image = asset('AdminAssets/app-assets/icon/icon.png');
        }
        return $image;
    }

    public function iconLink(){
        $icon = asset('AdminAssets/app-assets/icon/icon.png');
        if ($this->icon != '') {
            $icon = asset('uploads/equipments/icons/'.$this->id.'/'.$this->icon);
        }
        if(!file_exists(public_path('uploads/equipments/icons/'.$this->id .'/'. $this->icon))){
            $icon = asset('AdminAssets/app-assets/icon/icon.png');
        }
        return $icon;
    }
}
