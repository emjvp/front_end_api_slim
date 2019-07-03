<?php 
/**
* clase que genera la insercion y edicion  de Humano Trabajo en la base de datos
*/
class Administracion_Model_DbTable_Humanotrabajo extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'humano_trabajo';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'humano_trabajo_id';

	/**
	 * insert recibe la informacion de un Humano Trabajo y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$humano_trabajo_nombre = $data['humano_trabajo_nombre'];
		$humano_trabajo_introduccion = $data['humano_trabajo_introduccion'];
		$humano_trabajo_descripccion = $data['humano_trabajo_descripccion'];
		$humano_trabajo_imagen = $data['humano_trabajo_imagen'];
		$query = "INSERT INTO humano_trabajo( humano_trabajo_nombre, humano_trabajo_introduccion, humano_trabajo_descripccion, humano_trabajo_imagen) VALUES ( '$humano_trabajo_nombre', '$humano_trabajo_introduccion', '$humano_trabajo_descripccion', '$humano_trabajo_imagen')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un Humano Trabajo  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$humano_trabajo_nombre = $data['humano_trabajo_nombre'];
		$humano_trabajo_introduccion = $data['humano_trabajo_introduccion'];
		$humano_trabajo_descripccion = $data['humano_trabajo_descripccion'];
		$humano_trabajo_imagen = $data['humano_trabajo_imagen'];
		$query = "UPDATE humano_trabajo SET  humano_trabajo_nombre = '$humano_trabajo_nombre', humano_trabajo_introduccion = '$humano_trabajo_introduccion', humano_trabajo_descripccion = '$humano_trabajo_descripccion', humano_trabajo_imagen = '$humano_trabajo_imagen' WHERE humano_trabajo_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}