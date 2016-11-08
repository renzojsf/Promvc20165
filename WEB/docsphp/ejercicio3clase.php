<html>
<head>
<title>Texto</title>
<link rel="stylesheet" href="mm_training.css" type="text/css" />
</head>
<body bgcolor="#64748B">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#26354A">
	<td width="15" nowrap="nowrap"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="70" colspan="2" class="logo" nowrap="nowrap">RESULTADO DEL FORMULARIO <span class="tagline"></span></td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#FF6600">
	<td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="4" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#FFCC00">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td width="705" colspan="2" height="24">
	<table border="0" cellpadding="0" cellspacing="0" id="navigation">
        <tr>
          <td class="navText" align="center" nowrap="nowrap"><a href="javascript:;">INICIO</a></td>
        </tr>
      </table>	</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#FF6600">
	<td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="4" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td colspan="4"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	<td width="15" valign="top" bgcolor="#D3DCE6">&nbsp;</td>
	<td width="35" bgcolor="#D3DCE6"><img src="mm_spacer.gif" alt="" width="35" height="1" border="0" /></td>
	<td width="710" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="2" width="500">
		<tr>
		<td class="pageName">Sistema de Reserva de Boletos</td>
		</tr>

		<tr>
		<td class="bodyText"><br />
		<h2>&nbsp;</h2>
<form name="frm" action="" method="post">
  <table width=60% border=0 align="center">
<tr>
<td colspan=3><b>Que tipo de viaje desea hacer?</b>
</tr>
<tr>
<td valign=center align=center>
<input name=opc1 value=0 type=radio checked="checked"> 
<img src="ida_vuelta.gif" hspace=10>

<td valign=center align=center>
<input type=radio value=1 name=opc1> <img src="solo_ida.gif" hspace=10>

<td valign=center align=center>
<input type=radio value=2 name=opc1> <img src="multiples.gif" hspace=10>
</tr>
</table>

<blockquote><blockquote><blockquote><blockquote>
<font color=blue><b>A donde y cuando desea viajar</b></font>
</blockquote></blockquote></blockquote></blockquote>
<center>
<table border=0 width=60% cellspacing=0>
<tr>
<td><font face=verdana size=1>Desde</font><br>
<input name="txtdesde" type=text  id="txtdesde"  value="Lima">
<br>
<img src="escoger.gif" width="58" height="13">
<td bgcolor=lightblue>
<blockquote>
<font face=verdana size=1>Fecha de Salida</font>
<br>
<input name="txtfechasalida" type=text id="txtfechasalida" size=10>
</blockquote>
<td bgcolor=lightblue>
<blockquote>

<font face=verdana size=1>Hora  de Salida</font>
<br>
<select name="cbbhorasalida" id="cbbhorasalida">
  <option value="1">Cualquiera 
  <option value="2">Ma&ntilde;ana 
  <option value="3">Tarde 
  <option value="4">Noche 
  </select>
</blockquote></tr>

<tr>
<td><font face=verdana size=1>Hasta</font>
<td><div align="center"><font face=verdana size=1>Fecha de Regreso</font>
</div>
<td><div align="center"><font face=verdana size=1>Hora de Regreso</font></div>
</tr>
<tr>
  <td> <input name="txthasta" type="text" id="txthasta" />
    <br />
    <img src="escoger.gif" alt="esc" width="58" height="13" /> </td>
  <td bgcolor="lightblue"><blockquote>
    <input name="txtfecharegreso" type="text" id="txtfecharegreso" size="10" />
  </blockquote></td>
  <td bgcolor="lightblue"><blockquote>
    <select name="cbbhoraregreso" id="cbbhoraregreso">
      <option value="1">Cualquiera </option>
      <option value="2">Ma&ntilde;ana </option>
      <option value="3">Tarde </option>
      <option value="4">Noche </option>
          </select>
  </blockquote></td>
</tr>
<tr>
  <td>
  <td>
  <td></tr>
</table>
 <p align="left">&nbsp;</p>
<table width="60%" border="0">
  <tr>
    <td><font color="#0000FF"><strong>Cuantos pasajeros viajan?</strong></font></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Adultos:<br> 
      <label>
      <select name="cbbadulto" id="cbbadulto">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select>
      </label></td>
    <td>Ni&ntilde;os de 2 a 11 a&ntilde;os 
      : 
      <select name="cbbnino" id="cbbnino">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
          </select></td>
    <td>Bebes:<br>
      <select name="cbbbebe" id="cbbbebe">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select></td>
  </tr>
</table>
<p>
  <label>
  <input type="submit" name="Submit" value="Mostrar Dato" />
  </label>
  <label></label>
</p>
</center>
</form>

<?php
//mostrar todos los datos seleccionados en la parte inferior de la misma página.
$opc1=$_REQUEST['opc1'];//TIPO DE VIAJE
$desde=$_REQUEST['txtdesde'];
$fechasalida=$_REQUEST['txtfechasalida'];
$cbbhorasalida=$_REQUEST['cbbhorasalida'];

