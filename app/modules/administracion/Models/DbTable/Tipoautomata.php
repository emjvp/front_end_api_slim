<?php 
/**
* clase que genera la insercion y edicion  de Tipo aut&oacute;mata en la base de datos
*/
class Administracion_Model_DbTable_Tipoautomata extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'tipo_automata';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'tipo_automata_id';

	/**
	 * insert recibe la informacion de un Tipo aut&oacute;mata y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$tipo_automata_nombre = $data['tipo_automata_nombre'];
		$tipo_automata_introduccion = $data['tipo_automata_introduccion'];
		$tipo_automata_descripcion = $data['tipo_automata_descripcion'];
		$tipo_automata_imagen = $data['tipo_automata_imagen'];
		$query = "INSERT INTO tipo_automata( tipo_automata_nombre, tipo_automata_introduccion, tipo_automata_descripcion, tipo_automata_imagen) VALUES ( '$tipo_automata_nombre', '$tipo_automata_introduccion', '$tipo_automata_descripcion', '$tipo_automata_imagen')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un Tipo aut&oacute;mata  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$tipo_automata_nombre = $data['tipo_automata_nombre'];
		$tipo_automata_introduccion = $data['tipo_automata_introduccion'];
		$tipo_automata_descripcion = $data['tipo_automata_descripcion'];
		$tipo_automata_imagen = $data['tipo_automata_imagen'];
		$query = "UPDATE tipo_automata SET  tipo_automata_nombre = '$tipo_automata_nombre', tipo_automata_introduccion = '$tipo_automata_introduccion', tipo_automata_descripcion = '$tipo_automata_descripcion', tipo_automata_imagen = '$tipo_automata_imagen' WHERE tipo_automata_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}