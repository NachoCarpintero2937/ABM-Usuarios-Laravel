@extends('layouts.app')

@section('content')

<div class="container">
    <div class="card">
        <div class="card-title ">
         <span class="title_span">
          {{$user->name}}
         </span>
        </div>
        <form  id="editar_user" action="javascript:void(0)" >
      
        <div class="card-body">
      
          <div class="form-group">
            <label class="label"> Nombre</label>
            <input type="text" {{ !$edit ? 'readonly' : '' }} name="name"  id="name"data-token="{{csrf_token()}}" class="form-control" value="{{$user->name}}">
            <input type="hidden" {{ !$edit ? 'readonly' : '' }} name="id" class="form-control" value="{{$user->id}}">
          </div>
          <div class="form-group">
            <label class="label"> Email</label>
            <input type="text" {{ !$edit ? 'readonly' : '' }}   name="email" id="email" class="form-control" value="{{$user->email}}">
            
          </div>
          @if(!$edit)
          <div class="form-group">
            <label class="label"> Fecha de alta</label>
            <input type="text" {{ !$edit ? 'readonly' : '' }}   class="form-control" value="{{date('d/m/Y H:i:s', strtotime($user->created_at))}}">

          </div>
          @if($user->updated_at)
          <div class="form-group">
            <label class="label"> Fecha de modificación</label>
            <input type="text" {{ !$edit ? 'readonly' : '' }}   class="form-control" value="{{date('d/m/Y H:i:s', strtotime($user->updated_at))}}">

          </div>
          @endif
          @endif
        </div>
        <div class="card-footer d-flex justify-content-center">
          <div class="p-1">
            <a class="btn btn-primary" href="{{route('usuarios')}}"> Volver</a>
          </div>
          
          @if($edit)
          <div class="p-1">
            <button class="btn btn-success" type="submit" > Guardar</button>
          </div>
        </a>
        @endif
      </form>
          </div>
    </div>
</div>

@endsection