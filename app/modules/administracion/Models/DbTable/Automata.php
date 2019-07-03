<?php 
/**
* clase que genera la insercion y edicion  de Automata en la base de datos
*/
class Administracion_Model_DbTable_Automata extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'automata';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'automata_id';

	/**
	 * insert recibe la informacion de un Automata y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$automata_nombre = $data['automata_nombre'];
		$automata_tipo = $data['automata_tipo'];
		$query = "INSERT INTO automata( automata_nombre, automata_tipo) VALUES ( '$automata_nombre', '$automata_tipo')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un Automata  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$automata_nombre = $data['automata_nombre'];
		$automata_tipo = $data['automata_tipo'];
		$query = "UPDATE automata SET  automata_nombre = '$automata_nombre', automata_tipo = '$automata_tipo' WHERE automata_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}