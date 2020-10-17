@extends('layouts.app')

@section('content')

<div class="container">
    <div class="card">
        <div class="card-title ">
         <span class="title_span">
            Usuarios
         </span>
        </div>
        <div class="p-2 d-flex create_user">
            <button class="btn btn-success  btn-custom"  data-toggle="modal" data-target="#exampleModal" data-toggle="tooltip" data-placement="bottom" title="Crear usuario"> 
                <i class="fas fa-user-plus"></i>
            </button>
        </div>
        <div class="card-body">
            <table class="table" id="mi_tabla">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Email</th>
                    <th scope="col">Fecha de alta</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Acciones</th>
                  </tr>
                </thead>
                <tbody>
                    @foreach($users as $user)
                <tr>
                    <th scope="row">{{$user->id}}</th>
                  <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                  <td>{{date('d/m/Y', strtotime($user->created_at))}}</td>
                <td id="status-{{$user->id}}">{{$user->status == 1 ? 'ACTIVO' : 'INACTIVO'}}</td>
                  <td>
                      <div class="d-flex">
                        <div class="p-1">
                            <a class="btn btn-default btn-custom view"  href="{{route('ver-usuario', ['id'=> $user->id, 'edit'=>0])}}"  data-toggle="tooltip" data-placement="bottom" title="Ver usuario"> 
                              <i class="fas fa-eye"></i>
                            </a>
                        </div>
                        <div class="p-1">
                          @if($user->status == 1)
                          <button class="btn btn-danger btn-custom" data-token="{{csrf_token()}}" onclick="delUser({{$user->id}}, '{{$user->name}}',{{$user->status}})"  data-toggle="tooltip" data-id="{{$user->id}}" data-placement="bottom" title="Inactivar usuario">
                              <i class="fas fa-trash"></i>
                          </button>
                          
                          @else
                          <button class="btn btn-success btn-custom" data-token="{{csrf_token()}}" onclick="delUser({{$user->id}}, '{{$user->name}}',{{$user->status}})"  data-toggle="tooltip" data-id="{{$user->id}}" data-placement="bottom" title="Activar usuario">
                            <i class="fas fa-check"></i>
                        </button>
                          @endif
                          </div>
                          
                          <div class="p-1">
                              <a class="btn btn-primary btn-custom" data-toggle="tooltip"  href="{{route('ver-usuario', ['id'=> $user->id, 'edit'=>1])}}" data-placement="bottom" title="Editar usuario"> 
                                <i class="fas fa-pencil-alt"></i>
                              </a>
                          </div>
                      </div>
                  </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
        </div>
    </div>
</div>
@endsection
@extends('usuarios.crear-usuario')