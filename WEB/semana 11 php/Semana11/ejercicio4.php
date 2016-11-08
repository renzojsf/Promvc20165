<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/plantilla_contenido.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>plantilla.jpg</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS3 Dreamweaver CS3 target.  Created Thu Oct 14 18:32:13 GMT-0500 (SA Pacific Standard Time) 2010-->
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
</head>
<body bgcolor="#ffffff">
<table border="0" cellpadding="0" cellspacing="0" width="1000">
<!-- fwtable fwsrc="diseños.png" fwpage="plantilla" fwbase="plantilla.jpg" fwstyle="Dreamweaver" fwdocid = "119485501" fwnested="0" -->
  <tr>
   <td><img src="img/spacer.gif" width="119" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="82" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="81" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="606" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="108" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="9"><img src="img/plantilla_r1_c1.jpg" alt="" name="plantilla_r1_c1" width="1000" height="234" border="0" usemap="#plantilla_r1_c1Map" id="plantilla_r1_c1" /></td>
   <td><img src="img/spacer.gif" width="1" height="234" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="7" colspan="3"><img name="plantilla_r2_c1" src="img/plantilla_r2_c1.jpg" width="121" height="76" border="0" id="plantilla_r2_c1" alt="" /></td>
   <td rowspan="2" colspan="3"><a href="ejercicio1.php" target="_self"><img name="plantilla_r2_c4" src="img/plantilla_r2_c4.jpg" width="84" height="25" border="0" id="plantilla_r2_c4" alt="" /></a></td>
   <td colspan="3"><img name="plantilla_r2_c7" src="img/plantilla_r2_c7.jpg" width="795" height="2" border="0" id="plantilla_r2_c7" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="11"><img name="plantilla_r3_c7" src="img/plantilla_r3_c7.jpg" width="81" height="1014" border="0" id="plantilla_r3_c7" alt="" /></td>
   <td rowspan="10" valign="top"><!-- InstanceBeginEditable name="EditRegion3" -->
   <?php
   echo "<h2>EJERCICIO 4</h2>";
   $base="bdprueba";
   $tabla="cliente";
   $nombres=array("Claudia","Fabio","Sandra","Carla","Alejandra","Maria Pia","Tatyana","Cecilia","Patricia",
   				  "Manuel","Sebastian","Antonia","Fiorella","Abraham","Malkolm","Adrian");
   $nombres[]="Andrea";$nombres[]="Alberto";
   
   $ape1=array("Fabucci","Fernandez","Alvarez","Dominguez","Garcia","Rodriguez","Iglesias","Cano","Corrales",
   			   "Mendoza","Sandoval","Parvina","Huaroto","Sanchez","Cerda","Pacheco","Suarez");
   $ape1[]="Quiroz";$ape1[]="Lopez";
   
   $ape2=array("Del Rio","Acurio","Del Valle","Del Monte","De Loriana","De Nora","De Aviles","Quiroz Mora",
   			   "Lembeck","Orion","Quiroz","Arellano","Camacho","Garcia","Anchante","Motta");
   $ape2[]="De Grado";$ape2[]="De Las Asturias";
   
   $i=0;
   $conexion=mysql_connect("localhost","root","123");
   mysql_select_db($base,$conexion);
   
   while($i<250)
   {
   		#Generamos un numero de DNI aleatoriamente
		$v1=mt_rand(1,999999999);
		$v2=$nombres[mt_rand(0,13)];
		$v3=$ape1[mt_rand(0,12)];
		$v4=$ape2[mt_rand(0,12)];
		$v5=date("y-m-d",mt_rand(0,462837600));
		$v6=substr($v2,-1);
		if($v6=="a")
		{
			$v6="F";
		}
		else
		{
			$v6="M";
		}
		$v7=date("h:i:s",mt_rand(0,462837600));
		$v8=mt_rand(0,1);
		if($v8==0)
		{
			$v8="\N";
		}
		else
		{
			$v8="''";
		}
		$v9=mt_rand(0,64);
		
		#AÑADIMOS EL NUEVO REGISTRO
		mysql_query("INSERT $tabla (DNI,Nombres,Apellido1,Apellido2,Nacimiento,
				    Sexo,Hora,Fumador,Idiomas) VALUES
					('$v1','$v2','$v3','$v4','$v5','$v6','$v7','$v8','$v9')",$conexion);
					
		if(mysql_errno($conexion)==0)
		{
			//No Existio Error
			$i++;
			echo "Cliente : $i, con Nombre : $v2, con DNI : $v1<br>";
		}
   }
   mysql_close();
   ?>
   <!-- InstanceEndEditable --></td>
   <td rowspan="11"><img name="plantilla_r3_c9" src="img/plantilla_r3_c9.jpg" width="108" height="1014" border="0" id="plantilla_r3_c9" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="23" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="plantilla_r4_c4" src="img/plantilla_r4_c4.jpg" width="84" height="4" border="0" id="plantilla_r4_c4" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="ejercicio2.php" target="_self"><img name="plantilla_r5_c4" src="img/plantilla_r5_c4.jpg" width="84" height="19" border="0" id="plantilla_r5_c4" alt="" /></a></td>
   <td><img src="img/spacer.gif" width="1" height="19" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="plantilla_r6_c4" src="img/plantilla_r6_c4.jpg" width="84" height="6" border="0" id="plantilla_r6_c4" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><a href="ejercicio3.php" target="_self"><img name="plantilla_r7_c4" src="img/plantilla_r7_c4.jpg" width="84" height="19" border="0" id="plantilla_r7_c4" alt="" /></a></td>
   <td><img src="img/spacer.gif" width="1" height="19" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="plantilla_r8_c4" src="img/plantilla_r8_c4.jpg" width="84" height="3" border="0" id="plantilla_r8_c4" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="2"><img name="plantilla_r9_c1" src="img/plantilla_r9_c1.jpg" width="120" height="24" border="0" id="plantilla_r9_c1" alt="" /></td>
   <td colspan="3"><a href="ejercicio4.php" target="_self"><img name="plantilla_r9_c3" src="img/plantilla_r9_c3.jpg" width="84" height="19" border="0" id="plantilla_r9_c3" alt="" /></a></td>
   <td rowspan="5"><img name="plantilla_r9_c6" src="img/plantilla_r9_c6.jpg" width="1" height="940" border="0" id="plantilla_r9_c6" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="19" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="3"><img name="plantilla_r10_c3" src="img/plantilla_r10_c3.jpg" width="84" height="5" border="0" id="plantilla_r10_c3" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="3"><img name="plantilla_r11_c1" src="img/plantilla_r11_c1.jpg" width="119" height="916" border="0" id="plantilla_r11_c1" alt="" /></td>
   <td colspan="3"><a href="ejercicio5.php" target="_self"><img name="plantilla_r11_c2" src="img/plantilla_r11_c2.jpg" width="84" height="19" border="0" id="plantilla_r11_c2" alt="" /></a></td>
   <td rowspan="3"><img name="plantilla_r11_c5" src="img/plantilla_r11_c5.jpg" width="1" height="916" border="0" id="plantilla_r11_c5" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="19" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="3"><img name="plantilla_r12_c2" src="img/plantilla_r12_c2.jpg" width="84" height="897" border="0" id="plantilla_r12_c2" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="825" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="plantilla_r13_c8" src="img/plantilla_r13_c8.jpg" width="606" height="72" border="0" id="plantilla_r13_c8" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="72" border="0" alt="" /></td>
  </tr>
</table>

<map name="plantilla_r1_c1Map" id="plantilla_r1_c1Map"><area shape="rect" coords="135,199,214,223" href="index.php" />
</map></body>
<!-- InstanceEnd --></html>
