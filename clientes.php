<?php
  $page_title = 'Lista de usuarios';
  require_once('includes/cargar.php');
?>
<?php
// Checkin What level user has permission to view this page
 page_require_level(2);
//pull out all user form database
 $all_usuarios = find_all_users();
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
   <div class="col-md-12">
     <?php echo display_msg($msg); ?>
   </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Clientes Registrados</span>
       </strong>
      </div>
     <div class="panel-body">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th class="text-center" style="width: 50px;">#</th>
            <th>Nombre </th>
            <th>Usuario</th>
            <th>Correo</th>
            <th>Direccion</th>
            <th class="text-center" style="width: 15%;">Rol de usuario</th>
            <th class="text-center" style="width: 10%;">Estado</th>
            <th style="width: 20%;">Último login</th>
            <th class="text-center" style="width: 100px;">Acciones</th>
          </tr>
        </thead>
        <tbody>
        <?php foreach($all_usuarios as $a_user): ?>
          <?php if($a_user['nivel_usuario'] === '3'): ?>
          <tr>
           <td class="text-center"><?php echo count_id();?></td>
           <td><?php echo remove_junk(ucwords($a_user['name']))?></td>
           <td><?php echo remove_junk(ucwords($a_user['nombre_usuario']))?></td>
           <td><?php echo remove_junk(ucwords($a_user['email']))?></td>
           <td><?php echo remove_junk(ucwords($a_user['direccion']))?></td>
           <td class="text-center"><?php echo remove_junk(ucwords($a_user['nombre_grupo']))?></td>
           <td class="text-center">
           <?php if($a_user['estado'] === '1'): ?>
            <span class="label label-primary"><?php echo "Activo"; ?></span>
          <?php else: ?>
            <span class="label label-danger"><?php echo "Inactivo"; ?></span>
          <?php endif;?>
           </td>
           <td><?php echo read_date($a_user['ultimo_acceso'])?></td>
           <td class="text-center">
             <div class="btn-group">
                <a href="editar_usuario.php?id=<?php echo (int)$a_user['id'];?>" class="btn btn-xs btn-primary" data-toggle="tooltip" title="Editar">
                  <i class="glyphicon glyphicon-pencil"></i>
               </a>
                <a href="eliminar_usuario.php?id=<?php echo (int)$a_user['id'];?>" class="btn btn-xs btn-danger" data-toggle="tooltip" title="Eliminar">
                  <i class="glyphicon glyphicon-remove"></i>
                </a>
                </div>
           </td>
          </tr>
          <?php endif;?>
        <?php endforeach;?>
       </tbody>
     </table>
     </div>
    </div>
  </div>
</div>
  <?php include_once('layouts/footer.php'); ?>
