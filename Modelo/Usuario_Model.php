<?php 
require_once("../Modelo/Conectar.php");
class Usuario_Model
{
	function __construct()
	{
	}
	public function Login($id){
		try {
			$pdo=Conectar::conexion();
			$sql="SELECT * FROM productos WHERE Id=$id";
			$stmt=$pdo->prepare($sql);
			$stmt->execute();
			$respuesta=$stmt->fetchAll();
			return $respuesta;
		} catch (Exception $e) {
			
		}
	}
}
?>