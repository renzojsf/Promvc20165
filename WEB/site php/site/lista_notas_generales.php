<?
$con = new conexion();
$consulta = "call sp_busca_datos_alumno(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_a = $_REQUEST['id'];
?>
<form name="anula" id="anula" method="post"><input type="hidden" name="anul" id="anul" value="" /></form>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="700px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Codigo</td><td><?=$vector_['ideducando']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=1&ref=<?=$id_a?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Alumno</td><td><? echo $vector_['apepaterno'].' '.$vector_['apematerno'].', '.$vector_['nombres']; ?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">
           <form name="listado" id="listado" method="post">
            <table border="0" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
            <? 
			$con = new conexion();
			$consulta = "call sp_procesos_finalizados_correctos($id_a);";
			$respuesta_pa = $con->consulta($consulta);
			$tr = 0; $numero = mysqli_num_rows($respuesta_pa);
			while($vector = mysqli_fetch_array($respuesta_pa)){ $id_p = $vector['idgrupo'];
			if($tr==0){echo "<tr>";}
			?>
            
             <td valign="top" width="300px">
              <table border="0" width="270px" cellpadding="0" cellspacing="0" align="center" style="font-size:12px;font-family:verdana">
               <tr height="25px"><td align="left" width="90px" class="cabeza" style="text-indent:10px;border:solid 1px #A4A4A4;"><b><?=$vector['nivel']?></b></td></tr>
               <?
				$con = new conexion();
				$consulta = "call sp_notas_alumno_generales($id_a,$id_p);";
				$respuesta_de = $con->consulta($consulta);
				while($vector_de = mysqli_fetch_array($respuesta_de)){
			   ?>
               <tr height="25px">
                <td>
                 <table border="0" width="100%" cellpadding="2" cellspacing="2" align="center" style="border:dashed 1px #A4A4A4; font-size:12px;font-family:verdana">
                  <tr height="23px">
                   <td style="text-indent:15px"><?=$vector_de['curso']?></td>
                   <td width="30px" align="center"><?=$vector_de['promedio']?></td>
                  </tr>
                 </table>
                </td>
               </tr>
               <? } ?>
               <tr height="10px"><td></td></tr>
              </table>
             </td>
            
            <? $tr++; if($tr==2){echo "</tr><tr height='10px'><td></td></tr>"; $tr=0;} } if($numero==0){ ?><tr height="30px"><td style="color:#060" align="center">No se encontraron registros</td></tr><? } ?>
            </table>
           </form>
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