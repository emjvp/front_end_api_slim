<?php 
/**
* clase que genera la insercion y edicion  de Contenidos en la base de datos
*/
class Administracion_Model_DbTable_Contenidos extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'contenidos';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'contenidos_id';

	/**
	 * insert recibe la informacion de un Contenidos y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$contenidos_fecha = $data['contenidos_fecha'];
		$contenidos_imagen = $data['contenidos_imagen'];
		$contenidos_seccion = $data['contenidos_seccion'];
		$contenidos_estado = $data['contenidos_estado'];
		$contenidos_titulo = $data['contenidos_titulo'];
		$contenidos_subtitulo = $data['contenidos_subtitulo'];
		$contenidos_introduccion = $data['contenidos_introduccion'];
		$contenidos_descripcion = $data['contenidos_descripcion'];
		$contenidos_enlace = $data['contenidos_enlace'];
		$query = "INSERT INTO contenidos( contenidos_fecha, contenidos_imagen, contenidos_seccion, contenidos_estado, contenidos_titulo, contenidos_subtitulo, contenidos_introduccion, contenidos_descripcion, contenidos_enlace) VALUES ( '$contenidos_fecha', '$contenidos_imagen', '$contenidos_seccion', '$contenidos_estado', '$contenidos_titulo', '$contenidos_subtitulo', '$contenidos_introduccion', '$contenidos_descripcion', '$contenidos_enlace')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un Contenidos  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$contenidos_fecha = $data['contenidos_fecha'];
		$contenidos_imagen = $data['contenidos_imagen'];
		$contenidos_seccion = $data['contenidos_seccion'];
		$contenidos_estado = $data['contenidos_estado'];
		$contenidos_titulo = $data['contenidos_titulo'];
		$contenidos_subtitulo = $data['contenidos_subtitulo'];
		$contenidos_introduccion = $data['contenidos_introduccion'];
		$contenidos_descripcion = $data['contenidos_descripcion'];
		$contenidos_enlace = $data['contenidos_enlace'];
		$query = "UPDATE contenidos SET  contenidos_fecha = '$contenidos_fecha', contenidos_imagen = '$contenidos_imagen', contenidos_seccion = '$contenidos_seccion', contenidos_estado = '$contenidos_estado', contenidos_titulo = '$contenidos_titulo', contenidos_subtitulo = '$contenidos_subtitulo', contenidos_introduccion = '$contenidos_introduccion', contenidos_descripcion = '$contenidos_descripcion', contenidos_enlace = '$contenidos_enlace' WHERE contenidos_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}