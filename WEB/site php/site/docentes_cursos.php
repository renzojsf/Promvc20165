<?
if(isset($_POST['per']) and isset($_POST['hper']))
{
	$con = new conexion();
	$id_h = $_REQUEST['hor'];
	$id_p = $_POST['hper'];
	$consulta = "call sp_nuevo_curso_docente($id_p,$id_h);";
	$respuesta = $con->consulta($consulta);
	$url = "principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=21&id=".$_REQUEST['id']."&gru=".$_REQUEST['gru'];
	//	header("location: $url");
}
?>

<script type="text/javascript" language="javascript">
function n_docente()
{
	var cod_p = document.getElementById('hper');
	var perso = document.getElementById('per');
	if(cod_p.value.length==0){alert('Debe seleccionar un docente.'); perso.focus();}
	else
	{
		if(confirm('Se registrara el nuevo docente')){document.forms.listado.submit();}
	}
}
</script>

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
		if($vector_['verano']=='0'){
        $con = new conexion();
        $consulta = "call sp_detalle_grupo($id_g);";
        $respuesta = $con->consulta($consulta);
        while($vector = mysqli_fetch_array($respuesta)){
        ?>
        <tr height="25px"><td width="100px" style="text-indent:15px">Grupo</td><td><?=$vector_['nivel']." ".$vector['nivel']?>  [ <?=$vector['anio']?> ]</td></tr>
        <? }} ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">
            <table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
           <form name="listado" id="listado" method="post">
            <table border="0" width="700px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
             <?
             $con = new conexion();
             $resultados = 40;
             if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
             $consulta = "call sp_lista_cursos_grupo($id_g,0,0);";

             $respuesta = $con->consulta($consulta);
             $total_registros=mysqli_num_rows($respuesta); 
             $total_paginas = ceil($total_registros / $resultados);

             $con = new conexion();
             $consulta = "call sp_lista_cursos_grupo($id_g,$inicio,$resultados);";
             $respuesta = $con->consulta($consulta);
	     	 $numero = mysqli_num_rows($respuesta);
             while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';} ?>
            <tr>
             <td style="background-color:#FFFFFF">
              <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
               <tr height="30px">
                <td width="25px" align="center"><img src="img/agrega.png" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=21&id=<?=$_REQUEST['id']?>&gru=<?=$_REQUEST['gru']?>&hor=<?=$vector['idhorario']?>';" style="cursor:pointer" title="Agregar nuevo docente"/></td>
                <td align="left" width="200px" style="text-indent:10px"><?=$vector['curso']?></td>
                <td align="left" style="text-indent:10px"><?=$vector['docente']?></td>
               </tr>
              </table>
             </td>
            </tr>
            <tr>
             <td>
              <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
               <? if(isset($_REQUEST['hor']) and $_REQUEST['hor']==$vector['idhorario']){ ?>
               <tr height="35px">
                <td width="35px">&nbsp;</td>
                <td width="25px" align="center"><img src="img/guia.png"/></td>
                <td align="center" width="25px"><img src="img/disco.png" onclick="n_docente();" style="cursor:pointer" title="Asignar docente"/></td>
                <td style="text-indent:10px" width="320px"><input type="text" name="per" id="per" readonly="readonly" class="caja" style="width:300px"/><input type="hidden" id="hper" name="hper"/></td>
                <td><input type="hidden" id="hid_d" value="hid_d" /><a href="#" onclick="var hid_d = document.getElementById('hid_d');abrir('listado_docentes.php?id='+hid_d.value+'&cur=<?=$vector['idcurso']?>',400,300);">Sel</a></td>
               </tr>
			   <? }?>
               <script>var hid_d = document.getElementById('hid_d'); hid_d.value='-1';</script>
               <?
               $con = new conexion();
               $consulta = "call sp_lista_docentes_curso_grupo(".$vector['idhorario'].");";
			   $respuesta_d = $con->consulta($consulta);
			   $can_reg = mysqli_num_rows($respuesta_d);
			   while($vector_d = mysqli_fetch_array($respuesta_d)){ 
			   if($vector_d['estado']==1){ ?><script>hid_d.value='<?=$vector_d['idpersonal']?>';</script><? }
			   ?>
               <tr height="25px"><td width="35px">&nbsp;</td><td width="25px" align="center"><img src="img/guia.png"/></td><td width="25px" align="center"><img src="img/of<?=$vector_d['estado']?>.png"/></td><td style="color:#333;text-indent:10px" width="320px"><?=$vector_d['docente']?></td><td></td></tr>
               <? } ?>
               <? if($can_reg==0){ ?><tr height="25px"><td width="35px">&nbsp;</td><td colspan="3">No se ha definido ningun docente para dictar este curso.</td></tr><? } ?>
              </table>
             </td>
            </tr>
            <? } if($numero==0){ ?><tr height="35px"><td style="color:#060" align="center" colspan="3">No hay ningun curso agregado para este grupo.</td></tr><? } ?>
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