<!DOCTYPE html>
<html lang="es">
<head>
	<link rel="icon" type="image/png" sizes="96x96" href="Vista/imagen/android-icon-36x36.png">
	<title>Portal: Login</title>
	<meta charset="utf-8">
	<meta name="autor">
	<meta name="description" content="Portal Grupo RRR">
	<meta name="author" content="Renzo Rodriguez Valenzuela">
	<script type="text/javascript" src="vista/js/jquery-3.1.1.js"></script>
	<link rel="stylesheet" type="text/css" href="vista/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="vista/css/bootstrap-theme.css">
</head>
<body>
	<form action="<?php echo $_SERVER['PHP_SELF']?>" method="POST" id="log">
		<img src="vista/imagen/Logo.png"><br>
		<label>Nombre:</label><br>
		<input type="text" name="Usuario" id="Usuario" required><br>
		<label>Contraseña</label><br>
		<input type="password" name="Contrase" id="contrase" required ><br><br>
		<input type="submit" class=" " name="ingresar" value="Ingresar">	
	</form>
	<div id="error">
	</div>
	<script>
	</script>

	 <script >
    $(function(){
      $("#log").submit(function(){
        var data = $("#log :input").serialize();
        alert(data);
        return false;
      });
    });
  </script>

</body>
</html>