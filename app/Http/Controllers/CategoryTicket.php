<?php

namespace App\Http\Controllers;
use App\Department;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
session_start();
use Carbon\Carbon;

class CategoryTicket extends Controller
{
    public function add_ticket(){
        $department = Department::all();
        return view('admin.add_ticket', compact('department'));
    }

    // Function Show information of ticket
    public function all_ticket(){
        
        $all_ticket = DB::table('tbl_ad_ticket')->get()->map(function($tic) {
        $tic->created_at = Carbon::parse($tic->created_at)->format('h:i A -- d-m-Y');
        $tic->updated_at = Carbon::parse($tic->updated_at)->format('h:i A -- d-m-Y');
        return $tic;
        });

        $manager_ticket = view('admin.all_ticket')->with('all_ticket',$all_ticket);      
        return view('admin_layout')->with('admin.all_ticket',$manager_ticket);
    }

    // Function to save information of ticket in database
    public function save_ticket(Request $request){
        $data = array();
        $data['username'] = $request->name;
        $data['user_phone'] = $request->phone;
        $data['title'] = $request->title;
        $data['department_name'] = $request->department_name;
        $data['reception_form'] = $request->reception_form;
        $data['status'] = $request->status;
        $data['created_at'] = Carbon::now('Asia/Ho_Chi_Minh');

        // echo '<pre>';
        // print_r($data);
        // echo '</pre>';

        DB::table('tbl_ad_ticket')-> insert($data);
        Session::put('messageAdd','Add ticket successfull !!!!');
        return Redirect::to('add-ticket');

    }

    // Function to edit information of ticket
    public function edit_ticket($ticket_id){
        $edit_ticket = DB::table('tbl_ad_ticket')->where('id', $ticket_id)->get();
        $manager_ticket = view('admin.edit_ticket')->with('edit_ticket', $edit_ticket);
        return view('admin_layout')->with('admin.edit_ticket', $manager_ticket);

        // $department = Department::all();
        // return view('admin.add_ticket', compact('department'));
    }


    // Function to update information of ticket
    public function update_ticket(Request $request , $ticket_id){
        $data = array();
        $data['username'] = $request->name;
        $data['user_phone'] = $request->phone;
        $data['title'] = $request->title;
        $data['department_name'] = $request->department_name;
        $data['reception_form'] = $request->reception_form;
        $data['status'] = $request->status;
        $data['updated_at'] = Carbon::now('Asia/Ho_Chi_Minh');

        DB::table('tbl_ad_ticket')-> where('id',$ticket_id)->update($data);
        Session::put('messageUpdate','Update ticket successfull !!!!');
        return Redirect::to('all-ticket');
    }

    // Function to delete ticket
    public function delete_ticket($ticket_id){
        DB::table('tbl_ad_ticket')-> where('id',$ticket_id)->delete();
        Session::put('messageDelete','Delete ticket successfull !!!!');
        return Redirect::to('all-ticket');
    }
}
