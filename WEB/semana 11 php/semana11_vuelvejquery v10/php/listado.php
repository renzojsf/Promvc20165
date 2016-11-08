<?php require_once('Connections/cone.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? "'" . doubleval($theValue) . "'" : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

mysql_select_db($database_cone, $cone);
$query_con_prod = "SELECT * FROM productos";
$con_prod = mysql_query($query_con_prod, $cone) or die(mysql_error());
$row_con_prod = mysql_fetch_assoc($con_prod);
$totalRows_con_prod = mysql_num_rows($con_prod);
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
<table width="100%" border="1">
  <tr>
    <td>Nombre</td>
    <td>Descripcion</td>
    <td>Precio</td>
    <td>Stock</td>
    <td>Imagen</td>
    <td>&nbsp;</td>
  </tr>
 
    <?php do { ?>
     <tr>
      <td><?php echo $row_con_prod['pro_nom']; ?></td>
      <td><?php echo $row_con_prod['pro_des']; ?></td>
      <td><?php echo $row_con_prod['pro_precio']; ?></td>
      <td><?php echo $row_con_prod['pro_stock']; ?></td>
      <td>
	  <img src="img/<?php echo $row_con_prod['pro_img']; ?>.jpg" width="50" height="50" />
      </td>
      <td>&nbsp;</td>
      </tr>
      <?php } while ($row_con_prod = mysql_fetch_assoc($con_prod)); ?>

</table>
</body>
</html>
<?php
mysql_free_result($con_prod);
?>
