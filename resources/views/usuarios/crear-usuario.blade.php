<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Crear usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="create_user" action="javascript:void(0);">
      <div class="modal-body">
        <div class="form-group">
          <label class="label"> Nombre</label>
        <input type="text" name="name" id="name" data-token="{{csrf_token()}}" class="form-control">

        </div>
        <div class="form-group">
          <label class="label"> Password</label>
          <input type="password"  name="password" id="password" class="form-control" >

        </div>
        <div class="form-group">
          <label class="label"> Email</label>
          <input type="text"  name="email" id="email" class="form-control" >

        </div>
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary"  data-dismiss="modal">Cerrar</button>
        <button  class="btn btn-primary" type="submit">Guardar</button>
      </div>
    </form>
    </div>
  </div>
</div>