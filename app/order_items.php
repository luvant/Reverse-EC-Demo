<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class order_items extends Model
{
    //
    protected $table='order_items';
    protected $primaryKey='id_order_item';
    public $timestamps = false;
}
