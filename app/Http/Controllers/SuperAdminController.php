<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
namespace App\Http\Controllers;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class SuperAdminController extends Controller
{
    

    public function index()
    {
    	$this->AdminAuthCheck();
    	return view("admin.dashboard");
    }

    public function logout()
    {
    	//Session::put('admin_name',null);
    	//Session::put('admin_id',null);
    	Session::flush();
    	return Redirect::to("/admin");
    }

    Public function AdminAuthCheck()
    {
    	$admin_id=Session::get("admin_id");
    	if($admin_id)
    	{

    	}
    	else
    	{
    		return Redirect::to("/admin")->send();
    	}
    }
}
