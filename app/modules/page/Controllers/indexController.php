<?php 

/**
*
*/

class Page_indexController extends Page_mainController
{
	
	public function indexAction()
	{
		$HotelesModel = new Page_Model_DbTable_Hoteles();
		
		$this->_view->response_hoteles = $HotelesModel->getAllApi();
		
		 
		
	}
	
}