<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Repositories\UserRepository;
use Authorizer;

class UserController extends Controller
{	

	private $userRepository;

	public function __construct(UserRepository $userRepository){

		$this->userRepository = $userRepository;

	}

    public function authenticated(){

    	$id = Authorizer::getResourceOwnerId();
        return $this->userRepository->skipPresenter(false)->find($id);

    }  


}
