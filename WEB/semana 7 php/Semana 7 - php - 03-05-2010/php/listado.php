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

$currentPage = $_SERVER["PHP_SELF"];

$maxRows_reg_productos = 3;
$pageNum_reg_productos = 0;
if (isset($_GET['pageNum_reg_productos'])) {
  $pageNum_reg_productos = $_GET['pageNum_reg_productos'];
}
$startRow_reg_productos = $pageNum_reg_productos * $maxRows_reg_productos;

mysql_select_db($database_cone, $cone);
$query_reg_productos = "SELECT * FROM producto";
$query_limit_reg_productos = sprintf("%s LIMIT %d, %d", $query_reg_productos, $startRow_reg_productos, $maxRows_reg_productos);
$reg_productos = mysql_query($query_limit_reg_productos, $cone) or die(mysql_error());
$row_reg_productos = mysql_fetch_assoc($reg_productos);

if (isset($_GET['totalRows_reg_productos'])) {
  $totalRows_reg_productos = $_GET['totalRows_reg_productos'];
} else {
  $all_reg_productos = mysql_query($query_reg_productos);
  $totalRows_reg_productos = mysql_num_rows($all_reg_productos);
}
$totalPages_reg_productos = ceil($totalRows_reg_productos/$maxRows_reg_productos)-1;

$queryString_reg_productos = "";
if (!empty($_SERVER['QUERY_STRING'])) {
  $params = explode("&", $_SERVER['QUERY_STRING']);
  $newParams = array();
  foreach ($params as $param) {
    if (stristr($param, "pageNum_reg_productos") == false && 
        stristr($param, "totalRows_reg_productos") == false) {
      array_push($newParams, $param);
    }
  }
  if (count($newParams) != 0) {
    $queryString_reg_productos = "&" . htmlentities(implode("&", $newParams));
  }
}
$queryString_reg_productos = sprintf("&totalRows_reg_productos=%d%s", $totalRows_reg_productos, $queryString_reg_productos);
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
      <td><?php echo $row_reg_productos['pro_nom']; ?></td>
      <td><?php echo $row_reg_productos['pro_des']; ?></td>
      <td><?php echo $row_reg_productos['pro_precio']; ?></td>
      <td><?php echo $row_reg_productos['pro_stock']; ?></td>
      <td><img src="img/<?php echo $row_reg_productos['pro_img']; ?>.jpg" width="50"  height="50"/></td>
      <td>&nbsp;</td>
    </tr>
    
    <?php } while ($row_reg_productos = mysql_fetch_assoc($reg_productos)); ?>
</table>

<p><a href="<?php printf("%s?pageNum_reg_productos=%d%s", $currentPage, 0, $queryString_reg_productos); ?>">Primera</a> <a href="<?php printf("%s?pageNum_reg_productos=%d%s", $currentPage, max(0, $pageNum_reg_productos - 1), $queryString_reg_productos); ?>">Anterior</a> <a href="<?php printf("%s?pageNum_reg_productos=%d%s", $currentPage, min($totalPages_reg_productos, $pageNum_reg_productos + 1), $queryString_reg_productos); ?>">Siguiente</a> <a href="<?php printf("%s?pageNum_reg_productos=%d%s", $currentPage, $totalPages_reg_productos, $queryString_reg_productos); ?>">Ultima</a></p>
</body>
</html>
<?php
mysql_free_result($reg_productos);
?>
