<?php 

/**
*
*/

class Page_indexController extends Page_mainController
{

	public function indexAction()
	{
		$contenidosModel = new Page_Model_DbTable_Contenidos();
		$this->_view->seccion = 1;
		$this->_view->contenidos = $this->template->getContent(1);
		$this->_view->intrproyecto = $contenidosModel->getList("contenidos_seccion = '1'","orden DESC")[0];
		
	}

}