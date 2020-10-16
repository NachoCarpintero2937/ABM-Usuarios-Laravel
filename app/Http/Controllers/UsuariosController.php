<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsuariosController extends Controller
{
    public function index()
    {
        $users = [
            'Joel',
            'Ellie',
            'Tess',
            //...
        ];
        return view('./usuarios/usuarios', [
            'users' => $users
        ]);
    }
}
