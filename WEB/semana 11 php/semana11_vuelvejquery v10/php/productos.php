<?php
session_start();

$_SESSION['nom']=array();
$_SESSION['precio']=array();
$_SESSION['canti']=array();
$_SESSION['pt']=array();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="thickbox.js"></script>
<link rel="stylesheet" type="text/css" href="thickbox.css">
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
Cantidad 
<input type="text" name="txt_canti" id="txt_canti" />
<br />
Pagina

<input type="text" name="txt_pag" id="txt_pag" />

<br />
Orden 

<select name="cbo_orden" id="cbo_orden">
  <option value="pro_nom">Nombre</option>
  <option value="pro_precio">Precio</option>
  <option value="pro_stock">Stock</option>
  <option value="pro_des">Descripcion</option>
</select>

<br />
Forma 
<select name="cbo_forma" id="cbo_forma">
  <option value="ASC">Ascendente</option>
  <option value="DESC">Descendente</option>
</select>
<br />
<input type="button" name="cbo_mostrar" id="cbo_mostrar" value="Enviar" />

<a href="carrito_mostrar.php?" class="thickbox">Ver Carritititito</a>

<div id="d_pro">
<?php include('listado2.php'); ?>
</div>
<script type="text/javascript">

$('#cbo_mostrar').click(function(){
	var canti = $('#txt_canti').val();
	var pag = $('#txt_pag').val();
	var orden = $('#cbo_orden').val();
	var forma = $('#cbo_forma').val();
	$('#d_pro').load(
		"listado2.php",
		{
			canti : canti,
			pag   : pag,
			orden : orden,
			forma : forma
		}
	)
})
</script>

</body>
</html>
