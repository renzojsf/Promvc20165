<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>IDAT - TRABAJO PRACTICO</title>

</head>

<body>
<h2>Sistema de Reserva de Boletos</h2>
<font size="-2" face="Verdana, Arial, Helvetica, sans-serif"><strong>  <a href="#">www.reservaelboleto.com.pe</a> </strong></font>
<center>
<table border=0 width=70%>
<tr>
<th align=left><img src="busqueda.gif">
<th> <font color=blue><b>Vuelos</b></font></tr>
</table>
</center>

<form name="frm" action="" method="post">


<blockquote><blockquote><blockquote><blockquote>
<font color=blue><b>A donde y cuando desea viajar</b></font>
</blockquote></blockquote></blockquote></blockquote>
<center>
<table border=0 width=60% cellspacing=0>
<tr>
<td><font face=verdana size=1>Desde</font><br>
<input name="txtdesde" type=text disabled id="txtdesde"  value="Lima">
<br>

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
    <br /></td>
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
    <td>Adultos: 
      <label>
      <select name="cbbadulto" id="cbbadulto">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
      </select>
      </label></td>
    <td>Ni&ntilde;os de 2 a 11 a&ntilde;os : 
      <select name="cbbnino" id="cbbnino">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
            </select></td>
    <td>Bebes:
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
  <input type="submit" name="Submit" value="Almacenar Dato" />
  </label>
</p>
<p>&nbsp;</p>
</center>


</form>



</body>
</html>
