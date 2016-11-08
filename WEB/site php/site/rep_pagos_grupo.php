<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reporte de pagos</title>
</head>
<body marginheight="0" marginwidth="0" onload="window.print(); self.close();">

<?
function fecha($fecha_operar)
{
	$fecha_actual=mktime(0,0,0,date('m'),date('d'),date('Y'));
	list($dia,$mes,$año)=explode('/',$fecha_operar);
	$fecha_operar=mktime(0,0,0,$mes,$dia,$año);
	if ($fecha_actual > $fecha_operar){
	return 1; //print 'La fecha actual es mayor a la fecha de operación';
	}else {
	return 0; //print 'La fecha actual es menor a la fecha de operación';}
	}
}

include("conexion.php");
$con = new conexion();
$consulta = "call sp_busca_datos_grupo_numero_pagos(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_))
{
	$tmA = explode("-",$vector_['fecini']); $anio = $tmA[0];
	$secc = $vector_['seccion'];
	$desc = $vector_['nivel'];
	$tot_ = $vector_['numero']+1;
	$d_ini = $vector_['fecini'];
}
$d_act = strtotime(date("Y-m-d"));
?>

<table border="0" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr><td>&nbsp;</td></tr>
 <tr height="20px"><td align="center">Control de pagos - <?=$desc.' - '.$anio?></td></tr>
 <tr height="20px"><td align="center">Seccion <?=$secc?></td></tr>
 <tr><td>&nbsp;</td></tr>
</table>

<table border="1" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr height="25px">
  <td align="center" width="30px">Nº</td>
  <td width="300px" style="text-indent:15px">Apellidos y Nombres</td>
  <td width="20px" align="center">M</td>
  <? for($i=1;$i<=$tot_;$i++){?>
  <td width="25px" align="center">C<?=$i?></td>
  <? } ?>
 </tr>
 <?
 $p=0; $id_g = $_REQUEST['id'];
 $con = new conexion();
 $consulta = "call sp_lista_alumnos_grupo($id_g,0,0);";
 $respuesta = $con->consulta($consulta);
 while($vector = mysqli_fetch_array($respuesta)){ $p++; $id_p = $vector['idproceso'];
 ?>
 <tr height="25px">
  <td width="30px" align="center"><?=$p?></td>
  <td style="text-indent:15px"><?=$vector['alumno']?></td>
   <?
   $con = new conexion();
   $consulta = "call sp_lista_cuotas_pago_reporte($id_p);";
   $respuesta_ = $con->consulta($consulta);
   $cuo = 0;
   while($vector_ = mysqli_fetch_array($respuesta_)){
   ?>
  <td width="25px" align="center"><? if($vector_['estado']==1){ echo "X"; } ?></td>
  <!-- <td width="25px" align="center"><? if($vector_['estado']==1){ echo "X"; } ?></td> -->
  <? $cuo++; } ?>
 </tr>
 <? } ?>
</table><br />

<table border="0" cellpadding="0" cellspacing="0" align="center" style="font-family:verdana; font-size:12px">
<tr height="25px"><td colspan="12"><b>Detalle de pagos</b></td></tr>
<?
$con = new conexion();
$consulta = "call sp_lista_cuotas_pago_reporte($id_p);";
$respuesta_ = $con->consulta($consulta);
$p=0; $tr=0;
while($vector_ = mysqli_fetch_array($respuesta_)){
if($tr==0){echo "<tr height='20px'>";}
?>
  <td align="center" width="35px"><? if($p==0){echo "M";}else{echo "C".$p;}?></td>
  <td width="25px" align="center">=></td>
  <td align="center" width="100px"><? $fec=split("-",$vector_['fecpago']); echo $fec[2]."/".$fec[1]."/".$fec[0]; ?></td>
<? $p++; $tr++; if($tr==3){ $tr=0; echo "</tr>";} } ?>
</table>

</body>
</html>