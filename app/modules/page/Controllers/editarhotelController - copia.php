<?php 

/**
*
*/

class Page_editarhotelController extends Page_mainController
{

	public function indexAction()
	{
		$ModelHotel = new Page_Model_DbTable_Hoteles();	 
		$this->_view->response_hoteles = $ModelHotel->getAllApi();
		 
		
	}
	
	
	public function editarAction(){
		$id = $this->_getSanitizedParam("id");
		$nombre = $this->_getSanitizedParam("nombre");
		$ciudad = $this->_getSanitizedParam("ciudad");
		$cant_hab = $this->_getSanitizedParam("cant_hab");
		$direccion = $this->_getSanitizedParam("direccion");
		$nit = $this->_getSanitizedParam("nit");

		$Model_Hotel = new Page_Model_DbTable_Hoteles();
		
		if(!$ciudad){
			$ciudad = null;
		}
		if(!$cant_hab){
			$cant_hab = null;
		}
		if(!$direccion){
			$direccion = null;
		}
		if(!$nit){
			$nit = null;
		}		
				
		$ModelHotel = new Page_Model_DbTable_Hoteles();
		$this->_view->response_hoteles = $ModelHotel->updateApi($id, $nombre, $ciudad, $cant_hab, $direccion, $nit);
		
		

	}
	
	
}