<?php

 try{
     $conn = new PDO('mysql:host=mysql.hostinger.es;dbname=u385565924_thera','u385565924_rakam','qSKE2mDkR1');
     echo 'Conexion realizada';
    }            
catch (PDOException $ex) {
       echo $ex->getMessage();
       exit;
    }
 
/* @var $_POST type */
$nombre= $_POST["txtusuario"];
$pass= $_POST["txtusuario"];


 
 
 $query=("SELECT login,passadmin FROM `uruario` "
         . "WHERE `login`='".mysql_real_escape_string($nombre)."' and "
         . "`passs`='".mysql_real_escape_string($pass)."'"); 

$rs= mysql_query($query); 
$row=mysql_fetch_object($rs); 
$nr = mysql_num_rows($rs);


if($nr == 1){ 
   
echo 'No ingreso'; 

} 
else if($nr == 0) {    
     
     header("Location:plantilla.html"); 
	 
}   

?>