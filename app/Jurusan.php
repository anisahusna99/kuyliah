<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    protected $table = "jurusan";

    public function kampus(){
        return $this->hasMany('App\Kampus', 'jurusan_id');
    }
}
