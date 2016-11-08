<?php 
class Conectar 
{
	function __construct()
	{
	}

	public static function conexion(){
		try {
			require("Modelo/Config.php");
			$cone=new PDO("mysql:host=".DB_HOST.";dbname=".DB_NOMBRE,DB_USU,DB_PAS);
			//$cone=new PDO("mysql:host=localhost;dbname=test","root","");
			$cone->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		} catch (Exception $e) {
			die("Error.".$e->GetLine());
		}
		return $cone;
	}
	public static function cerrar(){
		global $conexion;
		$cone->closeCursor();
		$cone= null;
	}
}
?>