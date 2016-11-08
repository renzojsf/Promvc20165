<?
if(isset($_POST['dis']))
{
	$con = new conexion();
	$id_a = $_REQUEST['id'];
	$_dis = $_POST['hdi'];
	$t_co = split("-",$_POST['cod']);
	$_cod = $t_co[0].$t_co[1].$t_co[2].$t_co[3];
	$_nom = ucwords($_POST['nom']);
	$_sex = $_POST['sex'];
	$_dir = $_POST['dir'];
	$_cel = $_POST['cel'];
	$_fec = explode("/",$_POST['nac']);
	$_fec = $_fec[2]."-".$_fec[1]."-".$_fec[0];
	$_tlf = $_POST['tlf'];
	$consulta = "call sp_actualiza_datos_alumno($id_a,$_dis,'$_cod','$_nom','$_sex','$_dir','$_fec','$_tlf','$_cel');";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
}
?>

<script language="javascript" type="text/javascript">
function registra()
{
	if(confirm("Se actualizaran los datos del alumno.")){document.nuevo.submit();}
}
jQuery(function($){
   $('nom').alpha();
   $("#nac").mask("99/99/9999");
   $('#tlf').mask("(99)-999999");
   $("#cod").mask("99-999999-9999-9");
   $('#cel').numeric();
   $('#cod').numeric();
});
</script>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_alumno(".$_REQUEST['id'].");";
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
          <td colspan="3" style="color:#295886; font-weight:bold">Actualizacion de datos de alumno</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <?
         $con = new conexion();
         $consulta = "call sp_busca_padres_alumno(".$_REQUEST['id'].");";
         $respuesta = $con->consulta($consulta);
         while($vector = mysqli_fetch_array($respuesta)){
         $padre_m = "";
         $padre = split(" ",ucwords($vector['padre']));
         for($i=0;$i<sizeof($padre);$i++){ if($i==0){$padre_m .= "<b>".$padre[$i]."</b>&nbsp;";}else{$padre_m .= $padre[$i]."&nbsp;";}}
         ?>
         <tr height="35px">
          <td width="120px"><? if($vector['sexo']=='1'){echo "Padre";}else{echo "Madre";}?></td>
          <td style="font-size:13px"><?=$padre_m?></td>
          <td width="40px" align="center">&nbsp;</td>
         </tr>	
		<? } ?>
         <tr height="35px">
          <td>Distrito</td>
          <td><input type="text" value="<?=$vector_['ubicacion']?>" name="dis" id="dis" class="caja" readonly="true" style="width:320px"><input type="hidden" value="<?=$vector_['iddistrito']?>" name="hdi" id="hdi"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_nacionalidad.php',400,170);">Sel</a></td>
         </tr>
         <tr height="20px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td>Nombres</td>
          <td><input type="text" value="<?=$vector_['nombres']?>" name="nom" id="nom" class="caja" style="text-transform:capitalize;width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Direccion</td>
          <td><input type="text" value="<?=$vector_['direccion']?>" name="dir" id="dir" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Codigo</td>
          <td><input type="text" readonly="readonly" value="<?=$vector_['ideducando']?>" name="cod" id="cod" class="caja" accesskey="requerido=tamanioen:16" value="<?=date("y")?>-574625-0000-0" style="width:150px"></td>
         </tr>
         <tr height="35px">
          <td>Telefono</td>
          <td><input type="text" value="<?=$vector_['telefono']?>" name="tlf" id="tlf" class="caja" style="width:100px"> - <input type="text" value="<?=$vector_['celular']?>" name="cel" id="cel" class="caja" style="width:100px" maxlength="9"></td>
         </tr>
         <tr height="35px">
          <td>F Nacimiento</td>
          <td><input type="text" value="<? $tmp = explode("-",$vector_['fecnac']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?>" accesskey="requerido=valifecha=menorquee:<?=(date("Y")-2)?>" name="nac" id="nac" class="caja" style="width:100px"></td>
         </tr>
         <tr height="35px">
          <td>Sexo</td>
          <td><select name="sex" id="sex" style="font-family:verdana; font-size:12px; width:120px"><option value="1" <? if($vector_['sexo']=='1'){echo "selected";} ?>>Masculino</option><option value="0"<? if($vector_['sexo']=='0'){echo "selected";} ?>>Femenino</option></select></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=1&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<input type="button" onclick="registra();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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