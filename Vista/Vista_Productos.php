<!DOCTYPE html>
<html lang="es">
<head>
	<link rel="icon" type="image/png" sizes="96x96" href="Vista/imagen/android-icon-36x36.png">
	<title>Portal: Productos</title>
	<meta charset="utf-8">
	<meta name="autor">
	<meta name="description" content="Portal Grupo RRR">
	<meta name="author" content="Renzo Rodriguez Valenzuela">
	<script type="text/javascript" src="vista/js/jquery-3.1.1.js"></script>
	<link rel="stylesheet" type="text/css" href="vista/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="vista/css/bootstrap-theme.css">
</head>
<body>

<section class="container">
  <div class="row">
      <?php 
      foreach ($matrizproductos as $registros) {
      ?>
      <div class="col-xs-12 col-sm-6 col-md-4 col-lg-8 ">
        <div class="well"> 
           <p><?php echo "Codigo:".$registros['Id']?></p>
           <p><?php echo "Nombre:". $registros['Nombre']?></p>
           <p><?php echo "Precio:". $registros['Precio']?></p>
           <img src="Vista/imagen/productos/<?php echo $registros['Foto']?>"><br>
           <a href="">Ver</a>
           </div>
        </div>
      <div class="col-xs-12 col-sm-6 col-md-4 col-lg-2">
        <div class="well">
         <p><?php echo "Marca:". $registros['Marca']?></p>
          <p><?php echo "Cantidad:". $registros['Cantidad']?></p>
         </div>
      </div>
      <?php 
       }
      ?>
      
  </div>
</section>
 
</body>
</html>