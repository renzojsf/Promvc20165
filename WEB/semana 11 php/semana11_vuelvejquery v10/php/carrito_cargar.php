<?php
$nom = $_POST['nom'];
$precio = $_POST['precio'];
$can = $_POST['can'];
$pt = $_POST['pt'];

session_start();

$i = count( $_SESSION['pt'] );

$_SESSION['nom'][ $i ] = $nom;
$_SESSION['precio'][ $i ] = $precio;
$_SESSION['canti'][ $i ] = $can;
$_SESSION['pt'][ $i ] = $pt;

?>