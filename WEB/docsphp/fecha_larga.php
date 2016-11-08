
<?php
/*******************************************************
*
* Ejemplo que permite generar una cadena con la
* fecha actual en formato: Martes 29 de abril de 2008
*
* Archivo: fecha_larga.php
*Fecha en Formato Largo.

*Este script nos permite incluir en nuestras paginas PHP la fecha en formato largo, es decir el nombre del dia, el dia en numero, el nombre del mes y el año en formato de cuatro digitos. Para ello utiliza la función de tratamiento de fechas GETDATE que nos permite obtener los datos de la fecha actual o una fecha cualquiera.

*****************************************************/


/************************************************************************
* Declaramos una funcion para convertir el nombre del mes a castellano,
* ya que la funcion getdate() regresa el nombre del mes en ingles.
* Le pasamos como parametro el nombre del mes. ej. January a: Enero
************************************************************************/
function mes_espa($mes) {

if ($mes == "January") {
$mes = "Enero";
} elseif ($mes == "February") {
$mes = "Febrero";
} elseif ($mes == "March") {
$mes = "Marzo";
} elseif ($mes == "April") {
$mes = "Abril";
} elseif ($mes == "May") {
$mes = "Mayo";
} elseif ($mes == "June") {
$mes = "Junio";
} elseif ($mes == "July") {
$mes = "Julio";
} elseif ($mes == "August") {
$mes = "Agosto";
} elseif ($mes == "September") {
$mes = "Septiembre";
} elseif ($mes == "October") {
$mes = "Octubre";
} elseif ($mes == "November") {
$mes = "Noviembre";
} elseif ($mes == "December") {
$mes = "Diciembre";
}

return $mes;

}



/************************************************************************
* Declaramos una funcion para convertir el nombre del dia a castellano,
* ya que la funcion getdate() regresa el nombre del dia en ingles.
* Le pasamos como parametro el nombre del dia. ej. Monday a: Lunes
************************************************************************/

function Dia_Espa($dia) {

if ($dia == "Sunday") {
$dia = "Domingo";
} elseif ($dia == "Monday") {
$dia = "Lunes";
} elseif ($dia == "Tuesday") {
$dia = "Martes";
} elseif ($dia == "Wednesday") {
$dia = "Miércoles";
} elseif ($dia == "Thursday") {
$dia = "Jueves";
} elseif ($dia == "Friday") {
$dia = "Viernes";
} elseif ($dia == "Saturday") {
$dia = "Sábado";
}

return $dia;

}


/************************************************************************
* Utilizamos el arreglo getdate para obtener todos
* los parametros de la fecha.
* Si deseas mostrar otra fecha diferente a la actual, deberas agregar
* un parametro a la función con el valor entero de esa fecha:
* Ejemplo: getdate(980936503) que resulta: Miercoles 31 de Enero de 2001
************************************************************************/


$fecha = getdate();

$dia_let = $fecha['weekday'];
$dia_let = Dia_espa($dia_let);
$dia_num = $fecha['mday'];
$mes = $fecha['month'];
$mes = mes_espa($mes);
$anio = $fecha['year'];

// Ahora solo componemos la fecha con el valor de las variables
// en una cadena.

echo "<h2> trabajo de fechas </h2>";
echo "Fecha: " . $dia_let . " " . $dia_num . " de " . $mes . " de " . $anio;

?> 