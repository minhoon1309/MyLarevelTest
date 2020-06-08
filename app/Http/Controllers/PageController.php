<?php

namespace App\Http\Controllers;

use App\Department;
use App\Email;
use App\Employee;
use App\Ticket;
use App\Customer;
use Carbon\Carbon;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class PageController extends Controller
{
    public function getIndex(Request $request){
        return view('page.trangchu');
    }

    public function getCreateRequest(Request $request){
        $department = Department::all();
        return view('page.CreateRequest', compact('department'));       
    }

    public function getManageRequest(Request $request){
        $ticket = Ticket::all()->map(function($tic) {
            $tic->created_at = Carbon::parse($tic->created_at)->format('h:i A -- d-m-Y');
            $tic->updated_at = Carbon::parse($tic->updated_at)->format('h:i A -- d-m-Y');
            return $tic;
        });

        return view('page.ManageRequest', compact('ticket'));
    }

    public function getManageDepartment(Request $request){
        $employee = Employee::all();
        return view('page.ManageDepartment', compact('employee'));
    }

    // Function to save ticket's information in database when customer create ticket
    public function postCheckOut(Request $request){
        
        $customer = new Customer();
        $customer->name = $request->name;
        $customer->email= $request->email;
        $customer->phone = $request->phone;
        $customer->save();

        $ticket = new Ticket;
        $ticket->customer_id = $customer->id;
        $ticket->created_at = Carbon::now('Asia/Ho_Chi_Minh');
        $ticket->title = $request->title;
        $ticket->department_id= $request->department;
        $ticket->reception_form = $request->receptionForm;
        $ticket->employee_id = 1; // Waitting update employee
        $ticket->reply = 0; // Waitting update information
        $ticket->status = 'Waitting Confirm'; // Waitting update information
        $ticket->save();

        return redirect()->route('manageRequest');
    }
}
