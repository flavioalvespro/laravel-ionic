<?php

namespace App\Services;
use App\Repositories\OrderRepository;
use App\Repositories\CupomRepository;
use App\Repositories\ProductRepository;
use App\Services\OrderService;
use DB;
use App\Models\Order;
use Dmitrovskiy\IonicPush\PushProcessor;

class OrderService{

	private $orderRepository;
	private $cupomRepository;
	private $productRepository;
	private $pushProcessor;

	public function __construct(OrderRepository $orderRepository, CupomRepository $cupomRepository, ProductRepository $productRepository, PushProcessor $pushProcessor){


		$this->orderRepository = $orderRepository;
		$this->cupomRepository = $cupomRepository;
		$this->productRepository = $productRepository;
		$this->pushProcessor = $pushProcessor;

	}

	public function create(array $data){

		/*DB::beginTransaction();

		try{
		*/
			$data['status'] = 0;

			if(isset($data['cupom_id'])){
				unset($data['cupom_id']);
			}

			if(isset($data['cupom_code'])){
				
				$cupom = $this->cupomRepository->findByField('code', $data['cupom_code'])->first();
				$data['cupom_id'] = $cupom->id;
				$cupom->used = 1;
				$cupom->save();
				unset($data['cupom_code']);
			}

			$items = $data['items'];
			unset($data['items']);

			$order = $this->orderRepository->create($data);
			$total = 0;


			foreach ($items as $i) {

				$i['price'] = $this->productRepository->find($i["product_id"])->price;
				$i['product_id'] = $i["product_id"];
				$order->items()->create($i);
				$total += $i['price'] * $i['qtd'];

			}

			$order->total = $total;
			
			if(isset($cupom)){
				$order->total = $total - $cupom->value;
			}

			$order->save();	
			return $order;

	}


	
	public function updateStatus($id, $idDeliveryman, $status){

		$id = (int) $id;
		$idDeliveryman = (int) $idDeliveryman;

		$order = $this->orderRepository->getByIdAndDeliveryman($id, $idDeliveryman);
		
		$order->status = $status;

		switch ((int)$status) {
			case 1:
				if(!$order->hash){
					$order->hash = md5((new \DateTime())->getTimestamp());
				}
				$order->save();
				break;
			
			case 2:
				$user = $order->client->user;
				$order->save();
				$this->pushProcessor->notify([$user->device_token],[
					'message' => "Seu pedido {{$order->id}} acabou de ser entregue"
				]);
				break;
		}

		
		return $order;

	}


}