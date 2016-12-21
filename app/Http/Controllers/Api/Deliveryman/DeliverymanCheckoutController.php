<?php

namespace App\Http\Controllers\Api\Deliveryman;
use App\Repositories\OrderRepository;
use App\Repositories\UserRepository;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Events\GetLocationDeliveryman;
use App\User;
use App\Models\Geo;
use App\Http\Controllers\Controller;
use App\Services\OrderService;
use LucaDegasperi\OAuth2Server\Facades\Authorizer;

class DeliverymanCheckoutController extends Controller
{	

	private $repository;
    private $userRepository;
    private $service;

    private $with = ['client', 'cupom', 'items'];

	public function __construct(OrderService $service, OrderRepository $repository, UserRepository $userRepository){

		$this->repository = $repository;
        $this->userRepository = $userRepository;
        $this->service = $service;

	}

    public function index(){

        $id = (int) Authorizer::getResourceOwnerId();
    
        $orders = $this->repository
        ->skipPresenter(false)
        ->with($this->with)->scopeQuery(function($query) use($id){

            return $query->where('user_deliveryman_id', "=", $id);

        })->paginate();

        return $orders;

    }  
    
    public function show($id){

        $idDeliveryman = (int) Authorizer::getResourceOwnerId();
        return $this->repository
        ->skipPresenter(false)
        ->getByIdAndDeliveryman($id, $idDeliveryman);

    }

    public function updateStatus(Request $request, $id){

        $idDeliveryman = (int) Authorizer::getResourceOwnerId();
        $id = (int) $id;

        return $this->service->updateStatus($id, $idDeliveryman, $request->get('status'));

    }

    public function geo(Request $request, Geo $geo, $id){

        $idDeliveryman = (int) Authorizer::getResourceOwnerId();
        $order = $this->repository->getByIdAndDeliveryman($id, $idDeliveryman);

        $geo->lat = $request->get('lat');
        $geo->long = $request->get('long');

        event(new GetLocationDeliveryman($geo,$order));

        return $geo;

    }

}
