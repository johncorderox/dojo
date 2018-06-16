<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coffee extends Model

{
    public $table = "coffee";

    protected $fillable = ['name', 'size'];

}
