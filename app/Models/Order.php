<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Prettus\Repository\Contracts\Transformable;
use Prettus\Repository\Traits\TransformableTrait;
use App\User;
use App\Models\Cupom;

class Order extends Model implements Transformable
{
    use TransformableTrait;

    protected $fillable = ['client_id', 'user_deliveryman_id', 'total', 'status', 'cupom_id'];

    public function transform(){
        return [
            'order' => $this->id,
            'items' => $this->items
        ];
    }


    public function items(){

    	return $this->hasMany(OrderItem::class);
    }

    public function cupom(){

        return $this->belongsTo(Cupom::class, 'id');
    }

    public function deliveryman(){

    	return $this->belongsTo(User::class, 'id');
    }

    public function products(){

    	return $this->hasMany(Product::class);
    }

    public function client(){

        return $this->belongsTo(Client::class);
    }

}
