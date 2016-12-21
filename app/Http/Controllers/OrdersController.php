<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AdminClientRequest;
use App\Repositories\OrderRepository;
use App\Repositories\UserRepository;

use App\Http\Requests;
use App\User;
use App\Http\Controllers\Controller;

class OrdersController extends Controller
{	

    private $repository;

    public function __construct(OrderRepository $repository){

        $this->repository = $repository;

    }
	
    
    public function index(){

    	$orders = $this->repository->paginate();

    	return view('admin.orders.index', compact('orders'));

    }

    public function edit($id, UserRepository $userRepository){

        $order = $this->repository->find($id);

        $list_status = [0=>'Pendente', 1=>'A Caminho', 2=>'Entregue'];

        $deliveryman = $userRepository->findWhere(['role'=>'deliveryman']);

        return view('admin.orders.edit', compact('order', 'list_status', 'deliveryman'));
    }

    public function update(Request $request, $id){

        $all = $request->all();
        $this->repository->update($all, $id);

        return redirect()->route('admin.orders.index');

    }

    
}
