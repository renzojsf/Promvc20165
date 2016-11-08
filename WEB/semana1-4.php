<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/miestilo.css">
	<script type="text/javascript" src="CSS/jquery-2.1.3.js"></script>
	<title>Intranet</title>
</head>
<body>
<header>
<div class="contenedorslider">
		<h1>Portada</h1>

		<div id="slider">
			<div><img src="img/img1.jpg"></div>
			
			
		</div>
</div>

<h1>Intranet</h1>

</header>

<nav>
<ul class="">
	<a href=" "><li>INICIO</li></a>
	<a href=" "><li>NOSOTROS</li></a>
	<a href=" "><li>MISION</li></a>
	<a href=" "><li>CONTACTENOS</li></a>
	<a href=" "><li>UBICANOS</li></a>
</ul>	
<div class="handle">Menu</div>
</nav>
<script type="text/javascript">
var paises=new Array(" ","España","Argentina","Colombia","Perú");

var provincias_1=new Array("-","Andalucía","Asturias","Baleares","Canarias","Castilla y León","Castilla-La Mancha")
var provincias_2=new Array("-","Salta","San Juan","San Luis","La Rioja","La Pampa")
var provincias_3=new Array("-","Cali","Santamarta","Medellin","Cartagena")
var provincias_4=new Array("-","Lima","Piura","Cuzco","Lambayeque","Tacna")

function cambia_local(){
var pais;
pais = document.f1.pais[document.f1.pais.selectedIndex].value
//miro a ver si el pais está definido
if (pais != 0) {
//si estaba definido, entonces coloco las opciones de la provincia correspondiente.
//selecciono el array de provincia adecuado
mis_provincias=eval("provincias_" + pais)
//calculo el numero de provincias
num_provincias = mis_provincias.length
//marco el número de provincias en el select
document.f1.provincia.length = num_provincias
//para cada provincia del array, la introduzco en el select
for(i=0;i<num_provincias;i++){
document.f1.provincia.options[i].value=mis_provincias[i]
document.f1.provincia.options[i].text=mis_provincias[i]
}
}else{
//si no había provincia seleccionada, elimino las provincias del select
document.f1.provincia.length = 1
//coloco un guión en la única opción que he dejado
document.f1.provincia.options[0].value = "-"
document.f1.provincia.options[0].text = "-"
}
//marco como seleccionada la opción primera de provincia
document.f1.provincia.options[0].selected = true
}

function agregar(){
len =paises[document.f1.pais.value].length;
prov=document.f1.provincia.value;
len2 = prov.length;
document.f1.textarea.value+="\n  "+paises[document.f1.pais.value]+espacios(len)+prov+espacios(len2)+document.f1.txtmes.value;
}
function espacios(len){
var cadena="";
for (i=1;i<=(22-len);i++)
{
	cadena+=" ";
}
return cadena;
}



</script>

<section>
<p>Semana 1</p><br>
<form name="f1">
	 Pais:<select name=pais onChange="cambia_local()">
        <option value="0" selected>Seleccione...
          <option value="1">España
            <option value="2">Argentina
              <option value="3">Colombia
                <option value="4">Perú
     </select><br>
     <br>
     Provincia: <select name=provincia>
            	<option value="-">
            	</select><br>
     <br>
             Mes:<input name="txtmes" type="text" id="txtmes">
      <br>
      <br>

         <input name="pulsar" type="button" id="pulsar" value="Agregar" onClick="agregar()">
       <br>
       <br>
      <textarea name="textarea" cols="80" rows="8">País...................Provincia.................Mes</textarea>
      <br>

</form>
</section>
</body>
</html>