$hasta=$_REQUEST['txthasta'];
$fecharegreso=$_REQUEST['txtfecharegreso'];
$cbbhoraregreso=$_REQUEST['cbbhoraregreso'];

$cbbadulto=$_REQUEST['cbbadulto'];
$cbbnino=$_REQUEST['cbbnino'];
$cbbbebe=$_REQUEST['cbbbebe'];

$boton=$_REQUEST['Submit'];

$pagoadulto=0;
$pagonino=0;
$pagobebe=0;


switch($opc1){
 case 0:$opc1="Ida y Vuelta";break;
 case 1:$opc1="Solo Ida";break;
 case 2:$opc1="Multiples Destinos";break;
			}
switch($cbbhorasalida){
 case 0:$cbbhorasalida="Cualquiera";break;
 case 1:$cbbhorasalida="Ma&ntilde;ana";break;
 case 2:$cbbhorasalida="Tarde";break;
 case 3:$cbbhorasalida="Noche";break;
			}
switch($cbbhoraregreso){
 case 0:$cbbhoraregreso="Cualquiera";break;
 case 1:$cbbhoraregreso="Ma&ntilde;ana";break;
 case 2:$cbbhoraregreso="Tarde";break;
 case 3:$cbbhoraregreso="Noche";break;
			}
if(isset($boton)){
	if(($desde !=" " )&&($hasta !="")){
	echo"<form>";
	echo"<h1><b>Compra de Boletos de Viaje</b></h1>";
	echo"<b>Tipo de Viaje: $opc1</b><br>";
	echo"<b>Desde: $desde</b><br>";
	echo"<b>Hasta: $hasta</b><br>";
	echo"<b>Fecha de Viaje: $fechasalida</b><br>";
	echo"<b>Hora de Viaje: $cbbhorasalida</b><br>";
	echo"<b>Fecha de Regreso: $fecharegreso</b><br>";
	echo"<b>Hora de Regreso: $cbbhoraregreso</b><br><br>";
	echo"<b>Viajan:</b><br>";
	echo"<b>Adultos: $cbbadulto</b><br>";
	echo"<b>Ni&ntilde;os: $cbbnino</b><br>";
	echo"<b>Bebes: $cbbbebe</b><br><br>";
	echo"<h2><b>Totales</b></h2>";
$desadulto=0;
$adultototal=0;
		if($cbbadulto < 3){
		   $pagoadulto=150;
	  	   $adultototal=$pagoadulto*$cbbadulto; 
		   echo"<b>Adultos: $adultototal</b><br>";
					  }
		else{
		   $desadulto=150*0.15;
	       $pagoadulto=150*cbbadulto;
	       $adultototal=($pagoadulto - $desadulto);
		   echo"<b>Adultos: $adultototal</b><br>";
		    }

$ninototal=0;
$vale=0;
		if($cbbnino < 4){
		   $pagonino=95;
	  	   $ninototal=$pagonino*$cbbnino; 
		   echo"<b>Ni&ntilde;os: $ninototal</b><br>";
					  }
		else{
		   $pagonino=85;
	       $ninototal=($pagonino * $cbbnino);
		   $vale=140;
		   echo"<b>Ni&ntilde;os: $ninototal</b><br>";
		    }
		
$bebetotal=0;
$desbebe=0;
		if($cbbbebe > 0){
		   $pagobebe=140;
	  	   $bebetotal=$pagobebe*$cbbbebe;
		   $desbebe=$bebetotal-$vale;
		   echo"<b>Bebes: $desbebe</b><br>";
					  }
$pagar=0;
$recargo=0;
$pagototal=0;
		   $pagar=$adultototal + $ninototal + $desbebe;
		if($cbbhorasalida ='mañana' && $cbbhoraregreso = 'noche' ){
		   $recargo=$pagar*0.10;
		   $pagototal=$pagar + $recargo;
		 														  }   
		 if($cbbhorasalida ='noche' && $cbbhoraregreso = 'tarde' ){
		   $recargo=$pagar*0.15;
		   $pagototal=$pagar + $recargo;
		 														  }    
	   
		   echo"<b>El Pago Total es de S/.$pagar</b><br/>";
		   echo"<b>El Pago Neto es de S/.$pagototal</b>";		
	echo"</form>";
									  }
    else{echo"<h2><b>No Se Ingreso los Datos Requeridos</b></h2>";}
		
				 }
?>


	
		</td>
		</tr>
	</table>
	 <br />	</td>
	<td bgcolor="#D3DCE6">&nbsp;</td>
	</tr>

	<tr>
	<td width="15">&nbsp;<br />
	&nbsp;<br />	</td>
    <td width="35">&nbsp;</td>
    <td width="710">&nbsp;</td>
	<td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>

