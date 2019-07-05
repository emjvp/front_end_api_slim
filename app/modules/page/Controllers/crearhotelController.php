<?php 

/**
*
*/

class Page_crearhotelController extends Page_mainController
{

	public function indexAction()
	{
		
	}
	
	public function crearAction(){
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
		$Model_Hotel->createApi($nombre, $ciudad, $cant_hab, $direccion, $nit);
		
		
	}
	
	

	
}