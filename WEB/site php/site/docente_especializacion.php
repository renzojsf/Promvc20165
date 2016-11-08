<script>
function sup_especializacion(id_esp)
{
	if(confirm("Realmente desea eliminar esta especializacion"))
	{
		var sp = document.getElementById('esp');
		sp.value = id_esp;
		document.forms.sub_p.submit();
	}
}
</script>

<?

if(isset($_POST['esp']))
{
	$con = new conexion();
	$consulta = "call sp_elimina_especializacion(".$_POST['esp'].");";
	$con->consulta($consulta);
}

$con = new conexion();
$consulta = "call sp_busca_datos_personal(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_p = $_REQUEST['id'];
?>

<table border="0" width="570px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <? $sup=permite(47); $agr=permite(46); ?>
      <td align="center">
       <table border="0" width="500px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px">
        <td width="100px" style="text-indent:15px">Dni</td><td><b><?=$vector_['dni']?></b></td>
		  <? if($agr=='1'){ ?><td width="30px"><input type="button" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=46&id=<?=$_REQUEST['id']?>';" style="cursor:pointer;font-family:verdana;font-size:12px; background-image:url(img/bookadd.png); background-position:center; background-repeat:no-repeat; cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer; border:solid 1px #666; width:25px;-moz-border-radius: 4px;" title="Agregar area"></td><? } ?>
          <td width="30px"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=32&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer;border:solid 1px #666;-moz-border-radius: 4px;"></td>
        </tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Personal</td><td><?=$vector_['personal']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Tipo</td><td><?=$vector_['tipo']?></td></tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="5">

            <table border="0" align="center" width="450px" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <tr>
                <td>
                <table border="0" width="450px" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                    <tr height="25px">
                     <? if($sup=='1'){ ?><td align="center" width="30px" class="cabeza">E</td><? } ?>
                     <td align="left" style="text-indent:15px" class="cabeza">Area</td>
                    </tr>
                </table>
                </td>
                </tr>
                <table border="0" width="450px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
                 <?
                 $con = new conexion();
                 $consulta = "call sp_detalle_especializacion($id_p);";
                 $respuesta = $con->consulta($consulta);
                 while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
				 if(strlen($vector['nciber'])>0){$sub=" <span style='color:maroon;cursor:pointer' title='Curso subsanado. Promedio anterior : ".$vector['promedio']."'>[Sub]</span>";}else{$sub="";}
				 ?>
                <tr>
                 <td style="background-color:#<? echo $color; ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
                   <tr height="30px">
                    <? if($sup=='1'){ ?><td align="center" width="30px"><img src="img/borrar.png" title="Eliminar especializacion" style="cursor:pointer" onclick="sup_especializacion(<?=$vector['idespecializacion']?>);" /></td><? } ?>
                    <td align="left" style="text-indent:15px"><?=$vector['aarea']?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? } ?>
                </table>
               </form>
               <form name="sub_p" id="sub_p" method="post" action=""><input type="hidden" name="esp" id="esp" /></form>
         </td>
        </tr>
       </table>
      </td>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><?=$mensaje?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>