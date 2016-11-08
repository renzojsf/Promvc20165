<?php
include('Connections/cone.php');

if( isset($_POST['forma']) ){
	$forma = $_POST['forma'];
}else{
	$forma = 'ASC';
}


if( isset($_POST['orden']) ){
	$orden = $_POST['orden'];
}else{
	$orden = 'pro_nom';
}

if( isset($_POST['pag']) ){
	$pag = $_POST['pag'];
}else{
	$pag = 1;
}

if(  isset($_POST['canti']) ){
	$canti = $_POST['canti'];
}else{
	$canti = 4;
}

$li = ($pag-1) * $canti;

$sql = "
			SELECT 
				pro_nom,
				pro_des,
				pro_precio,
				pro_stock,
				pro_img
			FROM producto
			ORDER BY $orden $forma
			LIMIT $li, $canti
		";

$query = mysql_query($sql);

$res = mysql_fetch_assoc($query);



?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
<table width="100%" border="1">
  <tr>
    <td>Nombre</td>
    <td>Descipcion</td>
    <td>Precio</td>
    <td>Stock</td>
    <td>Imagen</td>
    <td>&nbsp;</td>
  </tr>
  <?php
  do{
  ?>
  <tr>
    <td><?php echo $res['pro_nom'] ?></td>
    <td><?php echo $res['pro_des'] ?></td>
    <td><?php echo $res['pro_precio'] ?></td>
    <td><?php echo $res['pro_stock'] ?></td>
    <td>
    
	<img src="img/<?php echo $res['pro_img'] ?>.jpg" width="50" height="50"  />
    
    </td>
    <td>&nbsp;</td>
  </tr>
  <?php
  }while($res = mysql_fetch_assoc($query));
  ?>
</table>
</body>
</html>
