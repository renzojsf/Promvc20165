<?
function muesta_mes($m)
{
	switch($m)
	{
		case 1: $mes = 'Enero'; break;
		case 2: $mes = 'Febrero'; break;
		case 3: $mes = 'Marzo'; break;
		case 4: $mes = 'Abril'; break;
		case 5: $mes = 'Mayo'; break;
		case 6: $mes = 'Junio'; break;
		case 7: $mes = 'Julio'; break;
		case 8: $mes = 'Agosto'; break;
		case 9: $mes = 'Setiembre'; break;
		case 10: $mes = 'Octubre'; break;
		case 11: $mes = 'Noviembre'; break;
		case 12: $mes = 'Diciembre'; break;
	}
	return $mes;
}

function muesta_mes_abr($m)
{
	switch($m)
	{
		case 1: $mes = 'Ene'; break;
		case 2: $mes = 'Feb'; break;
		case 3: $mes = 'Mar'; break;
		case 4: $mes = 'Abr'; break;
		case 5: $mes = 'May'; break;
		case 6: $mes = 'Jun'; break;
		case 7: $mes = 'Jul'; break;
		case 8: $mes = 'Ago'; break;
		case 9: $mes = 'Set'; break;
		case 10: $mes = 'Oct'; break;
		case 11: $mes = 'Nov'; break;
		case 12: $mes = 'Dic'; break;
	}
	return $mes;
}

function muesta_dia($a,$m)
{
	switch($m)
	{
		case 1: $mes = 31; break;
		case 2: if($a%2==0){$mes=29;}else{$mes=28;}; break;
		case 3: $mes = 31; break;
		case 4: $mes = 30; break;
		case 5: $mes = 31; break;
		case 6: $mes = 30; break;
		case 7: $mes = 31; break;
		case 8: $mes = 31; break;
		case 9: $mes = 30; break;
		case 10: $mes = 31; break;
		case 11: $mes = 30; break;
		case 12: $mes = 31; break;
	}
	return $mes;
}
?>

<table border="0" width="470px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr height="30px"><td style="text-indent:45px"><b>Visualizacion de ingresos</b></td></tr>
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <table border="0" width="380px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
		<?
        $con = new conexion();
        $consulta = "call sp_caja_x_anio();";
        $respuesta = $con->consulta($consulta);
        while($vecto = mysqli_fetch_array($respuesta)){if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
        ?>
         <tr height="30px">
          <td style="background-color:#<?=$color?>">
           <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
            <tr height="30px">
             <td width="30px" align="center"><img src="img/detalles.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=<?=$_REQUEST['pag']?>&a=<?=$vecto['anio']?>';" style="cursor:pointer;" title="Ver detalles por meses"></td>
             <td style="text-indent:10px"><b>A&ntilde;o <?=$vecto['anio']?></b></td>
             <td width="100px" align="center" style="color:<? if($vecto['total']==0){echo "maroon";}else{ echo "blue";} ?>"><?=number_format($vecto['total'],2,'.',' ')?></td>
            </tr>
           </table>
          </td>
         </tr>
         <?
         if(isset($_REQUEST['a']) && $_REQUEST['a']==$vecto['anio']){
		 for($i=1;$i<13;$i++){
         $con_m = new conexion();
         $consulta = "call sp_caja_x_mes('".$_REQUEST['a']."',$i);";
         $respuesta_m = $con_m->consulta($consulta);
		 if(mysqli_num_rows($respuesta_m)==0){$tot_m="00.00";}
         while($vecto_m = mysqli_fetch_array($respuesta_m)){$tot_m=number_format($vecto_m['total'],2,'.',' ');} if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
		 ?>
         <tr>
          <td style="background-color:#<?=$color?>">
           <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
            <tr height="30px">
             <td width="30px">&nbsp;</td>
             <td width="30px" align="center"><img src="img/detalles.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=<?=$_REQUEST['pag']?>&a=<?=$_REQUEST['a']?>&m=<?=$i?>';" style="cursor:pointer;" title="Ver detalles por dias"></td>
             <td style="text-indent:10px"><i><?=muesta_mes($i)?></i></td>
             <td width="100px" align="center" style="color:<? if($tot_m==0){echo "maroon";}else{ echo "blue";} ?>"><?=$tot_m?></td>
            </tr>
           </table>
          </td>
         </tr>
         <?
		 if(isset($_REQUEST['m']) && $_REQUEST['m']==$i){
		 for($j=1;$j<=muesta_dia($_REQUEST['a'],$i);$j++){
         $con_d = new conexion();
         $consulta = "call sp_caja_x_dia('".$_REQUEST['a']."',$i,$j);";
         $respuesta_d = $con_d->consulta($consulta);
		 if(mysqli_num_rows($respuesta_d)==0){$tot_d="00.00";}
         while($vecto_d = mysqli_fetch_array($respuesta_d)){$tot_d=number_format($vecto_d['total'],2,'.',' ');} if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
         ?>
         <tr>
          <td style="background-color:#E6E6FA">
           <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
            <tr height="30px">
             <td width="30px">&nbsp;</td>
             <td width="30px" align="center">&nbsp;</td>
             <td style="text-indent:10px"><i><?=muesta_mes_abr($i)."&nbsp;".$j?></i></td>
             <td width="100px" align="center" style="color:<? if($tot_d==0){echo "maroon";}else{ echo "blue";} ?>"><?=$tot_d?></td>
            </tr>
           </table>
          </td>
         </tr>
         <? }}}}} ?>
        </table>
      </td>
     </tr>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>