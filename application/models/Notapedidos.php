<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Notapedidos extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  
    function notaPedidos_List()
    {
        $userdata = $this->session->userdata('user_data');
        $empId    = $userdata[0]['id_empresa'];
        $this->db->select('tbl_notapedido.id_notaPedido,
            tbl_notapedido.fecha,
            tbl_notapedido.id_ordTrabajo,
            orden_trabajo.descripcion');
        $this->db->from('tbl_notapedido');
        $this->db->join('orden_trabajo','tbl_notapedido.id_ordTrabajo = orden_trabajo.id_orden');
        $this->db->where('tbl_notapedido.id_empresa', $empId);
    
        $query = $this->db->get();

        if ($query->num_rows()!=0)
        {
            return $query->result_array();          
        }
        else
        { 
            return array();
        }
    }
    

    //
    function getNotasxOT($id)
    {
			$userdata = $this->session->userdata('user_data');
			$empId    = $userdata[0]['id_empresa'];
			$this->db->select('tbl_notapedido.id_notaPedido,
													tbl_notapedido.fecha,
													tbl_notapedido.id_ordTrabajo,
													solicitud_reparacion.solicitante,
													orden_trabajo.descripcion');
			$this->db->from('tbl_notapedido');
			$this->db->join('orden_trabajo','tbl_notapedido.id_ordTrabajo = orden_trabajo.id_orden');
			$this->db->join('solicitud_reparacion', 'orden_trabajo.id_solicitud = solicitud_reparacion.id_solicitud');
			$this->db->where('tbl_notapedido.id_empresa', $empId);
			$this->db->where('orden_trabajo.id_orden', $id);

			$query = $this->db->get();

			if ($query->num_rows()!=0)
			{
					return $query->result_array();          
			}
			else
			{ 
					return array();
			}
    }

    // Trae lista de articulos por id de nota de pedido 
    function getNotaPedidoIds($data)
    {  
			$id = $data['id'];
			//dump($id, 'id nota en modelo: ');
      
      $this->db->select('tbl_notapedido.id_notaPedido,
												tbl_notapedido.fecha,
												tbl_notapedido.id_ordTrabajo,
												orden_trabajo.descripcion,
												tbl_detanotapedido.cantidad,
												tbl_detanotapedido.provid,
												tbl_detanotapedido.fechaEntrega,
												tbl_detanotapedido.fechaEntregado,
												tbl_detanotapedido.remito,
												tbl_detanotapedido.estado,
												articles.artDescription'
											);
      $this->db->from('tbl_notapedido');
      $this->db->join('orden_trabajo', 'tbl_notapedido.id_ordTrabajo = orden_trabajo.id_orden');
      $this->db->join('tbl_detanotapedido', 'tbl_detanotapedido.id_notaPedido = tbl_notapedido.id_notaPedido');
      $this->db->join('articles', 'tbl_detanotapedido.artId = articles.artId');
      $this->db->where('tbl_notapedido.id_notaPedido', $id);
      $query = $this->db->get();
      
      if ($query->num_rows()!=0){      
        return $query->result_array();       
      }
      else{ 
        return array();
      }
    } 

    function getOrdenesCursos()
    {
        $userdata = $this->session->userdata('user_data');
        $empId    = $userdata[0]['id_empresa'];

        $this->db->select('orden_trabajo.id_orden,orden_trabajo.descripcion');
        $this->db->from('orden_trabajo');
        $this->db->where('orden_trabajo.estado', 'C');
        $this->db->where('orden_trabajo.id_empresa', $empId);
        $query = $this->db->get();
        if ($query->num_rows() != 0)
        {    
            return $query->result_array();             
        }        
    }

    function getDetalles($id_orden)
    {    
        $id = $id_orden['id_orden'];
        $this->db->select('orden_trabajo.descripcion');
        $this->db->from('orden_trabajo');
        $this->db->where('orden_trabajo.id_orden', $id);
        $query = $this->db->get();
        if ($query->num_rows() != 0)
        {    
            return $query->result_array();             
        }   
    }     
            
    function getArticulos()
    {
        $userdata = $this->session->userdata('user_data');
        $empId    = $userdata[0]['id_empresa'];

        $this->db->select('articles.artId, articles.artBarCode, articles.artDescription');
        $this->db->from('articles');  
        $this->db->where('articles.id_empresa', $empId);  
        $this->db->order_by('articles.artBarCode');
        $query = $this->db->get();

        //$query = $this->db->query("SELECT articles.artId, articles.artBarCode,articles.artDescription FROM articles");
        $i     = 0;
        foreach ($query->result() as $row)
        {
            $insumos[$i]['value']       = $row->artId;
            $insumos[$i]['label']       = $row->artBarCode;
            $insumos[$i]['descripcion'] = $row->artDescription;
            $i++;
        }
        return $insumos;
    }  

    function getProveedores()
    {
        $userdata = $this->session->userdata('user_data');
        $empId    = $userdata[0]['id_empresa'];

        $this->db->select('abmproveedores.provid, abmproveedores.provnombre');
        $this->db->from('abmproveedores');  
        $this->db->where('abmproveedores.id_empresa', $empId);  
        $this->db->order_by('abmproveedores.provnombre');
        $query = $this->db->get();
        if ($query->num_rows() != 0){
            
            return $query->result_array();             
        }   
    }  

    function setNotaPedidos($data)
    {
        $userdata = $this->session->userdata('user_data');
        $empId    = $userdata[0]['id_empresa'];

        $orden = $data['orden_Id'][0]; 
        $notaP = array(
            'fecha'         => date('Y-m-d H:i:s'),
            'id_ordTrabajo' => $orden,
            'id_empresa'    => $empId
            );
        $this->db->insert('tbl_notapedido', $notaP);
        $idNota = $this->db->insert_id();
       
        for($i=0; $i<count($data['insum_Id']); $i++){

            $insumo  = $data['insum_Id'][$i];
            $cant    = $data['cant_insumos'][$i];
            $proveed = $data['proveedid'][$i];
            $date    = $data['fechaentrega'][$i]; 
            $newDate = date("Y-m-d", strtotime($date));

            $nota = array(
                    'id_notaPedido'  => $idNota,
                    'artId'          => $insumo,
                    'cantidad'       => $cant,
                    'provid'         => $proveed,
                    'fechaEntrega'   => $newDate,
                    'fechaEntregado' => $newDate,
                    'remito'         => 1,
                    'estado'         => 'P' // Estado Pedido
                    );
            $this->db->insert('tbl_detanotapedido', $nota);
        }

      if ($this->db->trans_status() === FALSE)
      {
           return false;  
      }
      else{
           return true;
      }    

    } // fin setNotaPedidos   
	 
		

		function setCabeceraNota($cabecera){

			$this->db->insert('tbl_notapedido', $cabecera);
			$idInsert = $this->db->insert_id();
			return $idInsert;
		}
		// guarda detalle nota pedido (desde tareas de bpm)
		function setDetaNota($deta){
			$response = $this->db->insert_batch('tbl_detanotapedido',$deta);
			return $response;
		}	
  
    //
    function getOTporId($id)
    {
        $this->db->select('id_orden, nro, descripcion');
        $this->db->from('orden_trabajo');
        $this->db->where('id_orden', $id);
        $query = $this->db->get();
        if ($query->num_rows()!=0)
        {
            return $query->result_array();
        }
        else
        {
            return false;
        }
    }

     // devuelve plantilla por Id de cliente
     function getPlantillaPorCliente($idcliente){
        //FIXME: DESHARDCODEAR ESTE CLIENTE!!!!
        $idcliente = 21;
        $this->db->select('asp_detaplantillainsumos.artId,
                                            articles.artDescription,
                                            asp_plantillainsumos.plant_id');
        $this->db->from('asp_detaplantillainsumos'); 
        $this->db->join('asp_plantillainsumos', 'asp_detaplantillainsumos.plant_id = asp_plantillainsumos.plant_id');
        $this->db->join('articles', 'articles.artId = asp_detaplantillainsumos.artId');
        $this->db->join('admcustomers', 'asp_plantillainsumos.plant_id = admcustomers.plant_id');
        $this->db->where('admcustomers.plant_id','(SELECT admcustomers.plant_id WHERE admcustomers.cliId = '.$idcliente.')', false);       
        $query = $this->db->get();
        if ($query->num_rows() != 0){					
            return $query->result_array();             
        }else {
            return array();
        }
		}


}
