<?php

namespace App\Http\Controllers;
use App\Repositories\CupomRepository;
use App\Http\Requests\AdminCupomRequest;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use App\Http\Controllers\Controller;

class CupomsController extends Controller
{	

	private $repository;

	public function __construct(CupomRepository $repository){

		$this->repository = $repository;

	}
    
    public function index(){

        /*$user = new User();
        $user->name = 'Jhon';
        $user->email = 'jhon@user.com';
        $user->password = bcrypt(123456);
        $user->role = 'deliveryman';
        $user->save();
        */
        
    	$cupoms = $this->repository->paginate();

    	return view('admin.cupoms.index', compact('cupoms'));

    }

    public function create(){

    	return view('admin.cupoms.create');
    }

    public function store(AdminCupomRequest $request){

    	$data = $request->all();
    	$this->repository->create($data);

    	return redirect()->route('admin.cupoms.index');

    }

    public function edit($id){

    	$category = $this->repository->find($id);

    	return view('admin.categories.edit', compact('category'));
    }

    public function update(AdminCategoryRequest $request, $id){

    	$data = $request->all();
    	$this->repository->update($data, $id);

    	return redirect()->route('admin.categories.index');	

    }

}
