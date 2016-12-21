<?php

namespace App\Transformers;

use League\Fractal\TransformerAbstract;
use App\User;

/**
 * Class ProductTransformer
 * @package namespace App\Transformers;
 */
class UserTransformer extends TransformerAbstract
{

    protected $availableIncludes = ['client'];
    /**
     * Transform the \Product entity
     * @param \User $model
     *
     * @return array
     */
    public function transform(User $model)
    {
        return [
            'id'         => (int) $model->id,
            'name'       => $model->name,
            'email' => $model->email,
            'role'      => $model->role,
            /* place your other model properties here */
        ];
    }

    public function includeClient(User $model){
        
        if($model->client){
            return $this->item($model->client, new ClientTransformer());    
        }else{
            return null;
        }
        
    }
}
