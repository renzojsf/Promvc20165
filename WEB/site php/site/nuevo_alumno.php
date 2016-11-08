<?
if(isset($_POST['hap']) and isset($_POST['ham']) and isset($_POST['nac']) and isset($_POST['dir']) and isset($_POST['sex']) and isset($_POST['nom']) and isset($_POST['cod']) and isset($_POST['hdi']))
{
	if(!empty($_POST['hap']) and !empty($_POST['ham']) and !empty($_POST['nac']) and !empty($_POST['dir']) and !empty($_POST['nom']) and !empty($_POST['cod']) and !empty($_POST['hdi']))
	{
		$con = new conexion();
		$_dis = $_POST['hdi'];
		$t_co = split("-",$_POST['cod']);
		$_cod = $t_co[0].$t_co[1].$t_co[2].$t_co[3];
		$_nom = ucwords($_POST['nom']);
		$_sex = $_POST['sex'];
		$_dir = ucfirst($_POST['dir']);
		$_cel = $_POST['cel'];
		$_fec = explode("/",$_POST['nac']);
		$_fec = $_fec[2]."-".$_fec[1]."-".$_fec[0];
		$_tlf = $_POST['tlf'];
		$_par = "10".$_POST['hap'].",10".$_POST['ham'];
	
		$consulta = "call sp_nuevo_alumno($_dis,'$_cod','$_nom','$_sex','$_dir','$_fec','$_tlf','$_par','$_cel');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje = "Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
jQuery(function($){
   $('#nom').alpha();
   $("#nac").mask("99/99/9999");
   $("#cod").mask("99-999999-9999-9");
   $('#tlf').mask("(99)-999999");
   $('#cel').numeric();
   $('#cod').numeric();
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
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de nuevo alumno</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Padre</td>
          <td><input type="text" name="ap" id="ap" class="caja" accesskey="requerido" readonly="true" style="width:320px"><input type="hidden" name="hap" id="hap"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_padre.php',500,650);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Madre</td>
          <td><input type="text" name="am" id="am" class="caja" accesskey="requerido" readonly="true" style="width:320px"><input type="hidden" name="ham" id="ham"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_padre.php',500,650);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Distrito</td>
		  <?
          $con = new conexion();
          $consulta = "call sp_lista_pref_dis();";
          $respuesta_f = $con->consulta($consulta);
          while($vector_f = mysqli_fetch_array($respuesta_f)){ $msg_a = $vector_f['ubicacion']; $msg_b = $vector_f['iddistrito']; }
		  ?>
          <td><input type="text" name="dis" id="dis" class="caja" accesskey="requerido" value="<?=$msg_a?>" readonly="true" style="width:320px"><input type="hidden" value="<?=$msg_b?>" name="hdi" id="hdi"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_nacionalidad.php',400,170);">Sel</a></td>
         </tr>
         <tr height="20px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td>Nombres</td>
          <td><input type="text" name="nom" id="nom" class="caja" accesskey="requerido" style="text-transform:capitalize;width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Direccion</td>
          <td><input type="text" name="dir" id="dir" class="caja" accesskey="requerido" style="width:320px"></td>
         </tr>
		  <?
          $con = new conexion();
          $consulta = "call sp_genera_correlativo_codigo_alumno();";
          $respuesta_o = $con->consulta($consulta);
          while($vector_o = mysqli_fetch_array($respuesta_o)){ $cor = $vector_o['mensaje']; $cor = substr("0000",0,4-strlen($cor)).$cor;  }
		  ?>
         <tr height="35px">
          <td>Codigo</td>
          <td><input type="text" name="cod" id="cod" class="caja" style="width:145px" accesskey="requerido=tamanioen:16" value="<?=date("y")?>-574625-<?=$cor?>-0"></td>
         </tr>
         <tr height="35px">
          <td>Telefono</td>
          <td><input type="text" name="tlf" id="tlf" class="caja" style="width:100px"> - <input type="text" value="<?=$vector_['telefono']?>" name="cel" id="cel" class="caja" style="width:100px" maxlength="9"></td>
         </tr>
         <tr height="35px">
          <td>F Nacimiento</td>
          <td><input type="text" name="nac" id="nac" class="caja" accesskey="requerido=valifecha=menorquee:<?=(date("Y")-2)?>" style="width:100px"></td>
         </tr>
         <tr height="35px">
          <td>Sexo</td>
          <td><select name="sex" id="sex" style="font-family:verdana; font-size:12px; width:120px"><option value="1">Masculino</option><option value="0">Femenino</option></select></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" onclick="validaFormulario(document.nuevo,'Se registrara el alumno.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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