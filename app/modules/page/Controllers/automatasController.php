<?php 

/**
*
*/

class Page_automatasController extends Page_mainController
{

	public function indexAction()
	{
		$contenidosModel = new Page_Model_DbTable_Contenidos();
		$tipoautomataModel = new Page_Model_DbTable_TipoAutomata();
		$this->_view->intrautomatas = $contenidosModel->getList("contenidos_seccion = '3'", "orden DESC")[0];
		$this->_view->tipoautomatas = $tipoautomataModel->getList("","");
	}
	public function tipoAction()
	{
		$tipo = $this->_getSanitizedParam("tipo");
		$tipoautomataModel = new Page_Model_DbTable_TipoAutomata();
		$automataModel = new Page_Model_DbTable_Automata();
		$this->_view->tipo_automata = $tipoautomataModel->getList("tipo_automata_id = '$tipo'","")[0];
		$this->_view->automatas = $automataModel->getList("automata_tipo = '$tipo'", "orden DESC");
	}
}