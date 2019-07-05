<?php 

/**
*
*/

class Page_crearhabitacionController extends Page_mainController
{

	public function indexAction()
	{
		
		$Model_Hotel = new Page_Model_DbTable_Hoteles();
		$this->_view->hoteles_asociados = $Model_Hotel->getHotel_id_name();
	}
	
	public function crearAction(){
		
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