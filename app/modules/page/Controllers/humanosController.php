<?php 

/**
*
*/

class Page_humanosController extends Page_mainController
{

	public function indexAction()
	{
		$contenidosModel = new Page_Model_DbTable_Contenidos();
		$humanofaccionModel = new Page_Model_DbTable_HumanoFaccion();
		$this->_view->intrhumanos = $contenidosModel->getList("contenidos_seccion = '2'","orden DESC")[0];
		$this->_view->facciones = $humanofaccionModel->getList("","orden ASC");
	}
	public function faccionAction(){
		$faccion = $this->_getSanitizedParam("faccion");
		$humanofaccionModel = new Page_Model_DbTable_HumanoFaccion();
		$humanoModel = new Page_Model_DbTable_Humano();
		$this->_view->faccion = $humanofaccionModel->getList("humano_faccion_id = '$faccion'", "orden DESC")[0];
		$this->_view->humanos = $humanoModel->getList("humano_faccion = '$faccion'","orden DESC");

		
	}
}