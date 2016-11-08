<? if(isset($_POST['criteria'])){$criterio=$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio=$_REQUEST['criteria'];}} ?>
<html>
<head>
<title>Seleccione</title>
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
<style>a{text-decoration:none;color:#000000}</style>
<script>
function aigna_alumno(idalumno,alumno)
{
	window.opener.document.nuevo.alu.value = alumno;
	window.opener.document.nuevo.hal.value = idalumno;
	self.close();
}

</script>
</head>
<body marginheight="0" marginwidth="0" onLoad="enfoque('criteria');">

<form name="buscar" id="buscar" method="post" action="">
<table border="0" align="center" width="350px" cellpadding="0" cellspacing="0">
 <tr><td>&nbsp;</td></tr> 
 <tr>
  <td width="325x"><input type="text" value="<?=$criterio?>" name="criteria" id="criteria" style="font-family:verdana;font-size:12px;width:375px;border:solid 1px #6A798C;height:25px; padding-top:4px;text-indent:10px"></td>
  <td width="25px"><img src="img/buscar.png" onClick="busqueda(document.buscar);" style="cursor:pointer" title="Buscar"></td>
 </tr>
</table>
</form>

<table border="0" align="center" width="400px" cellpadding="0" cellspacing="0">
 <tr>
  <td colspan="2">
   <form name="listado" id="listado" method="post">
    <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
     <?
     include("conexion.php");
     $con = new conexion();

     $resultados = 14;
     if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
     $consulta = "call sp_lista_alumnos('$criterio',0,0);";
     $respuesta = $con->consulta($consulta);
     $total_registros=mysqli_num_rows($respuesta); 
     $total_paginas = ceil($total_registros / $resultados);

     $con = new conexion();
     $consulta = "call sp_lista_alumnos('$criterio',$inicio,$resultados);";
     $respuesta = $con->consulta($consulta);
     while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
    <tr>
     <td style="background-color:#<? echo $color; ?>">
      <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
       <tr height="30px">
        <!-- <td width="50px" align="center"><input type="button" value="Sel" onClick="<? if($vector['procs']==1){ ?>javascript:alert('No puede iniciar un nuevo proceso porque\nel alumno tiene procesos actuales abiertos.');<? }else{ ?>aigna_alumno('<?=$vector['idalumno']?>','<?=$vector['alumno']?>');<? } ?>"></td> -->
        <td width="50px" align="center"><input type="button" value="Sel" onClick="aigna_alumno('<?=$vector['idalumno']?>','<?=$vector['alumno']?>');"></td>
		<td width="30px" align="center"><img src="img/alumno<?=$vector['sexo']?>.png"></td>
        <td width="30px" align="center"><img src="img/of<? if($vector['procs']==0){echo "0";}else{echo "1";} ?>.png" title="<? if($vector['procs']==0){echo "El alumno no tiene ningun proceso activo";}else{echo "El alumno si tiene procesos activos";} ?>" style="cursor:pointer"></td>
        <td width="30ox" align="center"><?=$vector['edad']?></td>
        <td align="left"><?=$vector['alumno']?></td>
       </tr>
      </table>
     </td>
    </tr>
    <? } if ($total_paginas > 1){ ?>
     <tr height="25px" align="right">
      <td>
       <?
        if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
		if($pagina-1>0){echo " <a href='listado_alumno.php?pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
		for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<b>$pagina</b>&nbsp;";}else{echo "<a href='listado_alumno.php?pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
		if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='listado_alumno.php?pagina=".($pagina+1)."$criterio'>Sig</a>";}  
       ?>
      </td>
     </tr> 
    <? } ?>
    </table>
   </form>
  </td>
 </tr>
</table>

</body>
</html>