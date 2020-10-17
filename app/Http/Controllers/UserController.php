<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('./usuarios/usuarios', [
            "users" => $users
        ]);
    }
    public function view_user($id, $edit)
    {
        $user = User::find($id);
        return view('./usuarios/ver-usuarios', [
            "user" => $user,
            "edit" => $edit,
            "response" => []
        ]);
    }
    public function edit_user(Request $request)
    {

        $user = User::edit($request);
        return view('./usuarios/ver-usuarios', [
            "user" => $user['data'],
            "edit" => true,
            "response" => $user
        ]);
    }
    public function action_user(Request $request)
    {
        $delete = User::action_user($request);
        return $delete;
    }
    public function create_user(Request $request)
    {
        $created =  User::create($request);
        return $created;
    }

    // API 
    public function getUsers()
    {
        $users = User::all();
        return $users;
    }
}
