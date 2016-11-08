<? if(isset($_POST['criteria'])){$criterio=$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio=$_REQUEST['criteria'];}} ?>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
		<? $nue=permite(17); $act=permite(14); $cur=permite(15); $det=permite(16); ?>
        <table border="0" align="center" width="730px" cellpadding="0" cellspacing="0">
         <tr>
          <td colspan="2">
           <form name="listado" id="listado" method="post">
            <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
             <tr>
              <td>
               <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                <tr height="25px">
                 <? if($nue=='1'){ ?><td width="30px" align="center" class="cabeza">N</td><? } ?>
                 <? if($act=='1'){ ?><td width="30px" align="center" class="cabeza">A</td><? } ?>
                 <? if($cur=='1'){ ?><td width="30px" align="center" class="cabeza">C</td><? } ?>
                 <? if($det=='1'){ ?><td width="30px" align="center" class="cabeza">D</td><? } ?>
                 <td align="center" width="60px" class="cabeza">A&ntilde;o</td>
                 <td align="left" style="text-indent:10px" class="cabeza">Descripcion de curricula</td>
                 <td align="center" width="90px" class="cabeza">Cursos</td>
                 <td align="center" width="90px" class="cabeza">Estado</td>
                </tr>
               </table>
              </td>
             </tr>
             <?
             $con = new conexion();
             $resultados = 15;
             if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
             $consulta = "call sp_lista_curricula(0,0);";

             $respuesta = $con->consulta($consulta);
             $total_registros=mysqli_num_rows($respuesta); 
             $total_paginas = ceil($total_registros / $resultados);

             $con = new conexion();
             $consulta = "call sp_lista_curricula($inicio,$resultados);";
             $respuesta = $con->consulta($consulta);
	     	 $numero = mysqli_num_rows($respuesta);
             while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
            <tr>
             <td style="background-color:#<? echo $color; ?>">
              <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
               <tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idcurricula']){ echo "style='background-color:#DDDDDD'";} ?>>
                <? if($nue=='1'){ ?><td width="30px" align="center"><img src="img/ngrupo.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=17&id=<?=$vector['idcurricula']?>';" style="cursor:pointer;" title="Agregar nuevo grupo"></td><? } ?>
                <? if($act=='1'){ ?><td width="30px" align="center"><img src="img/actualiza.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=14&id=<?=$vector['idcurricula']?>';" style="cursor:pointer;" title="Actualizar datos"></td><? } ?>
                <? if($cur=='1'){ ?><td width="30px" align="center"><img src="img/libro1.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=15&id=<?=$vector['idcurricula']?>';" style="cursor:pointer;" title="Cursos de la curricula"></td><? } ?>
                <? if($det=='1'){ ?><td width="30px" align="center"><img src="img/seccion.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=16&id=<?=$vector['idcurricula']?>';" style="cursor:pointer;" title="Grupos para la curricula"></td><? } ?>
                <td align="center" width="60px"><?=$vector['anio']?></td>                
                <td align="left" style="text-indent:10px"><? if($vector['verano']=='1'){echo "<b>CV</b> ";}else{echo "<b>AE</b> ";} echo $vector['nivel']; if($vector['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector['curso']."</font></b> ";} ?></td>
                <td align="center" width="90px"><?=$vector['cursos']?></td>
                <td align="center" width="90px"><? if($vector['estado']=='0'){echo "Cerrada";}else{echo "Abierta";}?></td>
               </tr>
              </table>
             </td>
            </tr>
            <? } if($numero==0){ ?><tr height="35px"><td style="color:#060" align="center">No hay ninguna curricula registrada.</td></tr><? } ?>
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