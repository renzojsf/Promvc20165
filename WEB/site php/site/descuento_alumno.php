<?
if(isset($_POST['motivo']) and isset($_POST['mon']) and isset($_POST['fecini']))
{
	if(!empty($_POST['motivo']) and !empty($_POST['mon']) and !empty($_POST['fecini']))
	{
		$con = new conexion();
		$_mot = $_POST['motivo'];
		$_idc = $_POST['hfe'];
		$_mon = $_POST['mon'];
		$_fec = explode("/",$_POST['fecini']);
		$_fec = $_fec[2]."-".$_fec[1]."-".$_fec[0];
	
		$consulta = "call sp_agrega_descuento_1($_idc,".$_REQUEST['pro'].",$_mot,$_mon,'$_fec');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje="Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
function registra()
{
	var dsc = document.getElementById('motivo').value;
	if(dsc!=-1)
	{
		var fec = document.getElementById('hfe').value;
		if(fec.length>0)
		{
			if(confirm("Se registrara el descuento.")){document.nuevo.submit();}
		}
		else{ alert("Debe elegir una fecha de inicio del descuento."); }
	}
	else{ alert("Debe elegir un motivo para el descuento."); }
}
function calculo(pension,ind)
{
	var dsc = 0;
	if(ind>-1)
	{
		var por = document.getElementById('por').value.split('-');
		var can = por[ind-1];
		dsc = pension*can/100;
	}
	else{dsc = 0;}
	var mon = document.getElementById('mon');
	mon.value = dsc;
}
jQuery(function($){
   $('#mon').numeric();
   $("#fecini").mask("99/99/9999");
});
</script>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_alumno(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_a = $_REQUEST['id'];
$id_p = $_REQUEST['pro'];
?>

<table border="0" width="550px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="450px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registrar descuento para alumno</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="25px"><td width="100px">Codigo</td><td><?=$vector_['ideducando']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=4&id=<?=$_REQUEST['id']?>&ref=<?=$id_p?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
         <tr height="25px"><td width="100px">Alumno</td><td><? echo $vector_['apepaterno'].' '.$vector_['apematerno'].', '.$vector_['nombres']; ?></td></tr>
         <?
		$con = new conexion();
		$consulta = "call sp_detalle_proceso($id_p);";
		$respuesta_p = $con->consulta($consulta);
		while($vector_p = mysqli_fetch_array($respuesta_p)){ $pension = $vector_p['pension']; $estado = $vector_p['estado']; $descuento = $vector_p['descuento']; ?>
         <tr height="25px"><td width="100px" style="color:#660000"><b>Proceso</b></td><td><? if($vector_p['verano']=='1'){echo "<b>CV <font color='#800000'>".$vector_p['curso']."</font></b> ";}else{echo "<b>AE</b> ";} echo $vector_p['nivel']; ?> - [<font color="#336699"><? switch($vector_p['estado']){ case 0: $msg="Completado"; if($vector_p['idtipo']==1){ switch($vector_p['promovido']){ case 0: $msg="Repitente";break; case 1: $msg="Promovido";break; case 2: $msg="Requiere recuperacion";break; }} break; case 1: $msg="<b>Activo</b>";break; case 2: $msg="Anulado"; break;} echo $msg; ?></font>]</td></tr>
         <? } ?>
	 <tr height="25px"><td width="100px"></td><td colspan="2" style="color:#666666">Solo puede iniciar un descuento por proceso.</font></td></tr>
	 <tr height="15px"><td></td></tr>
	 <? if($descuento=='0'){ if($estado=='1'){ ?>
         <tr height="35px">
          <td width="120px">Motivo Desc</td>
          <td>
	  <select onchange="calculo(<?=$pension?>,this.value);" name="motivo" id="motivo" style="width:250px;cursor:pointer;">
	  <option value="-1">Seleccione</option>
	  <?
	  $con = new conexion();
	  $consulta = "select * from motivo";
	  $respuesta_m = $con->consulta($consulta);
	  while($vector_m = mysqli_fetch_array($respuesta_m)){ $porcentaje = $porcentaje . $vector_m['porcentaje'] . '-';
	  ?>
	  <option value="<?=$vector_m['idmotivo']?>"><?=$vector_m['motivo']?></option>
	  <? } ?>
	  </select>
	  <input type="hidden" value="<?=$porcentaje?>" name="por" id="por">
	  </td>
         </tr>
         <tr height="35px">
          <td>Fecha Inicio</td>
          <td><input type="text" name="fecini" id="fecini" class="caja" style="width:100px" readonly="true"><input type="hidden" name="hfe" id="hfe"></td>
	  <td width="40px" align="center"><a href="#" onclick="abrir('lista_selecciona_fecha_descuento.php?pro=<?=$_REQUEST['pro']?>',500,400);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Monto Desc</td>
          <td><input type="text" name="mon" value="00" id="mon" readonly="true" class="caja" style="width:60px"></td>
         </tr>
         <tr>
          <td colspan="3" align="right"><input type="button" onclick="registra();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
         </tr>
	 <? }else{ echo "<tr height='25px'><td colspan='3' align='center' style='color:red'>No se pueden agregar descuentos a procesos ya finalizados.</td></tr>"; }}else{echo "<tr height='25px'><td colspan='3' align='center' style='color:red'>Ya existe un descuento para este proceso.</td></tr>"; } ?>
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