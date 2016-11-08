<?
if(isset($_POST['ape']))
{
	$con = new conexion();
	$_ape = ucwords($_POST['ape']);
	$_nom = ucwords($_POST['nom']);
	$_dir = ucfirst($_POST['dir']);
	$_ocu = ucfirst($_POST['ocu']);
	$_tlf = $_POST['tlf'];
	$_cel = $_POST['cel'];
	$_fec = explode("/",$_POST['nac']);
	$_fec = $_fec[2]."-".$_fec[1]."-".$_fec[0];
	$_sex = $_POST['sex'];
	$_civ = $_POST['civ'];

	$consulta = "call sp_nuevo_padre('$_ape','$_nom','$_dir','$_tlf','$_cel','$_ocu','$_fec','$_sex','$_civ');";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
}
?>

<script language="javascript" type="text/javascript">
jQuery(function($){
   $('#nom').alpha();
   $("#nac").mask("99/99/9999");
   $('#tlf').mask("(99)-999999");
   $('#cel').numeric();
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
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de padre de familia</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Apellidos</td>
          <td><input type="text" name="ape" id="ape" class="caja" accesskey="requerido" style="text-transform:capitalize;width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Nombres</td>
          <td><input type="text" name="nom" id="nom" class="caja" accesskey="requerido" style="text-transform:capitalize;width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Direccion</td>
          <td><input type="text" name="dir" id="dir" accesskey="requerido" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Ocupacion</td>
          <td><input type="text" name="ocu" id="ocu" accesskey="requerido" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Telefono</td>
          <td><input type="text" name="tlf" id="tlf" class="caja" style="width:110px"> - <input type="text" value="<?=$vector_['telefono']?>" name="cel" id="cel" class="caja" style="width:100px" maxlength="9"></td>
         </tr>
         <tr height="35px">
          <td>F Nacimiento</td>
          <td><input type="text" name="nac" id="nac" accesskey="requerido=valifecha" class="caja" style="width:100px"></td>
         </tr>
         <tr height="35px">
          <td>Sexo</td>
          <td><select name="sex" id="sex" style="font-family:verdana; font-size:12px; width:120px"><option value="1">Masculino</option><option value="0">Femenino</option></select></td>
         </tr>
         <tr height="35px">
          <td>Estado civil</td>
          <td><select name="civ" id="civ" style="font-family:verdana; font-size:12px; width:120px"><option value="c">Casado (a)</option><option value="s">Soltero (a)</option><option value="d">Divorciado (a)</option><option value="o">Conviviente</option></select></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" onclick="validaFormulario(document.nuevo,'Se registrara el padre de familia.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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