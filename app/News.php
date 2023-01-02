<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $guarded = [];
    public function photoLink(){
        $image = asset('AdminAssets/app-assets/icon/icon.png');
        if ($this->image != '') {
            $image = asset('uploads/news/'.$this->id.'/'.$this->image);
        }
        if(!file_exists(public_path('uploads/news/'.$this->id .'/'. $this->icon))){
            $image = asset('AdminAssets/app-assets/icon/icon.png');
        }
        return $image;
    }
}
