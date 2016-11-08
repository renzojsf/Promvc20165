<?
$con = new conexion();
$consulta = "call sp_detalle_curricula(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_g = $_REQUEST['gru'];
?>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Curricula</td><td><?=$vector_['anio']?> - <? if($vector_['verano']=='1'){echo "<b>CV </b> ";}else{echo "<b>AE</b> ";} echo $vector_['nivel']; if($vector_['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_['curso']."</font></b> ";} ?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=16&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['gru']?>';" style="font-family:verdana;font-size:12px;width:60px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer"></td></tr>
		<?
        $con = new conexion();
        $consulta = "call sp_detalle_grupo($id_g);";
        $respuesta = $con->consulta($consulta);
        while($vector = mysqli_fetch_array($respuesta)){
        ?>
        <tr height="25px"><td width="100px" style="text-indent:15px">Grupo</td><td>Capacidad <?=$vector['capacidad']?>  [ <?=$vector['matriculados']?> Matriculados ]</td></tr>
        <? } ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">
            <table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
           <form name="listado" id="listado" method="post">
            <table border="0" width="700px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
             <tr>
              <td>
               <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                <tr height="25px">
                 <td align="center" width="30px" class="cabeza">N</td>
                 <td align="center" width="140px" class="cabeza">Codigo</td>
                 <td align="left" class="cabeza" style="text-indent:10px">Alumno</td>
                 <td align="center" width="110px" class="cabeza">F Registro</td>
                </tr>
               </table>
              </td>
             </tr>
             <?
             $con = new conexion();
             $resultados = 10;
             if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
             $consulta = "call sp_lista_alumnos_grupo($id_g,0,0);";

             $respuesta = $con->consulta($consulta);
             $total_registros=mysqli_num_rows($respuesta); 
             $total_paginas = ceil($total_registros / $resultados);

             $con = new conexion();
             $consulta = "call sp_lista_alumnos_grupo($id_g,$inicio,$resultados);";
             $respuesta = $con->consulta($consulta);
			 $numero = mysqli_num_rows($respuesta);
			 $n_orden=0;
             while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';} $n_orden++; ?>
            <tr>
             <td style="background-color:#<? echo $color; ?>">
              <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
               <tr height="30px">
                <td align="center" width="30px"><?=$inicio+$n_orden?></td>
                <td align="center" width="140px"><?=$vector['ideducando']?></td>
                <td align="left" style="text-indent:10px"><?=$vector['alumno']?></td>
                <td align="center" width="110px"><? $tmp = explode("-",$vector['fecreg']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
               </tr>
              </table>
             </td>
            </tr>
            <? } if($numero==0){ ?><tr height="35px"><td style="color:#060" align="center">No hay ningun alumno matriculado en este grupo.</td></tr><? } ?>
			<? if ($total_paginas > 1){ ?>
             <tr height="25px" align="right">
              <td>
               <?
                if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
            if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&gru=".$_REQUEST['gru']."&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
            for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&gru=".$_REQUEST['gru']."&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
            if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&pag=".$_REQUEST['pag']."&ven=".$_REQUEST['ven']."&pagina=".($pagina+1)."&id=".$_REQUEST['id']."&gru=".$_REQUEST['gru']."$criterio'>Sig</a>";}  
               ?>
              </td>
             </tr> 
            <? } ?>
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