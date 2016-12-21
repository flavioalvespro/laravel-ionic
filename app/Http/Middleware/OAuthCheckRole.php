<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use LucaDegasperi\OAuth2Server\Facades\Authorizer;
use App\Repositories\UserRepository;

class OAuthCheckRole
{

    private $userRepository;

    public function __construct(UserRepository $userRepository){
        $this->userRepository = $userRepository;
    }
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $role)
    {

        $id = (int) Authorizer::getResourceOwnerId();
        $user = $this->userRepository->find($id);

        if($user->role != $role){
            abort('403', 'Access Forbidden');
        }
        return $next($request);
    }
}
