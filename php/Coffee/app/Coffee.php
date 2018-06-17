<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coffee extends Model

{
    public $table = "coffee";

    protected $fillable = ['name', 'size'];

    public function getNameAttribute($value) {

      return strtoupper($value);

    }
    // before_save :set_name
    public function setNameAttribute($value) {

      $this->attributes['name'] = strtoupper($value);
    }
}
