<?php 
/**
* clase que genera la insercion y edicion  de Humano Faccion en la base de datos
*/
class Administracion_Model_DbTable_Humanofaccion extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'humano_faccion';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'humano_faccion_id';

	/**
	 * insert recibe la informacion de un Humano Faccion y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$humano_faccion_nombre = $data['humano_faccion_nombre'];
		$humano_faccion_introduccion = $data['humano_faccion_introduccion'];
		$humano_faccion_descipcion = $data['humano_faccion_descipcion'];
		$humano_faccion_imagen = $data['humano_faccion_imagen'];
		$query = "INSERT INTO humano_faccion( humano_faccion_nombre, humano_faccion_introduccion, humano_faccion_descipcion, humano_faccion_imagen) VALUES ( '$humano_faccion_nombre', '$humano_faccion_introduccion', '$humano_faccion_descipcion', '$humano_faccion_imagen')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un Humano Faccion  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$humano_faccion_nombre = $data['humano_faccion_nombre'];
		$humano_faccion_introduccion = $data['humano_faccion_introduccion'];
		$humano_faccion_descipcion = $data['humano_faccion_descipcion'];
		$humano_faccion_imagen = $data['humano_faccion_imagen'];
		$query = "UPDATE humano_faccion SET  humano_faccion_nombre = '$humano_faccion_nombre', humano_faccion_introduccion = '$humano_faccion_introduccion', humano_faccion_descipcion = '$humano_faccion_descipcion', humano_faccion_imagen = '$humano_faccion_imagen' WHERE humano_faccion_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}