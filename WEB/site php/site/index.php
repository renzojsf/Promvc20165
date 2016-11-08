<html>
<head>
<title>Ingreso a la intranet</title>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
<link rel="shortcut icon" href="img/colegio.png" type="image/x-icon" />
<style>
html,body{height:100%}
.txt{border:solid 1px #9a9a9a;text-indent:10px;font-family:verdana;font-size:12px; height:25px}
</style>
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
</head>
<body onLoad="enfoque('usr');" marginheight="0" marginwidth="0">

<form name="ingreso" id="ingreso" method="post" action="login.php">
<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
 <tr>
  <td align="center">
   <table border="0" width="600px" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #cccccc;font-family:verdana;font-size:12px">
    <tr height="25px"><td style="background-color:#7e95c9;color:white;" align="center"><b>Ingreso a la intranet</b></td></tr>
    <tr height="300px">
     <td style="background-color:#f5f5f5">
      <table border="0" width="300px" cellpadding="0" cellspacing="0" align="center" style="font-family:verdana;font-size:12px">
       <tr height="220px"><td align="center"><img src="img/insignia.png"></td></tr>
       <tr>
        <td>
         <table border="0" width="300px" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #cccccc;font-family:verdana;font-size:12px">
          <tr height="30px"><td style="background-color:#f5f5f5;color:#bf725e;border-bottom:solid 1px #CCCCCC;text-indent:10px" colspan="2" align="center">INGRESO AL SISTEMA</td></tr>
          <tr height="35px"><td style="color:#4f7d9f;text-indent:10px;border-bottom:solid 1px #CCCCCC;width:100px">Usuario</td><td style="border-bottom:solid 1px #CCCCCC"><input type="text" value="" name="usr" id="usr" class="txt"></td></td></tr>
          <tr height="35px"><td style="color:#4f7d9f;text-indent:10px;width:100px">Clave</td><td><input type="password" value="" name="pwd" id="pwd" class="txt"></td></tr>
         </table>
        </td>
       </tr>
       <tr height="45px"><td align="center"><input type="submit" value="Ingresar" class="boton" style="width:100px"></td></tr>
       <tr height="45px"><td align="center" style="color:red">
	   <? if(isset($_REQUEST['err'])){
		   echo "Datos incorrectos";
		   } 
		   ?></td></tr>
      </table>
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</form>

</body>
</html>