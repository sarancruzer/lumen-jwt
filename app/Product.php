<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_name', 'product_price',
    ];

    
    public function user()
    {
        // return $this->belongsTo('App\User');
        // return $this->belongsTo(User::class);
        return $this->belongsTo('App\User', 'user_id', 'id');
        
    }
}
