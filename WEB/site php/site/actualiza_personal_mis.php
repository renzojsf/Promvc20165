<?
if(isset($_POST['dni']) and isset($_POST['ape']) and isset($_POST['nom']) and isset($_POST['dir']) and isset($_POST['nac']) and isset($_POST['civ']) and isset($_POST['sex']) and isset($_POST['tip']))
{
	if(!empty($_POST['dni']) and !empty($_POST['ape']) and !empty($_POST['nom']) and !empty($_POST['dir']) and !empty($_POST['nac']) and !empty($_POST['civ']) and !empty($_POST['tip']))
	{
		$con = new conexion();
		$_dni = $_POST['dni'];
		$_ape = ucwords($_POST['ape']);
		$_nom = ucwords($_POST['nom']);
		$_dir = $_POST['dir'];
		$_civ = $_POST['civ'];
		$_tlf = $_POST['tlf'];
		$_sex = $_POST['sex'];
		$_tip = $_POST['tip'];
		$_fec = explode("/",$_POST['nac']);
		$_fec = $_fec[2]."-".$_fec[1]."-".$_fec[0];

		$consulta = "call sp_actualiza_datos_personal(".$_REQUEST['id'].",'$_tip','$_dni','$_ape','$_nom','$_dir','$_tlf','$_fec','$_civ','$_sex');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje = "Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
function registra()
{
	if(confirm("Se actualizara el personal.")){document.nuevo.submit();}
}
jQuery(function($){
   $('#nom').alpha();
   $('#ape').alpha();
   $("#nac").mask("99/99/9999");
   $('#tlf').numeric();
   $('#dni').numeric();
});
</script>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_personal_mis(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
?>

<table border="0" width="500px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="455px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de nuevo personal</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Apellidos</td>
          <td><input type="text" value="<?=$vector_['apellidos']?>" name="ape" id="ape" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Nombres</td>
          <td width="320px"><input type="text" value="<?=$vector_['nombres']?>" name="nom" id="nom" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Direccion</td>
          <td><input type="text" value="<?=$vector_['direccion']?>" name="dir" id="dir" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Telefono</td>
          <td><input type="text" value="<?=$vector_['telefono']?>" name="tlf" id="tlf" class="caja" style="width:100px" maxlength="9"></td>
         </tr>
         <tr height="35px">
          <td>Dni</td>
          <td><input type="text" value="<?=$vector_['dni']?>" name="dni" id="dni" class="caja" style="width:100px" maxlength="8"></td>
         </tr>
         <tr height="35px">
          <td>F Nacimiento</td>
          <td><input type="text" value="<? $tmp = explode("-",$vector_['fecnac']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?>" name="nac" id="nac" class="caja" style="width:100px"></td>
         </tr>
         <tr height="35px">
          <td>Tipo personal</td>
          <td>
           <select name="tip" id="tip" style="font-family:verdana; font-size:12px; width:120px">
			<?
            $con = new conexion();
            $consulta = "select * from tipo";
            $respuesta = $con->consulta($consulta);
            while($vector = mysqli_fetch_array($respuesta))
            { ?>
            <option value="<?=$vector['idtipo']?>" <? if($vector['idtipo']==$vector_['idtipo']){ echo "selected";} ?>><?=$vector['tipo']?></option>
            <? } ?>
           </select>
          </td>
         </tr>
         <tr height="35px">
          <td>Estado Civil</td>
          <td><select name="civ" id="civ" style="font-family:verdana; font-size:12px; width:120px"><option value="c" <? if($vector_['estciv']=='c'){echo "selected";} ?>>Casado (a)</option><option value="s" <? if($vector_['estciv']=='s'){echo "selected";} ?>>Soltero (a)</option><option value="d" <? if($vector_['estciv']=='d'){echo "selected";} ?>>Divorciado (a)</option></select></td>
         </tr>
         <tr height="35px">
          <td>Sexo</td>
          <td><select name="sex" id="sex" style="font-family:verdana; font-size:12px; width:120px"><option value="1" <? if($vector_['sexo']=='1'){echo "selected";} ?>>Masculino</option><option value="0"<? if($vector_['sexo']=='0'){echo "selected";} ?>>Femenino</option></select></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=32&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<input type="button" onclick="registra();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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