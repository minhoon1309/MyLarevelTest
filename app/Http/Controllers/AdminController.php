<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Carbon\Carbon;
session_start();

class AdminController extends Controller
{
    public function index()
    {
        return view('admin_login');
    }

    public function show_dashboard()
    {
        return view('admin.dashboard');
    }


    // Function to login admin account
    public function dashboard(Request $request)
    {
        $admin_email = $request->admin_email;
        $admin_password = $request->admin_password;
        $result = DB::table('tbl_admin')->where('admin_email', $admin_email)->where('admin_password', $admin_password)->first();

        if ($result) {
            Session::put('admin_name', $result->admin_name);
            Session::put('admin_id', $result->admin_id);
            return Redirect::to('/dashboard');
        } else {
            Session::put('message', 'Username of password is incorrect !! Please enter again...');
            return Redirect::to('/admin');
        }
    }

    // Function to logout admin account
    public function logout()
    {
        Session::put('admin_name', null);
        Session::put('admin_id', null);
        return Redirect::to('/admin');
    }

    public function getSignin()
    {
        return view('admin_register');
    }

    public function postSignin(Request $request)
    {

        $this->validate($request,
            [
                'Email' => 'required|email|unique:tbl_admin,admin_email',
                'Password' => 'required|min:6|max:20',
                'Name' => 'required'
            ],
            [
                'Email.required' => 'Please enter email!!!',
                'Email.email' => '  Incorrect email format!!!',
                'Email.unique' => '  Email already in use!!!',
                'Password.required' => '  Please enter password!!!',
                'Password.min' => '  Password must be at least six characters'
            ]
        );

        $data = array();
        $data['admin_email'] = $request->Email;
        $data['admin_password'] = $request->Password;
        $data['admin_name'] = $request->Name;
        $data['admin_phone'] = $request->Phone;
        $data['created_at'] = Carbon::now('Asia/Ho_Chi_Minh');

        DB::table('tbl_admin')-> insert($data);
        Session::put('success','Registered successfull !!!!');
        return Redirect::to('admin-register');
    }
}
