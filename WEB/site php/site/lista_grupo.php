<script>
function confirma(id_grupo)
{
	if(confirm("Se cerrara el grupo y las notas se generaran."))
	{
		var cg = document.getElementById('cgrupo');
		cg.value = id_grupo;
		document.forms.listado.submit();
	}
}
</script>

<?
if(isset($_POST['cgrupo']) and !(empty($_POST['cgrupo'])))
{
	$con = new conexion();
	$consulta = "call sp_finaliza_grupo(".$_POST['cgrupo'].");";
	$respuesta_ = $con->consulta($consulta);
}

$con = new conexion();
$consulta = "call sp_detalle_curricula(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_c = $_REQUEST['id'];
$G_cur = $vector_['cursos'];
if(isset($_POST['anio'])){$G_ani=$_POST['anio'];}else{$G_ani=date("Y");}
?>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="30px"><td width="100px" style="text-indent:15px">Descripcion</td><td><? if($vector_['verano']=='1'){echo "<b>CV</b> ";}else{echo "<b>AE</b> ";} echo $vector_['nivel']; if($vector_['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_['curso']."</font></b> ";} ?></td><td width="75px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=12&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:60px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer"></td></tr>
        <tr height="30px">
         <td width="100px" style="text-indent:15px" valign="top">A&ntilde;o</td>
         <td colspan="2" valign="middle">
         <form name="l_anio" id="l_anio" method="post" action="">
          <select onchange="document.forms.l_anio.submit();" name="anio" id="anio" style="font-family:verdana; font-size:12px; width:100px; cursor:pointer; height:20px">
          <option value="-1">Selec</option>
          <?
			$con = new conexion();
			$consulta = "call sp_lista_anio_para_grupo($id_c);";
			$respuesta_a = $con->consulta($consulta);
			while($vector_a = mysqli_fetch_array($respuesta_a))
			{ 
				if($G_ani==$vector_a[0]){$ch = "selected";}else{$ch="";}
				echo "<option value='".$vector_a[0]."' $ch>".$vector_a[0]."</option>";
				//$G_ani=$vector_a[0];
			}
          ?>
          </select>
         </form>
         </td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">
			<? $act=permite(18); $lis=permite(19); $doc=permite(21); $hor=permite(22); $rep=permite(39); $fin=permite(40); ?>
            <table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
           <form name="listado" id="listado" method="post">
            <table border="0" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
             <tr>
              <td>
               <table border="0" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                <tr height="25px">
                 <? if($fin=='1'){ ?><td width="30px" align="center" class="cabeza">F</td><? } ?>
                 <? if($act=='1'){ ?><td width="30px" align="center" class="cabeza">A</td><? } ?>
                 <? if($lis=='1'){ ?><td width="30px" align="center" class="cabeza">L</td><? } ?>
                 <? if($doc=='1'){ ?><td width="30px" align="center" class="cabeza">D</td><? } ?>
                 <!-- <? if($hor=='1'){ ?><td width="30px" align="center" class="cabeza">H</td><? } ?>-->
                 <? if($rep=='1'){ ?><td width="30px" align="center" class="cabeza">R</td><? } ?>
        
                 <td align="left" width="120px" class="cabeza" style="text-indent:10px">&nbsp;</td>
                 <td align="center" width="50px" class="cabeza">Cap</td>
                 <td align="center" width="60px" class="cabeza">Matric</td>
                 <td align="center" width="90px" class="cabeza">F Inicio</td>
                 <td align="center" width="90px" class="cabeza">F Final</td>
                 <td align="center" width="70px" class="cabeza">Matricula</td>
                 <td align="center" width="70px" class="cabeza">Pension</td>
                 <!-- <td align="center" width="70px" class="cabeza">Estado</td> -->
                </tr>
               </table>
              </td>
             </tr>
             <?
             $con = new conexion();
             $resultados = 15;
             if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
			 //if(isset($_POST['anio'])){$G_ani=$_POST['anio'];}
             $consulta = "call sp_lista_grupo($id_c,0,0,'$G_ani');";

             $respuesta = $con->consulta($consulta);
             $total_registros=mysqli_num_rows($respuesta); 
             $total_paginas = ceil($total_registros / $resultados);

             $con = new conexion();
             $consulta = "call sp_lista_grupo($id_c,$inicio,$resultados,'$G_ani');";
             $respuesta = $con->consulta($consulta);
	     	$numero = mysqli_num_rows($respuesta);
             while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
            <tr>
             <td style="background-color:#<? echo $color; ?>">
              <table border="0" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
               <tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idgrupo']){ echo "style='background-color:#DDDDDD'";} ?>>
                <? if($fin=='1'){ ?><td width="30px" align="center"><? if($vector['estado']=='1'){ ?><img src="img/final.png" onclick="<? if($vector['profes']!=$G_cur){echo "alert('Necesita asignar los docentes a este grupo');";}else{ ?>confirma(<?=$vector['idgrupo']?>);<? } ?>" style="cursor:pointer;" title="Finalizar grupo"><? }else{echo "&nbsp;";} ?></td><? } ?>
                <? if($act=='1'){ ?><td width="30px" align="center"><img src="img/actualiza.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=18&id=<?=$_REQUEST['id']?>&gru=<?=$vector['idgrupo']?>';" style="cursor:pointer;" title="Actualizar datos"></td><? } ?>
                <? if($lis=='1'){ ?><td width="30px" align="center"><img src="img/lista1.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=19&id=<?=$_REQUEST['id']?>&gru=<?=$vector['idgrupo']?>';" style="cursor:pointer;" title="Listado de matriculados"></td><? } ?>
                <? if($doc=='1'){ ?><td width="30px" align="center"><img src="img/docente.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=21&id=<?=$_REQUEST['id']?>&gru=<?=$vector['idgrupo']?>';" style="cursor:pointer;" title="Docentes"></td><? } ?>
                <!-- <? if($hor=='1'){ ?><td width="30px" align="center"><img src="img/horario.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=22&id=<?=$_REQUEST['id']?>&gru=<?=$vector['idgrupo']?>';" style="cursor:pointer;" title="Horarios"></td><? } ?> -->
                <? if($rep=='1'){ ?><td width="30px" align="center"><img src="img/impresora.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=39&id=<?=$_REQUEST['id']?>&gru=<?=$vector['idgrupo']?>';" style="cursor:pointer;" title="Impresion"></td><? } ?>
                
                <td align="left" width="120px" style="text-indent:10px"><?=$vector_['nivel']." ".$vector['nivel']?></td>
                <td align="center" width="50px"><?=$vector['capacidad']?></td>
                <td align="center" width="60px"><?=$vector['matriculados']?></td>
                <td align="center" width="90px"><? $tmp = explode("-",$vector['fecini']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                <td align="center" width="90px"><? $tmp = explode("-",$vector['fecfin']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td></td>
                <td align="center" width="70px"><?=number_format($vector['matricula'],2,'.',' ')?></td>
                <td align="center" width="70px"><?=number_format($vector['pension'],2,'.',' ')?></td>
                <!-- <td align="center" width="70px"><? if($vector['estado']=='0'){echo "Cerrado";}else{echo "Abierto";}?></td> -->
               </tr>
              </table>
             </td>
            </tr>
            <? } if($numero==0){ ?><tr height="35px"><td style="color:#060" align="center">No hay ningun grupo para esta curricula.</td></tr><? } ?>
			<? if ($total_paginas > 1){ ?>
             <tr height="25px" align="right">
              <td>
               <?
                if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
            if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
            for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
            if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&pag=".$_REQUEST['pag']."&ven=".$_REQUEST['ven']."&pagina=".($pagina+1)."$criterio'>Sig</a>";}  
               ?>
              </td>
             </tr> 
            <? } ?>
            </table>
            <input type="hidden" value="" name="cgrupo" id="cgrupo" />
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