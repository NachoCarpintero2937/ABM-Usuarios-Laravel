<?php

namespace App;

use DateTime;
use Exception;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public static function edit($params)
    {
        $response = [];
        $user =  User::find($params->id);
        if (!$params->id || !$params->name || !$params->email) {
            $response["data"] = null;
            $response['status'] = 0;
            $response['message'] = "Complete todos los campos con *";
            return $response;
            die;
        }
        if (!$user) {
            $response["data"] = null;
            $response['status'] = 0;
            $response['message'] = "Este usuario no existe";
            return $response;
            die;
        }
        try {
            $user->name = $params->name;
            $user->email = $params->email;
            $user->password = Hash::make($params->password);
            if (!$user->save()) {
                throw new Exception("Error al updatear");
            } else {
                $response = [
                    "data" => $user,
                    "status" => 1,
                    "message" => "Usuario actualizado correctamente"
                ];
            }
        } catch (\Exception $e) {
            $response = [
                "data" => [],
                "status" => 0,
                "message" => $e->getMessage()
            ];
        }
        return $response;
    }
    public static function create($params)
    {
        $response = [];
        if (!$params->name || !$params->email || !$params->password) {
            $response["data"] = null;
            $response['status'] = 0;
            $response['message'] = "Por favor complete todos los campos";
            return $response;
            die;
        }
        // checkeo que el email no exista en la bd
        $check_email =  User::where('email', $params->email)->first();
        if ($check_email) {
            $response["data"] = null;
            $response['status'] = 0;
            $response['message'] = "Este correo ya se encuentra registrado";
            return $response;
            die;
        }
        try {
            $user =  new User();
            $user->name = $params->name;
            $user->email = $params->email;
            $user->password = Hash::make($params->password);
            $user->created_at = new DateTime();
            if (!$user->save()) {
                throw new Exception("Error al guardar");
            } else {
                $response = [
                    "data" => [],
                    "status" => 1,
                    "message" => "Usuario creado correctamente"
                ];
            }
        } catch (\Exception $e) {
            $response = [
                "data" => [],
                "status" => 0,
                "message" => $e->getMessage()
            ];
        }
        return $response;
    }
    public  static function action_user($params)
    {
        $response = [];
        $user =  User::find($params->id);
        if (!$params->id) {
            $response["data"] = null;
            $response['status'] = 0;
            $response['message'] = "Campo id requerido";
            return $response;
            die;
        }
        if (!$user) {
            $response["data"] = null;
            $response['status'] = 0;
            $response['message'] = "Este usuario no existe";
            return $response;
            die;
        }
        try {
            $user->status = $params->status == 1 ? 0 : 1;
            if (!$user->save()) {
                throw new Exception("Error al updatear");
            } else {
                $response = [
                    "data" => [],
                    "status" => 1,
                    "message" => "Accion realizada correctamente"
                ];
            }
        } catch (\Exception $e) {
            $response = [
                "data" => [],
                "status" => 0,
                "message" => $e->getMessage()
            ];
        }
        return $response;
    }
}
