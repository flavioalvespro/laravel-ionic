<?php

namespace App\Http\Controllers;
use App\Repositories\OrderRepository;
use App\Repositories\UserRepository;
use App\Repositories\ProductRepository;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Requests\CheckoutRequest;
use App\User;
use App\Http\Controllers\Controller;
use App\Services\OrderService;
use Auth;

class CheckoutController extends Controller
{	

	private $repository;
    private $userRepository;
    private $productRepository;
    private $service;

	public function __construct(OrderService $service, OrderRepository $repository, UserRepository $userRepository,ProductRepository $productRepository){

		$this->repository = $repository;
        $this->userRepository = $userRepository;
        $this->productRepository = $productRepository;
        $this->service = $service;

	}

    public function index(){

        $clientId = (int) $this->userRepository->find(Auth::user()->id)->client->id;
        $orders = $this->repository->scopeQuery(function($query) use($clientId){

            return $query->where('client_id', "=", $clientId);

        })->paginate();

        return view('customer.order.index', compact('orders'));

    }  

    public function create(){

        $products = $this->productRepository->all();

        return view('customer.order.create', compact('products'));
    }


    public function store(CheckoutRequest $request){

        $data = $request->all();
        $clientId = $this->userRepository->find(Auth::user()->id)->client->id;
        $data['client_id'] = $clientId;

        $this->service->create($data);

        return redirect()->route('customer.order.index');

    }
    

}
