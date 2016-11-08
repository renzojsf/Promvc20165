<?
if(isset($_REQUEST['cu']) and strlen($_REQUEST['cu'])>0)
{
	$con = new conexion();
	$consulta = "call sp_quita_curso_curricula(".$_REQUEST['cu'].");";
	$respuesta = $con->consulta($consulta);
	$mensaje = "El curso fue eliminado de la curricula";
}


if((isset($_POST['niv']) || isset($_POST['t_tipo'])) && isset($_POST['ano']))
{
	if((!empty($_POST['niv']) || isset($_POST['t_tipo'])) && !empty($_POST['ano']))
	{
		$con = new conexion();
		$_niv = $_POST['hni'];
		$_ano = $_POST['ano'];
		if(isset($_POST['t_tipo'])){$_ver='1';}else{$_ver='0';}
		if(strlen($_POST['ch'])>0){$_cur = implode(",",$_POST['ch']);}else{$_cur="";}
	
		$consulta = "call sp_actualiza_curricula(".$_REQUEST['id'].",'$_niv','$_ano','$_cur','$_ver');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje="Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
function registra()
{
	if(confirm("Se actualizaran los datos de la curricula.")){document.nuevo.submit();}
}
jQuery(function($){
   $('#ano').numeric();
});
function verifica_tipo(obj,num)
{
	var chk = document.getElementById('t_tipo');
	if(chk.checked==true && obj.checked==true)
	{
		checkState(document.forms.nuevo,false);
		chk.checked=true;
		if(num==0)
		{
			obj.checked=true;
		}
	}
}
function on_click(obj)
{
	var txt = document.getElementById('des');
	if(obj.checked==true)
	{
		checkState(document.forms.nuevo,false);
		obj.checked=true;
		txt.value = '';
		txt.readOnly = true;
		txt.disabled = true;
	}
	else
	{
		txt.readOnly = false;
		txt.disabled = false;
		txt.focus();
	}
}
</script>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_curricula(".$_REQUEST['id'].");";
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
        <table border="0" width="500px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de curricula</td>
         </tr>
         <tr height="15px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Nivel</td>
          <td><input type="text" name="niv" id="niv" accesskey="requerido" value="<?=$vector_['nivel']?>" class="caja" readonly style="width:380px" /><input type="hidden" value="<?=$vector_['idgrado']?>" name="hni" id="hni"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_nivel.php',400,100);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td width="120px">&nbsp;</td>
          <td><table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="font-size:12px;font-family:verdana"><tr><td width="25px" align="left"><input onclick="on_click(this);" type="checkbox" <? if($vector_['verano']=='1'){ echo "checked";} ?> name="t_tipo" id="t_tipo" value="1" style="cursor:pointer" title="Curso de verano"></td><td>Este proceso es un curso de verano</td></tr></table></td>
         </tr>
	 <tr height="10px"><td colspan="2"></td></tr>
	 <tr>
	  <td valign="top">Cursos actuales</td>
	  <td>
		<table border="0" width="380px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
		<?
		$con = new conexion();
		$consulta = "call sp_lista_cursos_curricula(".$_REQUEST['id'].");";
		$respuesta = $con->consulta($consulta);
		$cantidad = mysqli_num_rows($respuesta); $nume = 0;
		while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';} $nume++; ?>
		<tr>
		<td style="background-color:#<? echo $color; ?>">
		<table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
		<tr height="25px">
			<? if($vector_['estado']=='1'){ ?><td width="30px" align="center"><img src="img/borrar.png" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=<?=$_REQUEST['pag']?>&id=<?=$_REQUEST['id']?>&cu=<?=$vector['idcarga']?>';" style="cursor:pointer;" title="Eliminar curso de curricula"></td><? } ?>
			<td align="left" style="text-indent:10px"><?=$vector['curso']?></td>
		</tr>
		</table>
		</td>
		</tr>
		<? } if($cantidad==0){ echo "<tr><td>No se han agregado cursos a esta curricula.</td></tr><tr height='10px'><td colspan='2'></td></tr>";} ?>
		</table>
	  </td>
	 </tr>
     <? if($nume>0){ ?>
     <script>
	 	var chk = document.getElementById('t_tipo'); chk.disabled=true;
     </script>
     <? } ?>
	 <? if($vector_['estado']=='1'){ ?>
	 <tr>
	  <td valign="top">Cursos agregar</td>
	  <td>
		<table border="0" width="380px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
		<?
		$con = new conexion();
		$consulta = "call sp_lista_cursos(".$_REQUEST['id'].");";
		$respuesta = $con->consulta($consulta);
		$cantidad = mysqli_num_rows($respuesta);
		while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';} ?>
		<tr>
		<td style="background-color:#<? echo $color; ?>">
		<table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
		<tr height="25px">
			<td width="30px" align="center"><input type="checkbox" onclick="verifica_tipo(this,<?=$nume?>);" name="ch[]" id="ch[]" value="<?=$vector['idcurso']?>" style="cursor:pointer;"></td>
			<td align="left" style="text-indent:10px"><?=$vector['curso']?></td>
		</tr>
		</table>
		</td>
		</tr>
		<? } if($cantidad==0){ echo "<tr><td>No hay cursos dispobibles para agregar.</td></tr>";} ?>
		</table>
	  </td>
	 </tr>
	 <? } ?>
	 <tr height='10px'><td colspan='2'></td></tr>
         <tr height="35px">
          <td>A&ntilde;o</td>
          <td><?=$vector_['anio']?><input type="hidden" name="ano" id="ano" value="<?=$vector_['anio']?>" class="caja" style="width:60px" maxlength="4"></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=12&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<input type="button" onclick="registra();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
         </tr>
        </table>
        </form>
      </tr>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><?=$mensaje?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>