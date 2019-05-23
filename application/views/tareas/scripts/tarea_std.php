<script>  //Script para Vista Standar  
    evaluarEstado();    
    function evaluarEstado(){       
			var asig = $('#asignado').val();       
			// si esta tomada la tarea		
			if(asig != ""){
					habilitar();
			}else{
					deshabilitar();
			}
    }      
   
    function habilitar(){       
			// habilito btn y textarea       
			$("#btonsoltr").show();
			$("#hecho").show();       
			$("#guardarComentario").show();        
			$("#comentario").show();
			//desahilito btn tomar      
			$("#btontomar").hide();
			$("#formulario").show();
			$('#acciones_view').show();
			// deshabilito columna y formulario
			$(".columheader").show();
			$(".getFormularioTarea").show();
			$("#pedidoInsumos").show();
			$('#decisionSolicitud').show();
			$('#verOrden').show();
			$('.panel_form').show();
			$('.oculto').show();
    }
    function deshabilitar(){
			$('.oculto').hide();
			// habilito btn tomar
			$("#btontomar").show();
			// habilito btn y textarea  
			$("#btonsoltr").hide();       
			$("#hecho").hide();       
			$("#guardarComentario").hide();
			$("#comentario").hide();
			$("#formulario").hide();
			$('#acciones_view').hide();
			// deshabilito columna y formulario
			$(".columheader").hide();
			$(".getFormularioTarea").hide();
			$("#pedidoInsumos").hide();	
			$('#decisionSolicitud').hide();	
			$('#verOrden').hide();	
    }    
    // Volver al atras
    $('#cerrar').click(function cargarVista() {
			WaitingOpen();
			$('#content').empty();
			$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
			WaitingClose();
    });

    /* Funciones BPM */
    //Ckeck Tarea realizada
    $('.btncolor').click(function(e) {
			//var id = <?php //echo $idorden?>; //tomo valor de id_orden
			console.log(id);
			var id_tarea = $(this).parents('tr').find('td').eq(1).html();
			console.log("Estoy finalizando una tarea");
			$.ajax({
					type: 'POST',
					data: {
							id_tarea: id_tarea,
					}, //Id tarea
					url: 'index.php/Taller/TareaRealizada', //index.php/
					success: function(data) {
							console.log(data);
							//alert("Se Finalizando la SUBTAREA");
							refresca(id);
					},
					error: function(result) {
							console.log(result);
							alert("NO se Finalizo la SUBTAREA");
							refresca(id);
					}
			});
    });
     
		function terminarTarea(){
			
			var formOt = [];
			var i = 0;
			$('.getFormularioTarea').each(function( index ) {
				var data = {};
				var idForm = $( this ).attr('data-formid');
				console.log('id form: '+idForm);
				var idOT = $('#ot').val();
				data.idForm = idForm;
				data.idOT = 22;

				formOt.push(data);
			});
			 


			 //if ( validarCamposObligatorios(formOt) ) {
					$.ajax({
						type: 'POST',
						data: {formIdOt:formOt},
						url: 'index.php/Tarea/terminarTareaStandarenBPM',
						success: function(data) {
											WaitingClose();
										// toma a tarea exitosamente
										// if(data['reponse_code'] == 204){
										// 		$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
										// }
						},
						error: function(data) {
								//alert("Noo");
								console.log(data);
						},
						dataType: 'json'
					}); 
    }  

		// cerrar tarea Analisis de urgencia
		function decidirUrgencia(){

			WaitingOpen();
			var opcion = $('input[name="opcion"]:checked').val();
			var idTarBonita = $('#idTarBonita').val();	

			$.ajax({
				type: 'POST',
				data: {opcion:opcion,
								idTarBonita:idTarBonita},
				url: 'index.php/Tarea/decidirUrgencia',
				success: function(data) {
					WaitingClose();
					console.table(data);
					//	WaitingClose();
					// toma a tarea exitosamente
					if(data['reponse_code'] == 204){
							$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
					}
				},
				error: function(data) {
					WaitingClose();
						//alert("Noo");
						console.log(data);
				},
				dataType: 'json'
			});
		}
		// cierra tarea Verificar Informe
		function verificarInforme(){
			WaitingOpen();
			var opcion = $('input[name="opcion"]:checked').val();
			var id_OT = $('#id_OT').val();
			var id_SS = $('#id_SS').val();
			var idTarBonita = $('#idTarBonita').val();	

			$.ajax({
				type: 'POST',
				data: {opcion:opcion,
								idTarBonita:idTarBonita,
								id_OT: id_OT,
								id_SS: id_SS},
				url: 'index.php/Tarea/verificarInforme',
				success: function(data) {
					WaitingClose();
					console.table(data);				
					
					if(data['status']){
							$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
					}else{
						alert(data['status']);
					}
				},
				error: function(data) {
					WaitingClose();
						//alert("Noo");
						console.log(data);
				},
				dataType: 'json'
			});
		}
		// cierra tarea Prestar Conformidad de 
		function prestarConformidad(){
			
			WaitingOpen('Cerrando Tarea');
			var opcion = $('input[name="opcion"]:checked').val();
			var idTarBonita = $('#idTarBonita').val();	
			var id_SS = $('#id_SS').val();
			var id_OT = $('#id_OT').val();

			$.ajax({
				type: 'POST',
				data: {opcion:opcion,
								idTarBonita:idTarBonita,
								id_SS: id_SS,
								id_OT: id_OT},
				url: 'index.php/Tarea/prestarConformidad',
				success: function(data) {
					WaitingClose();					
				
					if(data['status']){
							$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
					}else{
						alert(data['status']);
					}
					
				},
				error: function(data) {
					WaitingClose();
					alert(data['msj']);
					//	alert("Noo");
					$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
				},
				dataType: 'json'
			});
		}
		// cierra tarea Ejecutar OT
		function ejecutarOT(){
		
			WaitingOpen('Cerrando Tarea');
			var idTarBonita = $('#idTarBonita').val();		
			$.ajax({
				type: 'POST',
				data: {idTarBonita:idTarBonita},
				url: 'index.php/Tarea/ejecutarOT',
				success: function(data) {
								console.table(data);
								WaitingClose();
								// toma a tarea exitosamente
								sessionStorage.setItem("tareas_cerradas",idTarBonita + "-");
							
								if(data['status']){
										$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
								}else{
									alert(data['code']);
								}
				},
				error: function(data) {
					console.table(data);
					WaitingClose();
					alert(data['msj']);
					//	alert("Noo");
					$("#content").load("<?php echo base_url(); ?>index.php/Tarea/index/<?php echo $permission; ?>");
				},
				dataType: 'json'
			});
		}


    // Boton Hecho generico
    function estado() {
			var idTarBonita = $('#idTarBonita').val();
			$.ajax({
					type: 'POST',
					data: {
							'idTarBonita': idTarBonita,
					},
					url: 'index.php/Tarea/estadoCuenta',
					success: function(result) {
							console.log(result);
							//alert("SII");
					},
					error: function(result) {
							alert("Noo");
							console.log(result);
					},
					dataType: 'json'
			});
    }
    //Funcion COMENTARIOS
    function guardarComentario() {
			console.log("Guardar Comentarios...");
			var id= $('#case_id').val();
			var comentario=$('#comentario').val();
            var nombUsr = $('#usrName').val();
            var apellUsr = $('#usrLastName').val();;
			$.ajax({
					type:'POST',
					data:{'processInstanceId':id, 'content':comentario},
					url:'index.php/Tarea/GuardarComentario',
					success:function(result){
						console.log("Submit");
						var lista =  $('#listaComentarios');
						lista.prepend('<hr/><li><h4>'+nombUsr+' '+apellUsr +'<small style="float: right">Hace un momento</small></h4><p>'+comentario+'</p></li>');
						$('#comentario').val('');
					},
					error:function(result){
						console.log("Error");
					}
			});
		}
    // Toma tarea en BPM
    function tomarTarea() {
			var idTarBonita = $('#idTarBonita').val();
			//alert(idTarBonita);
			$.ajax({
					type: 'POST',
					data: {
							idTarBonita: idTarBonita
					},
					url: 'index.php/Tarea/tomarTarea',
					success: function(data) {
									console.log(data['reponse_code']);
									// toma a tarea exitosamente
									if(data['reponse_code'] == 200){
											habilitar();
									}

					},
					error: function(result) {
							console.log(result);
					},
					dataType: 'json'
			});
    }
    // Soltar tarea en BPM
    function soltarTarea() {
			var idTarBonita = $('#idTarBonita').val();
			//alert(idTarBonita);
			$.ajax({
					type: 'POST',
					data: {
							idTarBonita: idTarBonita
					},
					url: 'index.php/Tarea/soltarTarea',
					success: function(data) {
							console.log(data['reponse_code']);
									// toma a tarea exitosamente
									if(data['reponse_code'] == 200){
											deshabilitar();
									}
					},
					error: function(result) {
							console.log(result);
					},
					dataType: 'json'
			});
    }

</script>