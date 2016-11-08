<?php 
require_once("Modelo/Productos_model.php");

$producto=new Cls_Productos_Model();
$matrizproductos=$producto->get_productos();


require_once("Vista/Vista_Productos.php");

?>