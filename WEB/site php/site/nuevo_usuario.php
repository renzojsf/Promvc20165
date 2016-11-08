<?
if(isset($_POST['car']) and isset($_POST['htr']) and isset($_POST['tra']) and isset($_POST['usu']))
{
	if(!empty($_POST['car']) and !empty($_POST['htr']) and !empty($_POST['tra']) and !empty($_POST['usu']))
	{
		$con = new conexion();
		$_car = $_POST['car'];
		$_tra = $_POST['htr'];
		$_usu = $_POST['usu'];
		$_cla = md5($_usu);

		$consulta = "call sp_nuevo_usuario($_car,$_tra,'$_usu','$_cla');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje = "Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
jQuery(function($){
   $('#usu').alpha();
});
</script>

<table border="0" width="550px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="500px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de nuevo usuario</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Cargo</td>
          <td>
	  <select name="car" id="car" style="cursor:pointer;width:150px;height:25px">
	  <?
	  $con = new conexion();
	  $consulta = "select * from cargo";
	  $respuesta = $con->consulta($consulta);
	  while($vector = mysqli_fetch_array($respuesta)){
	  ?>
	  <option value="<?=$vector['idcargo']?>"><?=$vector['cargo']?></option>
	  <? } ?>
	  </select>
	  </td>
         </tr>
         <tr height="35px">
          <td>Personal</td>
	  <?
	  if(isset($_REQUEST['id'])){
	  $con = new conexion();
	  $consulta = "call sp_busca_datos_personal(".$_REQUEST['id'].");";
	  $respuesta = $con->consulta($consulta);
	  while($vector = mysqli_fetch_array($respuesta)){ $nombre = $vector['personal'];}}
	  ?>
          <td><input type="text" name="tra" id="tra" accesskey="requerido" class="caja" value="<? if(isset($_REQUEST['id'])){echo $nombre;}?>" readonly="true" style="width:320px"><input type="hidden" name="htr" id="htr" value="<? if(isset($_REQUEST['id'])){echo $_REQUEST['id'];}?>"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_trabajador.php',400,300);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Usuario</td>
          <td><input type="text" name="usu" id="usu" accesskey="requerido" class="caja" style="width:320px"></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><? if(isset($_REQUEST['id'])){ ?><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=23&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<? } ?><input type="button" onclick="validaFormulario(document.nuevo,'Se registrara el usuario.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
         </tr>
        </table>
        </form>
      </td>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><?=$mensaje?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>