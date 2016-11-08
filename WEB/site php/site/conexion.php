<?
class conexion {
	private $_CON;
	
	function conexion() {
		$conex = array('localhost','root','31100886','dbintranet');
		$this->_CON = mysqli_connect($conex[0],$conex[1],$conex[2],$conex[3]);
	}
	
	public function consulta($sql) {
		return mysqli_query($this->_CON,$sql);
	}
}
?>