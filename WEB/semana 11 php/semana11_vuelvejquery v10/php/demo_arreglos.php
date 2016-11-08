<?php

$a= array();
$a[0]=1;
$a[1]=50;
$a[3]='hola';

$b = array('4','hola',6,$a);


$c = array(  0=>7, 60=>9, 8=>50, 'adios' );


$d=array(9=>20,8=>50,'x'=>85,'Hola'=>'Como');

foreach( $d as $i => $v ){
	echo 'posicion ',$i,': valor ',$v,'<br>';
}

?>