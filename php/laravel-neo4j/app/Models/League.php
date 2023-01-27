<?php

namespace App\Models;

use NeoEloquent;

class League extends NeoEloquent
{
    protected $label = "League";

    protected $fillable = [
      'name'
    ];
}
