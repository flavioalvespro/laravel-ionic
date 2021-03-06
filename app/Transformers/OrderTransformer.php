<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\Models\Order;
use Illuminate\Database\Eloquent\Collection;

/**
 * Class OrderTransformer
 * @package namespace App\Transformers;
 */
class OrderTransformer extends TransformerAbstract
{
    
    protected $availableIncludes = ['cupom', 'items', 'client'];

    /**
     * Transform the \Order entity
     * @param \Order $model
     *
     * @return array
     */
    public function transform(Order $model)
    {
        return [
            'id'         => (int) $model->id,
            'total' => (float) $model->total,
            'status' => $model->status,
            'hash' => $model->hash,
            'product_names' => $this->getArrayProductNames($model->items),
            /* place your other model properties here */

            'created_at' => $model->created_at,
            'updated_at' => $model->updated_at
        ];
    }

    protected function getArrayProductNames(Collection $items){

        $names = [];

        foreach ($items as $i) {
            $names[] = $i->product->name;
        }
        return $names;
    }

    public function includeClient(Order $model){
        return $this->item($model->client, new ClientTransformer());
    }

    public function includeCupom(Order $model){
        
        if(!$model->cupom){
            return null;
        }

        return $this->item($model->cupom, new CupomTransformer());

    }

    public function includeItems(Order $model){

        return $this->collection($model->items, new OrderItemTransformer());

    }
}
