<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class weCare extends Model
{
    protected $guarded = [];

    public function photoLink()
    {
        if ($this->icon != '') {
            $icon = asset('uploads/weCares/'.$this->id .'/'. $this->icon);
        }
        if(!file_exists(public_path('uploads/weCares/'.$this->id .'/'. $this->icon))){
            $icon = asset('AdminAssets/app-assets/icon/icon.png');
        }
        return $icon;
    }
}
