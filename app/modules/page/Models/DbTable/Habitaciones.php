<?php 

/**
* 
*/
class Page_Model_DbTable_Habitaciones
{
	protected $_name = null;
	protected $_id = null;
	public function getByIdApi($id){
		$curl = curl_init();
		
		curl_setopt_array($curl, array(
		  CURLOPT_URL => "http://localhost/api_rest_slim/public/api/habitaciones".$id,
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_TIMEOUT => 5,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "GET",
		  CURLOPT_HTTPHEADER => array(
			"cache-control: no-cache"
		  ),
		));
		
		$response = curl_exec($curl);
		$err = curl_error($curl);
		$array = json_decode($response, true);
		curl_close($curl);
		return $array;
	}
	public function getAllApi(){
		$curl = curl_init();
		
		curl_setopt_array($curl, array(
		  CURLOPT_URL => "http://localhost/api_rest_slim/public/api/habitaciones",
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_TIMEOUT => 5,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "GET",
		  CURLOPT_HTTPHEADER => array(
			"cache-control: no-cache"
		  ),
		));		
		$response = curl_exec($curl);
		$err = curl_error($curl);
		echo $response;
		$array = json_decode($response, true);
		curl_close($curl);
		return $array;
	}
	public function createApi($nombre, $ciudad,
	$cant_hab, $direccion,
	$nit){
		
		
		$array = array("nombre_hote"=>$nombre, "ciudad_hote"=>$ciudad, "cant_hab_hote"=>$cant_hab, "direccion_hote"=>$direccion, 
		"nit_hote"=>$nit);
		$json = json_encode($array);
		
		$ch = curl_init();
		
		
		curl_setopt($ch, CURLOPT_URL,"http://localhost/api_rest_slim/public/api/hoteles/new");
	
		curl_setopt($ch, CURLOPT_POST, TRUE);
		
		curl_setopt($ch, CURLOPT_POSTFIELDS, $array);
		
		
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$remote_server_output = curl_exec ($ch);

		echo $remote_server_output;
		
		return $remote_server_output;
	}
	public function updateApi($id, $nombre, $ciudad, $cant_hab, $direccion, $nit){
		$array = array("nombre_hote"=>$nombre, "ciudad_hote"=>$ciudad, "cant_hab_hote"=>$cant_hab, "direccion_hote"=>$direccion, 
		"nit_hote"=>$nit);
		
		$data = json_encode($array); 
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, "http://localhost/api_rest_slim/public/api/hoteles/update/".$id); 
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "PUT");
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json','Content-Length: ' . strlen($data)));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
		$respond = curl_exec($ch); 
		curl_close($ch);
		print_r($respond); 
	}
	public function deleteApi($id){
								
		$url = "http://localhost/api_rest_slim/public/api/hoteles/delete/".$id;
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "DELETE");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($id));
		$response = curl_exec($ch);
		print_r($response);
		curl_close($ch);
	}
	
}