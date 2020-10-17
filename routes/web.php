<?php

use App\Http\Controllers\UsuariosController;
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


// ****************USUARIOS************************//
Route::get('/', 'UserController@index')->name('usuarios');
Route::get('/ver-usuario/{id}/edit/{edit}', 'UserController@view_user')->name('ver-usuario');
Route::post('/edit-user', 'UserController@edit_user')->name('edit-user');
Route::post('/action-user', 'UserController@action_user')->name('action-user');
Route::post('/create_user', 'UserController@create_user')->name('create_user');
