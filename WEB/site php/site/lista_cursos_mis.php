<?
$con = new conexion();
$consulta = "call sp_detalles_area(".$_REQUEST['id'].");";
$respuesta = $con->consulta($consulta);
while($vector = mysqli_fetch_array($respuesta)){$area=$vector['aarea'];}
?>
<? if(isset($_POST['criteria'])){$criterio=$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio=$_REQUEST['criteria'];}} ?>
<table border="0" width="470px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <? $cur=permite(44); ?>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="buscar" id="buscar" method="post" action="">
        <table border="0" align="center" width="440px" cellpadding="0" cellspacing="0" style="font-family:verdana; font-size:12px">
         <tr>
          <td width="60px" align="left">Area</td>
          <td align="left"><?=$area?></td>
		  <? if($cur=='1'){ ?><td width="30px"><input type="button" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=44&id=<?=$_REQUEST['id']?>';" style="cursor:pointer;font-family:verdana;font-size:12px; background-image:url(img/bookadd.png); background-position:center; background-repeat:no-repeat; cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer; border:solid 1px #666; width:25px;-moz-border-radius: 4px;" title="Agregar curso"></td><? } ?>
          <td width="30px"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=29&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer;border:solid 1px #666;-moz-border-radius: 4px;"></td>
         </tr>
        </table>
        </form>
		<? $act=permite(45); ?>
        <table border="0" align="center" width="440px" cellpadding="0" cellspacing="0">
         <tr>
          <td colspan="2">
           <form name="listado" id="listado" method="post">
            <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
             <tr>
              <td>
               <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                <tr height="25px">
                 <? if($act=='1'){ ?><td width="30px" align="center" class="cabeza">A</td><? } ?>
                 <td align="left" style="text-indent:10px" class="cabeza">Nombre del curso</td>
                 <td align="center" width="90px" class="cabeza">Abrev</td>
                </tr>
               </table>
              </td>
             </tr>
             <?
             $con = new conexion();
             $resultados = 15;
             if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
             $consulta = "call sp_lista_curso_mis(".$_REQUEST['id'].",0,0);";

             $respuesta = $con->consulta($consulta);
             $total_registros=mysqli_num_rows($respuesta); 
             $total_paginas = ceil($total_registros / $resultados);

             $con = new conexion();
             $consulta = "call sp_lista_curso_mis(".$_REQUEST['id'].",$inicio,$resultados);";
             $respuesta = $con->consulta($consulta);
			 $numero = mysqli_num_rows($respuesta);
             while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
            <tr>
             <td style="background-color:#<? echo $color; ?>">
              <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
               <tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idcurso']){ echo "style='background-color:#DDDDDD'";} ?>>
                <? if($act=='1'){ ?><td width="30px" align="center"><img src="img/libro3.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=45&id=<?=$_REQUEST['id']?>&cur=<?=$vector['idcurso']?>';" style="cursor:pointer;" title="Actualizar datos"></td><? } ?>
                <td align="left" style="text-indent:10px"><?=$vector['curso']?></td>
                <td align="center" width="90px"><?=$vector['abrev']?></td>
               </tr>
              </table>
             </td>
            </tr>
            <? } if($numero==0){ ?><tr height="30px"><td style="color:#060" align="center">No hay ningun curso registrado.</td></tr><? } ?>
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