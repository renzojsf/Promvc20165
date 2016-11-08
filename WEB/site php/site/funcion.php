<?
function permite($pag)
{
	$con = new conexion();
	$consulta = "call sp_valida_acceso('".$_SESSION['idusuario']."',$pag);";
	$respuesta_an = $con->consulta($consulta);
	while($vector_an = mysqli_fetch_array($respuesta_an)){$ret = $vector_an['estado'];}
	return $ret;
}
?>