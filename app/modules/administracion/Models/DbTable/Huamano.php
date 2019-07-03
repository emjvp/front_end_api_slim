<?php 
/**
* clase que genera la insercion y edicion  de Humano en la base de datos
*/
class Administracion_Model_DbTable_Huamano extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'humano';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'humano_id';

	/**
	 * insert recibe la informacion de un Humano y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$humano_nombre = $data['humano_nombre'];
		$humano_faccion = $data['humano_faccion'];
		$humano_trabajo = $data['humano_trabajo'];
		$query = "INSERT INTO humano( humano_nombre, humano_faccion, humano_trabajo) VALUES ( '$humano_nombre', '$humano_faccion', '$humano_trabajo')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un Humano  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$humano_nombre = $data['humano_nombre'];
		$humano_faccion = $data['humano_faccion'];
		$humano_trabajo = $data['humano_trabajo'];
		$query = "UPDATE humano SET  humano_nombre = '$humano_nombre', humano_faccion = '$humano_faccion', humano_trabajo = '$humano_trabajo' WHERE humano_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}