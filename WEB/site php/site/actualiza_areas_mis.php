<?
if(isset($_POST['are']))
{
	if(!empty($_POST['are']))
	{
		$con = new conexion();
		$_are = ucwords($_POST['are']);

		$consulta = "call sp_actualiza_area(".$_REQUEST['id'].",'$_are');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje = "Complete todos los campos.";}
}
?>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_area(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
?>

<table border="0" width="550px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="420px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Actuializacion de area</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="100px">Area</td>
          <td width="320px"><input type="text" name="are" id="are" class="caja" value="<?=$vector_['aarea']?>" style="width:320px"></td>
         </tr>
         <tr height="10px"><td colspan="2"></td></tr>
         <tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=29&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<input type="button" onclick="validaFormulario(document.nuevo,'Se actualizara el area.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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
<? } ?>