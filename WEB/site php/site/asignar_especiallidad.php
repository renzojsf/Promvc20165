<script>
function envia()
{
	var estado = retornaEstado(document.forms.listado);
	if(estado!=0)
	{
		document.forms.listado.submit();
	}
}
</script>

<?
if(isset($_POST['ch']))
{
	$esp=implode(",",$_POST['ch']);
	$con = new conexion();
	$consulta = "call sp_registra_especializacion('$esp',".$_REQUEST['id'].");";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
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
      <td align="center">
       <table border="0" width="500px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px">
        <td width="100px" style="text-indent:15px">Dni</td><td><b><?=$vector_['dni']?></b></td>
          <td width="30px"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=42&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer;border:solid 1px #666;-moz-border-radius: 4px;"></td>
        </tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Personal</td><td><?=$vector_['personal']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Tipo</td><td><?=$vector_['tipo']?></td></tr>
        <tr height="20px"><td></td>&nbsp;<td colspan="2"><b><a href="#" onclick="envia();">Guardar</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="checkState(document.forms.listado,true);">Marcar Todos</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="checkState(document.forms.listado,false);">Desmarcar Todos</a></td></tr>
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
                     <td align="center" width="30px" class="cabeza">A</td>
                     <td align="left" style="text-indent:15px" class="cabeza">Area</td>
                    </tr>
                </table>
                </td>
                </tr>
                <table border="0" width="450px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
                 <?
                 $con = new conexion();
                 $consulta = "call sp_detalle_especializacion_2($id_p);";
                 $respuesta = $con->consulta($consulta);
                 while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
				 ?>
                <tr>
                 <td style="background-color:#<? echo $color; ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
                   <tr height="30px">
                    <td align="center" width="30px"><input type="checkbox" name="ch[]" id="ch[]" style="cursor:pointer" title="Agregar esta especializacion" value="<?=$vector['idaarea']?>"/></td>
                    <td align="left" style="text-indent:15px"><?=$vector['aarea']?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? } ?>
                </table>
               </form>
               <form name="addd" id="addd" method="post" action=""><input type="hidden" name="esp" id="esp" /></form>
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