<?php
session_start();

$_SESSION['x']='hola';
$h=50;
$_SESSION[h]=80;
$_SESSION[50]='manolito';
echo '<pre>';
print_r($_SESSION);
echo '</pre>';
?>
