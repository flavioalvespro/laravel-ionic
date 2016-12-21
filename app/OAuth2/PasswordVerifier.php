<?php

namespace App\OAuth2;
use Auth;

class PasswordVerifier {

	public function verify($username, $password)
  	{
      $credentials = [
        'email'    => $username,
        'password' => $password,
      ];

      if (Auth::once($credentials)) {
          return Auth::user()->id;
      }

      return false;
  	}	
}