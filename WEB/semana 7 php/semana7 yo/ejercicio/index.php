<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Restaurante - Texto</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
</head>
<body bgcolor="#0066cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td width="745" height="60" colspan="3" class="logo" nowrap="nowrap"><br />
	DESARROLLO DE PORTALES <span class="tagline"></span></td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#003399">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText"><a href="javascript:;">INICIO</a></td>
	<td>&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td width="15" valign="top"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td width="140" valign="top"><img src="mm_spacer.gif" alt="" width="140" height="1" border="0" /></td>
	<td width="505" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="2" width="440">
		<tr>
		<td class="pageName">MANTENIMIENTO DE INGRESO CLIENTE </td>
		</tr>

		<tr>
		<td class="bodyText">
		<form id="form1" name="form1" method="post" action="">
		  NOMBRE DE CLEINTE:
		  <label>
		  <input name="textfield" type="text" size="50" maxlength="50" />
		  </label> 
               <p>DIRECCION : 
                 <input name="textfield2" type="text" size="50" maxlength="50" />
              </p>
               <p>DISTRITO
                 <label>            
               <select name="select">
                   <option value="0">..:SELECCIONE:..</option>
                   <option value="LIMA">LIMA</option>
                   <option value="SAN LUIS">SAN LUIS</option>
                   <option value="SURCO">SURCO</option>
                   <option value="SAN BORJA">SAN BORJA</option>
                   <option value="SAN MIGUEL">SAN MIGUEL</option>
                   <option value="JESUS MARIA">JESUS MARIA</option>
                   <option value="LINCE">LINCE</option>
                   <option value="VENTANILLA">VENTANILLA</option>
                   <option value="COMAS">COMAS</option>
                   <option value="LOS OLIVOS">LOS OLIVOS</option>
                 </select>
                 </label>
               </p>
               <p>TELEFONO : 
                 <input name="textfield22" type="text" size="20" maxlength="20" />
               </p>
               <p>NIVEL ACADEMICO: 
                 <label>
                 <input name="op" type="radio" value="INST. SUPERIOR"checked  />
                 INST. SUPERIOR</label>
                 <label>
                 <input name="op" type="radio" value="UNIVERSITARIO" />
                 UNIVERSITARIO
                 <input name="op" type="radio" value=" MAESTRIA U OTRO." />
                 MAESTRIA U OTRO.</label>
               </p>
               <p>
                 <label>
                 <input name="grabarcliente" type="submit" id="grabarcliente" value="GRABAR DATA" />
                 </label>
                 <input name="mostrarcliente" type="submit" id="mostrarcliente" value="MOSTRAR DATA" />
                 <input name="verproductos" type="submit" id="verproductos" value="VER PRODUCTOS" />           			   
			   </p>
		</form>	
		<?php
		if (isset($_REQUEST['grabarcliente']))
{
	$file=fopen("cliente.dat","a");
	$cadena=$_REQUEST['textfield']." -<- "
	.$_REQUEST['textfield2']."--"
	.$_REQUEST['select']."--"
	.$_REQUEST['textfield22']."--"
	.$_REQUEST['op']."<br>";
//solo pongo br y lista <br> linea <h2>
fputs($file,$cadena);
	echo "<h3 style='color:red'>Data grabada...</h3>";
}
if (isset($_REQUEST['mostrarcliente']))
{
	echo "<h2>Clientes Almacenados Almacenadas</h2>";
	include("cliente.dat");
}
		?>
		<p>&nbsp;</p>

		<br /></td>
		</tr>
	</table>
	 <br />
	&nbsp;<br />	</td>
	<td valign="top">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr>
	<td width="15">&nbsp;</td>
    <td width="140">&nbsp;</td>
    <td width="505">&nbsp;</td>
    <td width="100">&nbsp;</td>
    <td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
