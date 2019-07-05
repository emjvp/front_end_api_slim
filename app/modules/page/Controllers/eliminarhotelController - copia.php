<?php 

/**
*
*/

class Page_eliminarhotelController extends Page_mainController
{

	public function indexAction()
	{
		$ModelHotel = new Page_Model_DbTable_Hoteles();	 
		$this->_view->response_hoteles = $ModelHotel->getAllApi();				
	}		
	public function eliminarAction(){
		$ModelHotel = new Page_Model_DbTable_Hoteles();	
		$id = $this->_getSanitizedParam("id");
		$ModelHotel->deleteApi($id);


	}
	

	
}