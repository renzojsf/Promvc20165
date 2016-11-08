<script>
function cambia_pwd()
{
	var nC = prompt("Ingrese su contraseña actual",'');
	if(nC.length==0){alert('Debe ingresar un valor');}
	else
	{
		var nA = prompt("Ingrese nueva contraseña",'');
		if(nA.length==0){alert('Debe ingresar un valor');}
		else
		{
			var nB = prompt("Confirme nueva contraseña",'');
			if(nB.length==0){alert('Debe ingresar un valor');}
			else
			{
				if(nA!=nB){alert("Las contraseñas no coinciden");}
				else
				{
						var hid = document.getElementById('pass');
						var old = document.getElementById('old');
						hid.value = nA;
						old.value = nC;
						document.forms.ch_pass.submit();
				}
			}
		}
	}
}
</script>

<?
if(isset($_POST['pass']) && isset($_POST['old']))
{
	$old_ = md5($_POST['old']);
	$new_ = md5($_POST['pass']);
	$con = new conexion();
	$consulta = "call sp_actualiza_propia_clave(".$_SESSION['idusuario'].",'$old_','$new_');";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	echo "<script>alert('$mensaje');</script>";
}
?>

<table border="0" width="170px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="130px" cellpadding="0" cellspacing="0">
        <?
		$con = new conexion();
        $consulta = "call sp_carga_menu(".$_REQUEST['sis'].",".$_SESSION['idusuario'].");";
        $respuesta_ = $con->consulta($consulta);
        while($vector_ = mysqli_fetch_array($respuesta_)){ ?>
        <tr height="25px"><td align="center" width="25px"><img src="img/<?=$vector_['icono']?>" /></td><td style="text-indent:10px" colspan="2"><a href="principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$vector_['idventana']?>" <? if($_REQUEST['ven']==$vector_['idventana'] and isset($_REQUEST['ven'])){echo "style='font-weight:bold;'";} ?>><?=$vector_['titulo']?></a></td></tr>
        <? if(isset($_REQUEST['ven']) and $_REQUEST['ven']==$vector_['idventana']){ ?>
		<?
        $con = new conexion();
        $consulta = "call sp_carga_sub_permisos(".$_SESSION['idusuario'].",".$_REQUEST['ven'].");";
        $respuesta = $con->consulta($consulta);
        while($vector = mysqli_fetch_array($respuesta)){ if($vector['muestra']=='1' or ($vector['muestra']=='0' and $vector['idpagina']==$_REQUEST['pag'])){ ?>
        <tr>
         <td>&nbsp;</td>
         <td>
          <table border="0" width="100%" cellpadding="0" cellspacing="0">
           <tr height="25px"><td align="center" width="25px"><img src="img/<?=$vector['icono']?>" /></td><td style="text-indent:10px"><? if($vector['muestra']=='1'){ ?><a title="<?=$vector['descripcion']?>" href="principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=<?=$vector['idpagina']?>" style="color:#333333<? if($_REQUEST['pag']==$vector['idpagina']){echo ";font-style: italic;color:red";} ?>"><?=$vector['titulo']?></a><? }else{ ?><span style="font-style: italic;color:red;font-size:12px"><?=$vector['titulo']?></span><? } ?></td>
          </table>
         </td>
        </tr>
        <? }}}} ?>
        <tr height="10px"><td colspan="3" align="center" style="color:#633">------------------</td></tr>
        <tr height="25px"><td align="center" width="25px"><img src="img/llave1.png" /></td><td style="text-indent:10px" colspan="2"><a href="#" onclick="cambia_pwd();">Cambiar clave</a></td></tr>
        <tr height="25px"><td align="center" width="25px"><img src="img/fuera.png" /></td><td style="text-indent:10px" colspan="2"><a href="#" onclick="if(confirm('Desea salir del sistema')){document.forms.salir.submit();}">Cerrar Sesion</a></td></tr>
       </table>
      </td>
     </tr>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>

<br /><br />
<center><img src="img/insignia.png"></center>

<form name="ch_pass" id="ch_pass" method="post" action="">
<input type="hidden" name="pass" id="pass" />
<input type="hidden" name="old" id="old" />
</form>
<form name="salir" id="salir" method="post" action="logout.php"></form>