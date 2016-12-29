<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Repositories\UserRepository;
use Authorizer;
use Illuminate\Http\Request;

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

    public function updateDeviceToken(Request $request){
    	$id = Authorizer::getResourceOwnerId();
    	$deviceToken = $request->get('device_token');
    	return $this->userRepository->updateDeviceToken($id,$deviceToken);
    }


}
