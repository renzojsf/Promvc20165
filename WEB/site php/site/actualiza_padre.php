<?
if(isset($_POST['ape']))
{
	$con = new conexion();
	$id_p = $_REQUEST['id'];
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

	$consulta = "call sp_actualiza_datos_padre($id_p,'$_ape','$_nom','$_dir','$_tlf','$_cel','$_ocu','$_fec','$_sex','$_civ');";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
}
?>

<script language="javascript" type="text/javascript">
function registra()
{
	if(confirm("Se ctualizaran los datos del padre de familia.")){document.nuevo.submit();}
}
jQuery(function($){
   $('nom').alpha();
   $("#nac").mask("99/99/9999");
   $('#tlf').mask("(99)-999999");
   $('#cel').numeric();
});
</script>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_padre(".$_REQUEST['id'].");";
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
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de padre de familia</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
		 <?
         $con = new conexion();
         $consulta = "call sp_existencia_de_parentesco(".$_REQUEST['id'].");";
         $respuesta = $con->consulta($consulta);
         while($vector = mysqli_fetch_array($respuesta)){$resultado = $vector['resultado'];}
         ?>
         <tr height="35px">
          <td width="120px">Apellidos</td>
          <td><? if($resultado=='0'){ ?><input type="text" value="<?=$vector_['apellidos']?>" name="ape" id="ape" class="caja" style="text-transform:capitalize;width:320px"><? }else{echo $vector_['apellidos'];} ?></td>
         </tr>
         <tr height="35px">
          <td>Nombres</td>
          <td><input type="text" value="<?=$vector_['nombres']?>" name="nom" id="nom" class="caja" style="text-transform:capitalize;width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Direccion</td>
          <td><input type="text" value="<?=$vector_['direccion']?>" name="dir" id="dir" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Ocupacion</td>
          <td><input type="text" value="<?=$vector_['ocupacion']?>" name="ocu" id="ocu" class="caja" style="width:320px"></td>
         </tr>
         <tr height="35px">
          <td>Telefono</td>
          <td><input type="text" value="<?=$vector_['telefono']?>" name="tlf" id="tlf" class="caja" style="width:100px"> - <input type="text" value="<?=$vector_['celular']?>" name="cel" id="cel" class="caja" style="width:100px" maxlength="9"></td>
         </tr>
         <tr height="35px">
          <td>F Nacimiento</td>
          <td><input type="text" value="<? $tmp = explode("-",$vector_['fecnac']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?>" name="nac" id="nac" class="caja" style="width:100px"></td>
         </tr>
         <tr height="35px">
          <td>Sexo</td>
          <td><select name="sex" id="sex" style="font-family:verdana; font-size:12px; width:120px"><option value="1" <? if($vector_['sexo']=='1'){echo "selected";}?>>Masculino</option><option value="0" <? if($vector_['sexo']=='0'){echo "selected";}?>>Femenino</option></select></td>
         </tr>
         <tr height="35px">
          <td>Estado civil</td>
          <td><select name="civ" id="civ" style="font-family:verdana; font-size:12px; width:120px"><option value="c" <? if($vector_['estciv']=='c'){echo "selected";}?>>Casado (a)</option><option value="s" <? if($vector_['estciv']=='s'){echo "selected";}?>>Soltero (a)</option><option value="d" <? if($vector_['estciv']=='d'){echo "selected";}?>>Divorciado (a)</option><option value="o" <? if($vector_['estciv']=='o'){echo "selected";}?>>Conviviente</option></select></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=8&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<input type="button" onclick="registra();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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