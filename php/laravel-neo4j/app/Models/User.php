<?php

namespace App\Models;

use NeoEloquent;

class User extends NeoEloquent
{
    protected $label = 'User';


    protected $fillable = [
        'first_name',
        'last_name'
    ];

    public function leagues()
    {
        return $this->belongsToMany('League', 'IS_MEMBER_OF');
    }
}
