<? 
//DESARROLLO DE PORTALES WEB - 5TO CICLO.
# definimos una variable con el NOMBRE DE LA BASE DE DATOS
# en la que deseamos CREAR LA TABLA

$base="bdprueba";

#definimos otra variable con el NOMBRE QUE QUEREMOS DAR A LA TABLA

$tabla="cliente";

# establecemos la conexión con el servidor

$conexion=mysql_connect ("localhost","root","123");

#Seleccionamos la BASE DE DATOS en la que PRETENDEMOS CREAR LA TABLA

mysql_select_db ($base, $conexion);

# por pura comodidad asignamos a una variable el contenido
# de la sentencia MySQL y vamos añadiendo cosas con la opcion ".="
# Observa que SOLO HAY COMAS, -NO LAS OLVIDES- separando los distintos CAMPOS
# pero NO cuando se trata de separar los FLAGS de un mismo campo.
#
# Fíjate como se asignan los valores a los campos ENUM y SET
# observa Que los distintos valores van ENTRE COMILLAS Y SEPARADOS POR COMAS
# Fijate que en esos supuestos HE PUESTO COMILLAS SIMPLES '
# debe hacerse asi porque ESTOY UTILIZANDO " para delimitar las cadenas

# Un AVISO IMPORTANTE
# Las definiciones de los distintos campos VAN SEPARADAS POR COMAS
# pero SI PONES COMA DESPUES DEL ULTIMO (ANTES DE CERRAR EL PARENTESIS)
# te dara error y no te creara LA TABLA
$crear="CREATE TABLE  $tabla (";
$crear.="Contador TINYINT(8)  UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,";
$crear.="DNI CHAR(8) NOT NULL,  ";
$crear.="Nombre VARCHAR (20)  NOT NULL, ";
$crear.="Apellido1 VARCHAR (15)  not null, ";
$crear.="Apellido2 VARCHAR (15)  not null, ";
$crear.="Nacimiento DATE DEFAULT '1970-12-21', ";
$crear.="Hora TIME DEFAULT '00:00:00', ";
$crear.="Sexo Enum('M','F') DEFAULT 'M' not null, ";
 $crear.="Fumador CHAR(0) , ";
$crear.="Idiomas SET('Castellano','Frances','Ingles','Aleman','Bulgaro',' Chino'), ";
 $crear.=" PRIMARY KEY(DNI), ";
$crear.=" INDEX auto (Contador)";
$crear.=")";
#Creamos la cadena, comprobamos si esa instruccion devuelve VERDADERO o FALSO
# y dependiendo de ellos insertamos el mensaje de exito o fracaso
 if(mysql_db_query ($base,$crear ,$conexion)) {
echo "<h2> Tabla $tabla creada con EXITO </h2><br>";
    }else{
echo "<h2> La tabla $tabla NO HA PODIDO CREARSE ";
#echo mysql_error ($conexion)."<br>";
$numerror=mysql_errno ($conexion);
    if ($numerror==1050){echo "porque YA EXISTE</h2>";}
};  # cerramos la conexion... y listo...
         mysql_close($conexion)
?> 
