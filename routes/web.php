<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('index','PageController@getIndex')->name('index');

Route::get('create-request', [
    'as'=>'createRequest',
    'uses'=>'PageController@getCreateRequest'
]);

Route::get('manage-request', [
    'as'=>'manageRequest',
    'uses'=>'PageController@getManageRequest'
]);

Route::get('manage-department', [
    'as'=>'manageDepartment',
    'uses'=>'PageController@getManageDepartment'
]);

Route::post('created-request', 'PageController@postCheckout')->name('createdRequest');


// Admin
Route::get('/admin-register','AdminController@getSignin');
Route::post('/save-register','AdminController@postSignin');

Route::get('/admin','AdminController@index');
Route::get('/dashboard','AdminController@show_dashboard');
Route::get('/logout','AdminController@logout');   
Route::post('/admin-dashboard','AdminController@dashboard');

// Admin manage ticket
Route::get('/add-ticket','CategoryTicket@add_ticket');

Route::get('/edit-ticket/{ticket_id}','CategoryTicket@edit_ticket');
Route::get('/delete-ticket/{ticket_id}','CategoryTicket@delete_ticket');

Route::get('/all-ticket','CategoryTicket@all_ticket');

Route::post('/save-ticket','CategoryTicket@save_ticket');
Route::post('/update-ticket/{ticket_id}','CategoryTicket@update_ticket');