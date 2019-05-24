<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Calendario extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Calendarios');
		$this->load->model('Bonitas');
		$this->load->model('Overviews');
		$this->load->model('Tareas');
		$this->load->model('Otrabajos');
	}	

	public function indexot($permission) // Ok
	{
		$data['permission'] = $permission."Correctivo-Preventivos-Backlog-Predictivo-";
		$this->load->view('calendar/calendar1', $data);
	}

	public function getcalendarot() // Ok
	{
		$data = $this->Calendarios->getot($this->input->post());
		if($data  == false)
		{
			echo json_encode(false);
		}
		else
		{
			echo json_encode($data);
		}
	}

	public function getTablas() // Ok
	{	
		$mes          = $this->input->post('mes');
		$year         = $this->input->post('year');
		$permission   = $this->input->post('permission');
		$data['mes']  = $mes;
		$data['year'] = $year;
		$preventivosHoras  = $this->Calendarios->getPreventivosHoras($mes, $year);
		$data['list1'] = $this->Calendarios->getpredlist($mes, $year); 	// listo
		$data['list2'] = $this->Calendarios->getbacklog($mes, $year);		// listo
		$data['list3'] = $this->Calendarios->getPreventivos($mes, $year);  // listo 
		$data['list4'] = $this->Calendarios->getsservicio($mes, $year);	// listo
		$data['permission'] = $permission;
	
		//para cada preventivo
		if($preventivosHoras) {
			$j = 0;
			for ($i=0; $i<sizeof($preventivosHoras) ; $i++) { 
				$estaAlertado = false;
				//sacar tipo alerta
				//proximo servicio = lectura base + frecuencia
				$proximoServicio = $preventivosHoras[$i]['lectura_base'] + $preventivosHoras[$i]['cantidad'];
				$proximaAlerta = $preventivosHoras[$i]['lectura_base'] + $preventivosHoras[$i]['critico1'];
				$lecturaAutonomo = $preventivosHoras[$i]['ultima_lectura'];
				//si alerta amarilla pone en array y agrega dato amarillo
				if($lecturaAutonomo >= $proximaAlerta) {
					$tipoAlerta = 'A';
					$estaAlertado = true;
				}
				//si alerta es roja pone en array y agrega rojo
				if($lecturaAutonomo >= $proximoServicio) {
					$tipoAlerta = 'R';
					$estaAlertado = true;
				}				
				//si esta alertado guardo
				if($estaAlertado) {
					$preventivosHorasVisible[$j] = $preventivosHoras[$i];
					//agrego tipo alerta, proximo servicio y ultima lectura
					$preventivosHorasVisible[$j]['tipoAlerta'] = $tipoAlerta;
					$preventivosHorasVisible[$j]['proximoServicio'] = $proximoServicio;
					$preventivosHorasVisible[$j]['ultimaLectura'] = $preventivosHoras[$i]['ultima_lectura'];
					$j++;
				} else {
					$preventivosHorasVisible = false;
				}
			}
		} else {
			$preventivosHorasVisible = false;
		}

		$data['list'] = $preventivosHorasVisible;

		$response['html'] = $this->load->view('calendar/tablas', $data);
		echo json_encode($response);
	}


	//
	public function getPrevPorId() //
	{
		$id   = $this->input->post('id');
		$data = $this->Calendarios->getPrevPorIds($id);
		echo json_encode($data);
	}


	// Guarda la OT simple o redirije para guardar varias
	public function guardar_agregar()
	{
		$data     = $this->input->post();
		$userdata = $this->session->userdata('user_data');
		$usrId    = $userdata[0]['usrId'];
		$empId    = $userdata[0]['id_empresa'];

	    if($_POST){
				
				if( isset($_POST['event_tipo']) ){
					$event_tipo       = $_POST['event_tipo'];//evento unico '1' evnto repetitivo '2'
				}
				$id_solicitud     = $_POST['id_sol'];// id predic - correct - back 
				$id_tarea         = $_POST['id_tarea'];
				$hora_progr       = $_POST['hora_progr'];
				$fecha_progr      = $_POST['fecha_progr'];
				$fecha_progr      = explode('-', $fecha_progr);
				$fec_programacion = $fecha_progr[2].'-'.$fecha_progr[1].'-'.$fecha_progr[0].' '.$hora_progr.':00';
				$fecha_inicio     = '0000-00-00 00:00:00';
				$descripcion      = $_POST['descripcion'];//descripcion del predictivo/correc/backlog/etc
				$tipo             = $_POST['tipo'];//numero de tipo segun tbl orden_trabajo
				$equipo           = $_POST['ide'];  
				if( isset($_POST['cant_meses']) ){
					$cant_meses = $_POST['cant_meses'];//cantidad de meses a programar las OT
				}	
				if( isset($_POST['lectura_programada']) ) {
					$lectura_programada = $_POST['lectura_programada'];
				} else {
					$lectura_programada = '0000-00-00 00:00:00';
				}
				if( isset($_POST['lectura_ejecutada']) ) {
					$lectura_ejecutada  = $_POST['lectura_ejecutada'];
				} else {
					$lectura_ejecutada = '0000-00-00 00:00:00';
				}

				// si no es correctivo busca duracion sino pone 60' por defecto	    	
				if ($tipo != '2'){
					$duracion = $this->getDurTarea($tipo,$id_solicitud); 					
				}else{
					$duracion =  60;	
				}

				$datos2 = array(
						'id_tarea'      => $id_tarea,// id de tarea a realizar(tabla tareas)
						'nro'           => 1,//por defecto( no se usa)
						'fecha'         => date('Y-m-d'),				
						'fecha_program' => $fec_programacion,
						'fecha_inicio'  => $fecha_inicio,
						'descripcion'   => $descripcion,
						'cliId'         => 1,//por defecto( no se usa)
						'estado'        =>'PL',	// estado Planificado
						'id_usuario'    => $usrId,
						'id_usuario_a'  => 1,
						'id_usuario_e'  => 1,
						'id_sucursal'   => 1,
						'id_solicitud'  => $id_solicitud,// id prev-correct-back-predict
						'tipo'          => $tipo,// tipo solicitud (prev-correct-back-predict )
						'id_equipo'     => $equipo,
						'duracion'      => $duracion,
						'id_tareapadre' => $id_solicitud,//solic que genera la 1º OT y las repetitivas
						'id_empresa'    => $empId,
						'lectura_programada' => $lectura_programada,
						'lectura_ejecutada'  => $lectura_ejecutada,
					);			
				// si el evento es unico lo guarda
				if ($event_tipo == '1'){					
					
					/// Interaccion con BPM ///
					$estado = 'PL';
					// $tipo == '2' -> S.Servicios
					if($tipo == '2'){
						// si es correctivo u S.Servicio
						$tipo = 'correctivo';				
						$infoTarea = $this->getInfoTareaporIdSolicitud($id_solicitud, $tipo);						
					
						$respCerrar = $this->cerrarTarea($infoTarea['taskId']);			
						if($respCerrar == 204 ){
							$resActualizar = $this->actualizarIdOTenBPM($infoTarea['caseId'], $idOTnueva);
						}
						// guardo el case_id en Otrabajo
						$this->Calendarios->setCaseidenOT($infoTarea['caseId'], $idOTnueva);									
						// cambio de estado a PL de SServicio
						$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);						
					}					
					// $tipo == '3' -> Preventivo			
					if($tipo == '3'){	
						$tipo = 'preventivo';
						$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);						
					}        
					// $tipo == '4' -> Backlog			
					if($tipo == '4'){	
						// actualizo estado del backlog
						$tipo = 'backlog';
						//Actualizar Tablas >> Backlog ||Solicitud
						$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);					

						$infoTarea = $this->getInfoTareaporIdSolicitud($id_solicitud, $tipo);	
						$respCerrar = $this->cerrarTarea($infoTarea['taskId']);							
						$resActualizar = $this->actualizarIdOTenBPM($infoTarea['caseId'], $idOTnueva);	
					}
					// $tipo == '5' -> Predictivo			
					if($tipo == '5'){	
						$tipo = 'predictivo';
						$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);						
					}					
					// genera la Otrabajo devuelve el id de OT
					$idOT = $this->Calendarios->guardar_agregar($datos2);					
					// guarda herramientas, insumos y rrhh de las tareas en OT
					$this->setHerramInsPorTarea($idOT,$tipo,$id_solicitud);
										
					// si es Preventivo o Predictivo lanza proceso nuevo
					if ( ($tipo == 'preventivo') || ($tipo == 'predictivo')) {
						
							$this->load->library('BPM');
							$contract = array(
								"idSolicitudServicio"	=>	0,
								"idOT"  => 	$idOT
							);						
							$result = $this->bpm->LanzarProceso($contract);	
							dump($result, 'respuesta lanzamiento proceso bpm: ');							
							// guarda case id generado el lanzar proceso				
							$respcaseOT = $this->Calendarios->setCaseidenOT($result['case_id'], $idOT);					
					}else{

							// guarda caseid ya generado anteriormente
							$respcaseOT = $this->Calendarios->setCaseidenOT($infoTarea['caseId'], $idOT);
					}					

	    	}else{	// evento repetitivo solo preventivo o predictivo 					
					// Sumo a la fecha de program la cant de meses p/ sacar fecha limite
					$fecha_limite = strtotime ( '+'.$cant_meses.' month' , strtotime ( $fec_programacion ) );
					$fecha_limite = date ( 'Y-m-d H:i:s' , $fecha_limite ); /// "2018-06-16 00:00:00"
					//busco la frecuencia de la tarea
					$diasFrecuencia = $this->getPeriodTarea($tipo,$id_solicitud);	

					// guarda las OT que corresp de acuerdo a la cant que entren en $cantidad_meses
					$this->setOTenSerie($fecha_limite, $fec_programacion, $diasFrecuencia, $datos2, $tipo,$id_solicitud);
					
					// si es preventivo ACTUALIZA NUEVAMENTE LA FECHA BASE_ OK!
					$estado = 'PL';
					if($tipo == '3'){	    		
						//pongo nueva fecha base en preventivos
						$this->Calendarios->actualizarFechaBasePreventivos($fecha_limite, $id_solicitud);
						// cambia estado al preventivo
						$tipo = 'preventivo';
						$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);	
					}
					// cambia estado al predictivo					
					if($tipo == '5'){	
						$tipo = 'predictivo';
						$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);						
					}	
				}	     	
					
				// guarda los Insumos y herramientas de Backlog, predict y prenvent segun tipo
				$this->setHerramInsPorTarea($idOT,$tipo,$id_solicitud);
		}
	  return true;
	    
  }

	function getDurTarea($tipo,$id_solicitud)
	{
		$duracion = 0;
		// devuelve la duracion de la taresa segun prde prev o backlog
		switch ($tipo) {
			case '1':					// O Trabajo
				$this->db->select('orden_trabajo.duracion');
		        $this->db->from('orden_trabajo');        
		        $this->db->where('orden_trabajo.id_orden', $id_solicitud);
		        $query = $this->db->get(); 
        		$duracion = $query->row('duracion');
				break;
			case '2':					// Sol de Servicio
				break;
			case '3':					// Preventivo
				$this->db->select('preventivo.prev_duracion');
		        $this->db->from('preventivo');        
		        $this->db->where('preventivo.prevId', $id_solicitud);
		        $query = $this->db->get(); 
        		$duracion = $query->row('prev_duracion');
				break;
			case '4':					// Backlog
				$this->db->select('tbl_back.back_duracion');
		        $this->db->from('tbl_back');        
		        $this->db->where('tbl_back.backId', $id_solicitud);
		        $query = $this->db->get(); 
        		$duracion = $query->row('back_duracion');
				break;
			case '5':					// Predictivo
				$this->db->select('predictivo.pred_duracion');
		        $this->db->from('predictivo');        
		        $this->db->where('predictivo.predId', $id_solicitud);
		        $query = $this->db->get(); 
        		$duracion = $query->row('pred_duracion');
				break;					
		}
		return $duracion;
	}	

	// Devuelve periodo de la tarea original (backlog, predictivo, preventivo)
	function getPeriodTarea($tipo,$id_solicitud)
	{
		// TODO: SELECCIONAR LOS TIPOS DE FRECUENCIA QUE SEAN TIEMPO  DE ACUERDO AL ID DE PERIODO Y TRADUCIR A DIAS PARA DEVOLVER
		$duracion = 0;
		// devuelve la duracion de la tarea segun prde prev o backlog	
		switch ($tipo) {							
			case '3':					// Preventivo
				$this->db->select('preventivo.cantidad, periodo.descripcion');
		        $this->db->from('preventivo');        
						$this->db->where('preventivo.prevId', $id_solicitud);
						$this->db->join('periodo', 'periodo.idperiodo = preventivo.perido');
		        $query = $this->db->get(); 
        		$info = $query->result_array();
				break;
			case '5':					// Predictivo
				$this->db->select('predictivo.cantidad, periodo.descripcion');
		        $this->db->from('predictivo');        
						$this->db->where('predictivo.predId', $id_solicitud);
						$this->db->join('periodo', 'periodo.idperiodo = predictivo.periodo');
		        // $query = $this->db->get(); 
						// $info = $query->row('cantidad');
						$query = $this->db->get(); 
        		$info = $query->result_array();
				break;				
		}

		$duracion = $this->getDiasDuracion($info);
		return $duracion;
	}

	function getDiasDuracion($info){		// bien no tocar!
		//dump($info, 'info en duracion nenenenne: ');
		$cantidad = $info[0]["cantidad"];
		$especie = $info[0]["descripcion"];	
		$dias = 0;
		switch ($especie) {		
			case 'mensual':
				$dias = 30 * $cantidad;
				break;
			case 'semestral':
				$dias = 180 * $cantidad;
				break;
			case 'anual':
				$dias = 365 * $cantidad;
				break;			
			default:
				$dias = $cantidad;
				break;
		}
		return $dias;
	}
	// guarda las OT que correspondan de acuerdo a la fecuencia y $cantidad_meses
	function setOTenSerie($fecha_limite, $fec_programacion, $diasFrecuencia, $datos2, $tipo, $id_solicitud){	

		//cargo libreria BPM
		$this->load->library('BPM');
		$estado = 'PL';
		
		while ($fecha_limite >= $fec_programacion ) {
						 
			$idOT = $this->Calendarios->guardar_agregar($datos2);		
			// setea estado 'PL' a las OT
			$this->Calendarios->cambiarEstado($id_solicitud, $estado, $tipo);	
			// lanza proceso 
			$contract = array(
				"idSolicitudServicio"	=>	0,
				"idOT"  => 	$idOT
			);						
			$result = $this->bpm->LanzarProceso($contract);								
			// guarda case id generado el lanzar proceso				
			$respcaseOT = $this->Calendarios->setCaseidenOT($result['case_id'], $idOT);
			// a la fecha de programacion le sumo la frecuencia en dias	   	
			$nuev_fecha = strtotime ( '+'.$diasFrecuencia.'day' , strtotime ( $fec_programacion ) ) ;
			$nuev_fecha = date ( 'Y-m-d H:i:s' , $nuev_fecha );
			// guardo la fecha nueva en el array para nuevva OT
			$datos2['fecha_program'] = $nuev_fecha;			
			// actualizo la fecha de programacion
			$fec_programacion = $nuev_fecha;			
		} 
		
		return;	
	}
	
	// Guarda herramientas e insumos que vienen de Backlog, Prevent y Predictivo
	function setHerramInsPorTarea($idOT, $tipo, $id_solicitud){
		
		switch ($tipo) {
			case '5':		// Predictivo
				$herra = $this->Calendarios->getPredictivoHerramientas($id_solicitud);
				$insumos = $this->Calendarios->getPredictivoInsumos($id_solicitud);
				$adjunto = $this->Calendarios->getAdjunto($id_solicitud,$tipo);	
				// Guarda el bacht de datos de herramientas
				if (!empty($herra)) {		
					$result['respHerram'] = $this->Calendarios->insertOTHerram($idOT, $herra);
				}
				// Guarda el bacht de datos de insumos
				if ( !empty($insumos) ){ 					
					$result['respInsumo'] = $this->Calendarios->insertOTInsum($idOT,$insumos);
				}
				// guarda el adjunto en la taba Orden trabajos (url)
				if ( !empty($adjunto) ) {
					$url = 'assets/filespredictivos/';
					$file = $url.$adjunto;
					$result['respAdjunto'] = $this->Calendarios->insertAdjunto($idOT,$file);
				}
				break;
			case '4':		//Backlog			
				$herra = $this->Calendarios->getBacklogHerramientas($id_solicitud);
				$insumos = $this->Calendarios->getBacklogInsumos($id_solicitud);
				$adjunto = $this->Calendarios->getAdjunto($id_solicitud,$tipo);				
				
				if (!empty($herra)) {		
					$result['respHerram'] = $this->Calendarios->insertOTHerram($idOT, $herra);
				}
				if ( !empty($insumos) ){ 					
					$result['respInsumo'] = $this->Calendarios->insertOTInsum($idOT,$insumos);
				}
				if ( !empty($adjunto) ) {
					$url = 'assets/filesbacklog/';
					$file = $url.$adjunto;
					$result['respAdjunto'] = $this->Calendarios->insertAdjunto($idOT,$file);
				}
				break;
			default:		// Preventivos (tipo 3)				
				$herra = $this->Calendarios->getPreventivoHerramientas($id_solicitud);
				$insumos = $this->Calendarios->getPreventivoInsumos($id_solicitud);
				$adjunto = $this->Calendarios->getAdjunto($id_solicitud,$tipo);	
				if (!empty($herra)) {		
					$result['respHerram'] = $this->Calendarios->insertOTHerram($idOT, $herra);
				}
				if ( !empty($insumos) ){ 					
					$result['respInsumo'] = $this->Calendarios->insertOTInsum($idOT,$insumos);
				}
				if ( !empty($adjunto) ) {
					$url = 'assets/filespreventivos/';
					$file = $url.$adjunto;
					$result['respAdjunto'] = $this->Calendarios->insertAdjunto($idOT,$file);
				}	
				break;
		}
	}	
	// devuelve operarios para asignar OT
	public function getOperario(){
		$response = $this->Calendarios->getOperarios();
		echo json_encode($response);
	}
	// carga modal ver OT y ejecutar OT
	function verEjecutarOT($idOt){
		
		$data['idOt'] = $idOt;
		$data['detaOT'] = $this->Calendarios->getDataOt($idOt);	
		$data['tareas'] = $this->Calendarios->gettareas();	
		$task = $this->ObtenerTaskIDxOT($idOt);
		if ($task) {
			$data['btnVisibilidad'] = true;
		} else {
			$data['btnVisibilidad'] = false;
		}
		$data['task'] = $task;		
	
		$this->load->view('calendar/view_OtEjecutar_modal', $data);
	}

	 //Obtener TaskID por OtID (Cuando hay procesos generados, sino los genera)
	 function ObtenerTaskIDxOT($id){ 	
				
		$case_id = $this->Otrabajos->getCaseIdOT($id);		
		
		$this->load->library('BPM');
		$origenOT = $this->Otrabajos->getDatosOrigenOT($id);	
		$tipo = $origenOT[0]['tipo'];	
		$id_solicitud = $origenOT[0]['id_solicitud'];// id de sol reparacion
	
		// si viene de correctivo
		if ($tipo == 2) {		
				$task_id = $this->bpm->ObtenerTaskidXNombre($case_id,'Asignar Recursos y Tareas Urgente');			
				return $task_id;
		} 
		// si viene de backlog
		if ($tipo == 4) {
				//busco origen del backlog(tiene sore_id o no para diferenciar el origen item menu o SServicio)			
				$idSolRep = $this->Otrabajos->getIdSolReparacion($id_solicitud);					
				
				if($idSolRep == NULL){	//viene de item menu 
					// lanzar proceso
					$contract = array(
												"idSolicitudServicio"	=>	0,
												"idOT"  => 	$id
											);
					$responce = $this->bpm->LanzarProceso($contract);
					// guardo el caseid en OTrabajo
					if($responce['status']){					
						$case_id = $responce['case_id'];
						$this->Otrabajos->setCaseidenOT($case_id, $id);					
					}	
					$task_id = $this->bpm->ObtenerTaskidXNombre($case_id,'Asignar Recursos y Tareas');
					return $task_id;		

				}else{	// backlog generado desde una SServicios					
					// con id solicitud (BACKLOG) busco el case desde solicitud de reparacion
					$case_id = $this->Otrabajos->getCaseIdenSServicios($id);					
					$task_id = $this->bpm->ObtenerTaskidXNombre($case_id,'Asignar Recursos y Tareas');	
					return $task_id;			
				}
		}
		
		// Para el resto de las Tareas (Predictivo, Preventivo)
		// lanzar proceso
		$contract = array(
			"idSolicitudServicio"	=>	0,
			"idOT"  => 	$id
		);
		$responce = $this->bpm->LanzarProceso($contract);
		// guardo el caseid en OTrabajo
		if($responce['status']){					
			$case_id = $responce['case_id'];
			$this->Otrabajos->setCaseidenOT($case_id, $id);					
		}
		// retorna task id 		
		$task_id = $this->bpm->ObtenerTaskidXNombre($case_id,'Asignar Recursos y Tareas');		
		return $task_id;
	}

	








  public function getperiodo()
	{
		$periodo = $this->Calendarios->getperiodo($this->input->post());
		if($periodo)
		{	
			$arre = array();
	        foreach ($periodo as $row ) 
	        {   
	           $arre[] = $row;
	        }
			echo json_encode($arre);
		}
		else echo "nada";
	}





	public function indexpred($permission){

		$this->load->view('calendar/calendar2');
	}

	

	public function getPreventivo(){
		$data = $this->Calendarios->getPreventivos($this->input->post());
		if($data  == false)
		{
			echo json_encode(false);
		}
		else
		{
			echo json_encode($data);
		}
	}



	public function getbacklog(){
		$data = $this->Calendarios->getbacklog($this->input->post());
		if($data  == false)
		{
			echo json_encode(false);
		}
		else
		{
			echo json_encode($data);
		}
	}

	public function getcalendarpred(){
		$data = $this->Calendarios->getpred($this->input->post());
		if($data  == false)
		{
			echo json_encode(false);
		}
		else
		{
			echo json_encode($data);
		}
	}


	///////////// Hugo

	// vista calendario






	public function getCorrectPorId(){

		$id = $_POST['id'];
		$data = $this->Calendarios->getCorrectPorIds($id);

		echo json_encode($data);
	}

	public function getBackPorId(){

		$id = $_POST['id'];
		$data = $this->Calendarios->getBackPorIds($id);
		//dump($data, 'backlog info: ');
		echo json_encode($data);
	}

	public function getPredictPorId(){
		
		$id = $_POST['id'];	
		$data = $this->Calendarios->getPredictPorIds($id);

		echo json_encode($data);
	}





   	// Cambio de dia nuevo de programacion
   	public function updateDiaProg(){

   		$id = $this->input->post('id');
   		$diaNuevo = $this->input->post('prog');
   		$response = $this->Calendarios->updateDiaProgramacion($id, $diaNuevo);

		echo json_encode($response);
   	}

   	// Devuelve duracion de tarea de acuerdo a un id de OT
   	function getDuracionOTrabajo($id){

   		$this->db->select('orden_trabajo.duracion');
   		$this->db->from('orden_trabajo');
   		$this->db->where('orden_trabajo.id_orden', $id);
   		$query = $this->db->get(); 
        $duracion = $query->row('duracion');
        return $duracion;
   	}

   	public function updateDuracion(){

   		$id = $this->input->post('id');
   		$duracion = $this->input->post('duracion');		// duracion adicional
   		
   		$nueva = $this->getDuracionOTrabajo($id, $duracion);
   		$nueva = $nueva + $duracion;		

   		$response = $this->Calendarios->updateDuraciones($id, $nueva);
		echo json_encode($response);
   	}



	/* INTEGRACION CON BPM */
		function getInfoTareaporIdSolicitud($id_solicitud, $tipo){	

			if ($tipo == 'correctivo') {
				//$id_solicitud	-> id sol de servicios
				$caseId = $this->Calendarios->getCaseIdporIdSolServicios($id_solicitud);
			}
			if ($tipo == 'backlog') {
				//$id_solicitud	-> id de backlog				
				$caseId = $this->Calendarios->getCaseIdporIdBacklog($id_solicitud);				
			}		
			// traer de bpm el id de tarea (id)			
			$parametros = $this->Bonitas->LoggerAdmin();
			$parametros["http"]["method"] = "GET";
			$param = stream_context_create($parametros);
			$actividades = $this->Overviews->ObtenerActividades($caseId,$param);			
			$infoTarea['taskId'] = json_decode($this->getIdTask($actividades,$tipo),true);
			$infoTarea['caseId'] = $caseId;			
			return $infoTarea;		
		}
		// devuelve task_id coincidente con la actividad 'Analisis de Solicitud de Servicio'
		function getIdTask($actividades,$tipo){

			if($tipo == 'correctivo'){
				$actividad = 'Planificar Solicitud';
			}
			if($tipo == 'backlog'){
				$actividad = 'Planificar Backlog';
			}	


			for ($i=0; $i < count($actividades); $i++) { 				
				if ($actividades[$i]["displayName"] == $actividad) {
					$id = $actividades[$i]["id"];
				}
			}
			return $id;
		}

		function cerrarTarea($idTask){			
			$parametros = $this->Bonitas->conexiones();				
			$parametros["http"]["method"] = "POST";			
			$param = stream_context_create($parametros);	
			$response = $this->Tareas->cerrarTarea($idTask,$param);
			return $response;
		}

		function actualizarIdOTenBPM($caseId, $idOTnueva){
			
			$idOT = (integer)$idOTnueva;
			$contract = array(
				"type" => "java.lang.Integer",
  			"value" => $idOT
			);		
			// trae la cabecera
			$parametros = $this->Bonitas->conexiones();
			// Cambio el metodo de la cabecera a "PUT"
			$parametros["http"]["method"] = "PUT";
			$parametros["http"]["content"] = json_encode($contract);
			// Variable tipo resource referencia a un recurso externo.
			$param = stream_context_create($parametros);
			$response = $this->Tareas->actualizarIdOTenBPM($caseId, $param);
		}
		

	/*	./ INTEGRACION CON BPM */
	}