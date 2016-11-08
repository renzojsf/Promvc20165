<html>
<head>
<title>idat ejercicios</title>

<link rel="stylesheet" href="mm_training.css" type="text/css" />
</head>
<body bgcolor="#64748B">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#26354A">
	<td width="15" nowrap="nowrap"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="70" colspan="2" class="logo" nowrap="nowrap">DESARROLLO DE PORTALES WEB <span class="tagline"></span></td>
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
	<td width="15" valign="top">&nbsp;</td>
	<td width="35"><img src="mm_spacer.gif" alt="" width="35" height="1" border="0" /></td>
	<td width="710" valign="top"><br />
	&nbsp;<br />
	<table border="0" cellspacing="0" cellpadding="2" width="500">
		<tr>
		<td class="pageName">GENERANDO HABILIDADES 
		</td>
		</tr>

		<tr>
		<td class="bodyText">
		<p>Realizar un algoritmo en php que permita ingresar un valor por teclado (entre 1 y 4 d&iacute;gitos) y muestre lo siguiente: </p>
		<ul>
		  <li>Nro de millares </li>
		  <li>Nro de centenas: </li>
		  <li>Nro de decenas. </li>
		  <li>Nro de unidades. </li>
		  </ul>		
		  
<?php
echo"<form name='form1' action='' method='post'>";
echo"<h2>Ingrese Numero:<input type=text name=txt></h2>";
echo"<input type=submit value='Calcular' name='boton'></form>";

$pulsar=$_REQUEST['boton'];
$valor=$_REQUEST['txt'];

if(isset($pulsar))
{
echo"<h2>El valor es: $valor</h2>";
$dato=floor($valor/1000); //retorna el valor entero menor proximo
echo"<h2>La cantidad de millares es: $dato</h2>";
$valor-=$dato*1000;
$dato=floor($valor/100);
echo"<h2>La cantidad de centenas es: $dato</h2>";
$valor-=$dato*100;
$dato=floor($valor/10);
echo"<h2>La cantidad de decenas es: $dato</h2>";
$dato=$valor-$dato*10;
echo"<h2>La cantidad de unidades es: $dato</h2>";
}

?>
	  
		  </td>
		</tr>
	</table>
	 <br />	</td>
	<td>&nbsp;</td>
	</tr>
	<tr>
	<td width="15" >
	
	
	
	&nbsp;<br />	</td>
    
  </tr>
</table>
</body>
</html>

