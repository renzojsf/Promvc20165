<?php 
class Cls_Productos_Model{
	private $db;
	private $productos;
	function __construct()
	{
	require_once("Modelo/Conectar.php");
	$this->db=Conectar::conexion();
	$this->productos=array();
	}
	public function get_productos(){

		$RESULTA=$this->db->query("SELECT * FROM producto ");
		while ($filtra =$RESULTA->fetch(PDO::FETCH_ASSOC)) {
			$this->productos[]=$filtra;
			
		}
		return $this->productos;
	}

}
?>