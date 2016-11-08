<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Documento sin t&iacute;tulo</title>
<style type="text/css">
<!--
.Estilo1 {
	color: #FF0000;
	font-weight: bold;
}
body {
	background-color: #FFFF99;
}
-->
</style>
</head>

<body>


<h1><strong><u>La estructura de MySQL</u></strong> </h1>
<p align="center"><strong>En el directorio /benc encontraremos ejemplos de script y SQL. En el        directoio /share est&aacute;n los mensajes de error del servidor para los        distinos idiomas. Los directorios /include y /lib contiene los fichero *.h        y las librerias necesarias, en /bin estan los ficheros ejecutables y en        /data encontraremos como subdirectorio cada una de las bases de datos que        hayamos creado. </strong></p>
<p>Como hemos dicho, para cada base de datos que nostros creamos, MySQL crea un directorio        con el nombre que le hemos asignado a la bade de datos. Dentro de este        directorio, por cada tabla que definamos MySQL va ha crear tres archivos: <strong>mitabla.ISD,        mitabla.ISM, mitabla.frm</strong> </p>
<p class="Estilo1">El abla.frm </p>
<p>El archivo con extensi&oacute;n <strong>ISD</strong>, es el contine los datos de        nuestra tabla, el <strong>ISM</strong> contiene informaci&oacute;n acerca de las claves y        otro datos que MySQL utiliza para buscar datos en el fichero <strong>ISD</strong>. Y        el archivo <strong>frm</strong> contine la estructura de la propia tabla. </p>
<p>Dado que las bases de datos de MySQL son simples ficheros de un        directorio, para realizar copias de seguridad, podremos utilizar las        herramientas de compresi&oacute;n que habitualmente usamos en nuestro sistema y        luego copiarlo a otro lugar, o simplemente esto &uacute;ltimo. </p>

</body>
</html>
