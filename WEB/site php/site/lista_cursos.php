<?
if(isset($_REQUEST['cu']) and strlen($_REQUEST['cu'])>0)
{
	$con = new conexion();
	$consulta = "call sp_quita_curso_curricula(".$_REQUEST['cu'].");";
	$respuesta = $con->consulta($consulta);
	$mensaje = "El curso fue eliminado de la curricula";
}

$con = new conexion();
$consulta = "call sp_detalle_curricula(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
?>
<table border="0" width="470px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Descripcion</td><td><?=$vector_['anio']?> - <? if($vector_['verano']=='1'){echo "<b>CV</b> ";}else{echo "<b>AE</b> ";} echo $vector_['nivel']; if($vector_['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_['curso']."</font></b> ";} ?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=12&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:60px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Estado</td><td><? if($vector_['estado']=='0'){echo "Ya han iniciado grupos con esta curricula.";}else{echo "Ningun grupo ha iniciado con esta curricula.";} ?></td></tr>
		<tr height="25px"><td width="100px" style="text-indent:15px">&nbsp;</td><td style="color:#666666">Cursos asignados a esta curricula</td></tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">

            <table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
		<table border="0" width="380px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
			<?
			$con = new conexion();
			$consulta = "call sp_lista_cursos_curricula(".$_REQUEST['id'].");";
			$respuesta = $con->consulta($consulta);
			$cantidad = mysqli_num_rows($respuesta);
			while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
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
			<? } if($cantidad==0){ echo "<tr><td>No se han agregado cursos a esta curricula.</td></tr>";} ?>
			</table>
		</td>
		</tr>
		<tr height="10px"><td></td></tr>
		</table>
               </form>
              </td>
             </tr>
            </table>

         </td>
        </tr>
       </table>
      </td>
     </tr>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>