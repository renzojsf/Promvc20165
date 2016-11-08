<?
if(isset($_POST['pwd_a']) and isset($_POST['pwd_b']) )
{
	$con = new conexion();
	$id_u = $_REQUEST['usu'];
	$_pwa = md5($_POST['pwd_a']);
	$consulta = "call sp_actualiza_clave_usuario_adm($id_u,'$_pwa');";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
}
?>

<script language="JavaScript" type="text/javascript">
function actualizar()
{
	var a =  document.getElementById('pwd_a');
	var b =  document.getElementById('pwd_b');
	if(a.value.length>0 && b.value.length>0)
	{
		if(a.value==b.value)
		{
			document.forms.actualiza.submit();
		}
		else{alert("Las claves no coinciden");a.value="";b.value="";a.focus();}
	}
	else{alert("Ingrese ambos campos");}
}
</script>
<?
$con = new conexion();
$consulta = "call sp_busca_datos_personal(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_p = $_REQUEST['id'];
$id_u = $_REQUEST['usu'];
?>
<table border="0" width="470px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">

       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Personal</td><td><?=$vector_['personal']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=24&id=<?=$_REQUEST['id']?>&ref=<?=$id_u?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Tipo</td><td><?=$vector_['tipo']?></td></tr>

	<?
	$con = new conexion();
	$consulta = "call sp_detalle_usuario(".$_REQUEST['usu'].");";
	$respuesta_d = $con->consulta($consulta);
	while($vector_d = mysqli_fetch_array($respuesta_d)){
	$estado = $vector_d['estado'];
	?>
	<tr height="25px"><td width="100px" style="text-indent:15px">Usuario</td><td>[<?=$vector_d['cargo']?>] <b><?=$vector_d['usuario']?></b></td></tr>
   	<tr height="25px"><td width="100px" style="text-indent:15px">Estado</td><td><? if($estado=='1'){echo "Disponible";}else{echo "Bloqueado";}?></b></td></tr>
	<? } ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
	 <td>&nbsp;</td>
         <td colspan="2">

		<table border="0" align="left" width="300px" cellpadding="0" cellspacing="0">
		<tr>
		<td colspan="2">
		<form name="actualiza" id="actualiza" method="post">
		<table border="0" cellpadding="0" cellspacing="1" align="left" style="font-family:verdana; font-size:12px; color:#000000">
			<? if($estado=='1'){ ?>
			<tr height="30px"><td width="80px">Nueva</td><td><input type="password" name="pwd_a" id="pwd_a" class="caja" maxlength="15" style="width:135px"></td></tr>
			<tr height="30px"><td width="80px">Confirme</td><td><input type="password" name="pwd_b" id="pwd_b" class="caja" maxlength="15" style="width:135px"></td></tr>
			<tr height="45px"><td></td><td colspan="2" align="right"><input type="button" onclick="actualizar();" name="btn_guardar" value="Cambiar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td></tr>
			<? }else{ ?>
			<tr height="30px"><td>No es posible actualizar la clave.</td></tr>
			<? } ?>
		</table>
		</form>
		</td>
		</tr>
		</table>
	</td>
	</tr>
	</table>
      </td>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><?=$mensaje?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>