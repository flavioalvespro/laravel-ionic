<?php

namespace App\Http\Controllers\Api\Client;
use App\Repositories\OrderRepository;
use App\Repositories\UserRepository;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use App\Http\Controllers\Controller;
use App\Services\OrderService;
use LucaDegasperi\OAuth2Server\Facades\Authorizer;
use App\Http\Requests\CheckoutRequest;

class ClientCheckoutController extends Controller
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
        $clientId = $this->userRepository->find($id)->client->id;
        $orders = $this->repository->skipPresenter(false)->with($this->with)->scopeQuery(function($query) use($clientId){

            return $query->where('client_id', "=", $clientId);

        })->paginate();

        return $orders;

    }  

    public function store(CheckoutRequest $request){

        $data = $request->all();
        $id = (int) Authorizer::getResourceOwnerId();
        $clientId = $this->userRepository->find($id)->client->id;
        $data['client_id'] = $clientId;

        $o = $this->service->create($data);
        
        return $this->repository->skipPresenter(false)->with($this->with)->find($o->id);

    }
    
    public function show($id){
        
        return $this->repository
        ->skipPresenter(false)
        ->with($this->with)->find($id);

    }

}
