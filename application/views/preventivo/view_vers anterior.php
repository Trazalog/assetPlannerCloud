<input type="hidden" id="permission" value="<?php echo $permission;?>">
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-danger alert-dismissable" id="error" style="display: none">
          <h4><i class="icon fa fa-ban"></i> Error!</h4>
          Revise que todos los campos obligatorios esten seleccionados
      </div>
  </div>
</div>
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Preventivo</h3>
          <?php
            if (strpos($permission,'Add') !== false) {
              echo '<button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>';
            }
            ?>
        </div><!-- /.box-header -->

        <div class="box-body">
          <form id="formPreventivo" role="form" action="<?php base_url();?>Preventivo/guardar_preventivo" method="POST" >
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><div class="fa fa-cogs"></div> Datos del Equipo</h3>
              </div>                  

              <div class="panel-body">
                <div class="row">
                  <div class="col-xs-12 col-sm-4">Equipos <strong style="color: #dd4b39">*</strong>
                    <select  id="equipo" name="id_equipo" class="form-control" />
                    <!-- <input type="hidden" id="id_equipo" name="id_equipo">-->
                  </div>
                </div><!-- /.row -->
                <div class="row">
                  <div class="col-xs-12 col-sm-4">Fecha:
                    <input type="text" id="fecha_ingreso" name="" class="form-control input-md" disabled />
                  </div>
                  <div class="col-xs-12 col-sm-4">Marca:
                    <input type="text" id="marca" name="" class="form-control input-md"  disabled />
                  </div>
                  <div class="col-xs-12 col-sm-4">Ubicación:
                    <input type="text" id="ubicacion" name="" class="form-control input-md" disabled/>
                  </div>
                  <div class="col-xs-12">Descripción: 
                    <textarea class="form-control" id="descripcion" name="" disabled></textarea>
                  </div>
                </div> <!-- /.row -->
              </div> <!-- panel-body -->                    
            </div><!-- panel-default -->

            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"><div class="fa fa-building-o"></div> Programación</h4>
              </div>

              <div class="panel-body">
                <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-4">Tarea <strong style="color: #dd4b39">*</strong>:
                    <select id="tarea" name="id_tarea" class="form-control"   />
                    <!--<input type="hidden" id="id_tarea" name="id_tarea">-->
                  </div>
                  <input type="hidden" id="id" name="id">

                  <div class="col-xs-12 col-sm-6 col-md-4">Componente <strong style="color: #dd4b39">*</strong>:
                    <select id="componente" name="id_componente" class="form-control input-md"   />
                    <!--<input type="hidden" id="id_componente" name="id_componente" />-->
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-4">Fecha Base:
                    <input type="text" class="datepicker form-control ultimo" id="ultimo" name="vfecha" value="<?php echo date_format(date_create(date("Y-m-d H:i:s")), 'd-m-Y') ; ?>" size="27"/>
                  </div> 
                  <div class="col-xs-12 col-sm-6">Periodo <strong style="color: #dd4b39">*</strong>:
                    <select id="periodo"  name="periodo" class=" selectpicker form-control input-md">
                      <!--<option >Anual</option>-->
                      <option value="Diario">Diario</option>
                      <option value="Mensual">Mensual</option>
                      <!--<option >Periodos</option>-->
                      <option value="Kilometro">Kilometros</option>
                      <option value="Horas">Horas</option>
                      <option value="Ciclos">Ciclos</option>
                      <!--<option >Semestral</option>-->
                    </select>
                  </div>
                  <div class="col-xs-12 col-sm-6">Frecuencia <strong style="color: #dd4b39">*</strong>:
                    <input type="text"  id="cantidad" name="cantidad" class="form-control input-md" placeholder="Ingrese valor"/>
                  </div>
                  <div class="col-xs-12 col-sm-6">Lectura base <strong style="color: #dd4b39">*</strong>:
                    <input type="text"  id="lectura_base" name="lectura_base" class="form-control input-md" placeholder="Ingrese valor" disabled/>
                  </div>
                  <div class="col-xs-12 col-sm-6">Alerta <strong style="color: #dd4b39">*</strong>:
                    <input type="text"  id="alerta" name="alerta" class="form-control input-md" placeholder="Ingrese valor" disabled/>
                  </div>
                </div> <!-- /.row -->
                <div class="row">
                  <div class="col-xs-12 col-sm-6 col-md-4">Duración <strong style="color: #dd4b39">*</strong>:
                    <input type="text" class="form-control" id="duracion" name="duracion"/>
                  </div> 
                  <div class="col-xs-12 col-sm-6 col-md-4">U. de tiempo <strong style="color: #dd4b39">*</strong>
                    <select  id="unidad" name="unidad" class="form-control" />
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-4">Cant. Operarios <strong style="color: #dd4b39">*</strong>:
                    <input type="text" class="form-control" id="cantOper" name="cantOper"/>
                  </div>          
                  <div class="col-xs-12">
                    <button type="button" class="btn btn-primary" onclick="calcularHsHombre()"style="margin-top: 19px;">Calcular</button>
                  </div>                              
                  <div class="col-xs-12" id="dato" name="" style="margin-top: 19px;"></div>
                  <input type="hidden" name="hshombre" id="hshombre">
                </div>
              </div>
            </div>

          <div class="modal-footer">
            <button type="submit" class="btn btn-primary">Guardar</button>
          </div> 

          <div class="row">
            <div class="col-xs-12">
              <div class="nav-tabs-custom">
                <!--tabs -->
                <ul class="nav nav-tabs" role="tablist">                
                  <li role="presentation" class="active"><a href="#herramin" aria-controls="profile" role="tab" data-toggle="tab">Herramientas</a></li>
                  <li role="presentation"><a href="#insum" aria-controls="messages" role="tab" data-toggle="tab">Insumos</a></li>
                  <li role="presentation"><a href="#adj" aria-controls="messages" role="tab" data-toggle="tab">Adjunto</a></li>                        
                </ul>
                <!-- /tabs -->

                <!-- Tab panes -->
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane active" id="herramin">
                    <div class="row">
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="herramienta">Codigo <strong style="color: #dd4b39">*</strong>:</label>
                          <select  id="herramienta"  name="herramienta" class="form-control input-md" />
                          <input type="hidden" id="id_herramienta" name="">
                      </div>                          
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="marcaherram">Marca:</label>
                          <input type="text" id="marcaherram"  name="" class="form-control input-md" />
                      </div>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="descripcionherram">Descripcion:</label>
                          <input type="text" id="descripcionherram"  name="" class="form-control input-md" />
                      </div>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="cantidadherram">Cantidad <strong style="color: #dd4b39">*</strong>:</label>
                          <input type="text" id="cantidadherram"  name="" class="form-control input-md" placeholder="Ingrese Cantidad" />
                      </div>
                      <br>
                      <div class="col-xs-12"><label></label> 
                        <br>
                        <button type="button" class="btn btn-primary" id="agregarherr"><i class="fa fa-check">Agregar</i></button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-12">
                        <br>
                        <table class="table table-bordered" id="tablaherramienta"> 
                          <thead>
                            <tr>                      
                              <th>Acciones</th>
                              <th>Código</th>
                              <th>Marca</th>
                              <th>Descripcion</th>
                              <th>Cantidad</th>
                            </tr>
                          </thead>
                          <tbody></tbody>
                        </table>  
                      </div>
                    </div>
                  </div> <!-- tabpanel herramientas-->

                  <div role="tabpanel" class="tab-pane" id="insum">
                    <div class="row">
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="insumo">Codigo <strong style="color: #dd4b39">*</strong>:</label>
                        <select  id="insumo"  name="" class="form-control input-md" />
                        <input type="hidden" id="id_insumo" name="">
                      </div>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="">Descripcion:</label>
                        <input type="text" id="descript"  name="" class="form-control input-md" />
                      </div>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="cant">Cantidad <strong style="color: #dd4b39">*</strong>:</label>
                        <input type="text" id="cant"  name="" class="form-control input-md" placeholder="Ingrese Cantidad"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-12">
                        <br>
                        <button type="button" class="btn btn-primary" id="agregarins"><i class="fa fa-check">Agregar</i></button>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-12">
                        <table class="table table-bordered" id="tablainsumo"> 
                          <thead>
                            <tr>                           
                              <th>Acciones</th>
                              <th>Código</th>
                              <th>Descripcion</th>
                              <th>Cantidad</th>
                            </tr>
                          </thead>
                          <tbody></tbody>
                        </table>  
                      </div>
                    </div>
                  </div><!--cierre div insum-->

                  <div role="tabpanel" class="tab-pane" id="adj">
                    <div class="row">
                      <div class="col-xs-12">
                        <input id="inputPDF" name="inputPDF" type="file" class="form-control input-md">
                        <style type="text/css">
                          #inputPDF {
                            padding-bottom: 40px;
                          }
                        </style>
                      </div> 
                    </div>
                  </div> 
                </div>  <!-- tab-content -->
            </form>
          </div> <!-- form-group --> 
        </div> <!-- box-body --> 
      </div> <!-- box -->    
    </div> <!-- col-sm-12 col-md-12 -->  
  </div>  <!-- row -->        
</section>

<script>

// Guarda Preventivo  
$("#formPreventivo").submit(function (event){   
  event.preventDefault();  

  var equipo   = $('#equipo').val();
  var tarea    = $('#tarea').val();
  var compon   = $('#componente').val();
  var periodo  = $('#periodo').val();
  var freq     = $('#cantidad').val();
  var lectbase = $('#lectura_base').val();
  var alerta   = $('#alerta').val();
  var duracion = $('#duracion').val();
  var unidad   = $('#unidad').val();
  var oper     = $('#cantOper').val();
  var hh       = $('#hshombre').val();

  if((periodo=='horas') || (periodo=='ciclos')){
    if ((lectbase < 0)||(alerta < 0)) {
      $('#error').fadeIn('slow');
    }
  }
  if ((equipo < 0)||(tarea < 0)||(periodo < 0)||(unidad < 0)||(duracion == "")||(freq == "")||(oper == "")||(hh == "")) {
      $('#error').fadeIn('slow');
  }
  else{
    $('#error').fadeOut('slow');
    var formData = new FormData($("#formPreventivo")[0]);
    $.ajax({
      url:$("form").attr("action"),
      type:$("form").attr("method"),
      data:formData,
      cache:false,
      contentType:false,
      processData:false,
      success:function(respuesta){
        //alert(respuesta);
        console.log('resp prenevt: ');
        console.log(respuesta.resPrenvent);
        if (respuesta) {
          alert("Los datos han sido guardados correctamente");
          //$("#msg-error").hide();
          //$("#form-create-empleado")[0].reset();
        }
        else if(respuesta==="error"){
          alert("Los datos no se han podido guardar");
        }
        else{
          //$("#msg-error").show();
          //$(".list-errors").html(respuesta);
        }
      }
    });
  }
});

// Trae unidades de tiempo - Chequeado
$.ajax({
  type: 'POST',
  data: { },
  url: 'index.php/Predictivo/getUnidTiempo', 
  success: function(data){
         
            var opcion  = "<option value='-1'>Seleccione...</option>" ; 
            $('#unidad').append(opcion); 
            for(var i=0; i < data.length ; i++){    
                  var nombre = data[i]['unidaddescrip'];
                  var opcion  = "<option value='"+data[i]['id_unidad']+"'>" +nombre+ "</option>" ; 
                $('#unidad').append(opcion);                                
            }
        },
  error: function(result){
        
          console.log(result);
      },
      dataType: 'json'
});

// Trae equipos por empresa logueada - Chequeado
$.ajax({
  type: 'POST',
  data: { },
  url: 'index.php/Preventivo/getequipo', //index.php/
  success: function(data){
         
              var opcion  = "<option value='-1'>Seleccione...</option>" ; 
              $('#equipo').append(opcion); 
              for(var i=0; i < data.length ; i++){   

                var nombre = data[i]['codigo'];
                var opcion  = "<option value='"+data[i]['id_equipo']+"'>" +nombre+ "</option>" ;
                $('#equipo').append(opcion);                                  
              }
            },
  error: function(result){            
          console.log(result);
        },
  dataType: 'json'
});

// Calcula horas hombre por tiempo y unidades -chequeado
function calcularHsHombre(){
  
  var entrada = $('#duracion').val();
  var unidad = $('#unidad').val();
  var operarios = $('#cantOper').val();
  var hs = 0;
  var hsHombre = 0;
  //minutos
  if (unidad == 1) {
    hs = entrada / 60;
  }
  // horas
  if (unidad == 2) {
    hs = entrada;
  }
  // dias
  if (unidad == 3) {
    hs = entrada * 24;
  }

  hsHombre = hs * operarios;
  var mens=$("<h4 name='hshombre' class='before'>HH: <span class='hh'>" + hsHombre + "</span></h4>");
 // var mens=$("<input class='before' value='"+ hsHombre +"' style='border:none;'/>");
  $('#dato').html(mens);
  $('#hshombre').val(hsHombre);
  //alert("horas hombre: " + hsHombre);  
}

// Volver al listado
$('#listado').click( function cargarVista(){
    WaitingOpen();
    $('#content').empty();
    $("#content").load("<?php echo base_url(); ?>index.php/Preventivo/index/<?php echo $permission; ?>");
    WaitingClose();
});

// Trae datos de equipo por ID para nuevo preventivo - Chequeado
$('#equipo').change(function(){
  var id_equipo = $(this).val();
  $.ajax({
      type: 'POST',
      data: { id_equipo: id_equipo},
      url: 'index.php/Preventivo/getEquipoNuevoPrevent', 
      success: function(data){
                      
              console.log(data);                     
              var fecha_ingreso = data[0]['fecha_ingreso']; 
              var marca = data[0]['marca']; 
              var ubicacion = data[0]['ubicacion']; 
              var criterio1 = data[0]['criterio1']; 
              var descripcion = data[0]['descripcion']; 
              $('#fecha_ingreso').val(fecha_ingreso);       
              $('#marca').val(marca);   
              $('#descripcion').val(descripcion);       
              $('#ubicacion').val(ubicacion);  
            },
        
      error: function(result){
                    
              console.log(result);
            },
      dataType: 'json'
  });
  traer_componente(id_equipo); 
});

// Trae componente segun equipo seleccionado - Chequeado
function traer_componente(id_equipo){
    $('#componente').html("");
    $.ajax({
        type: 'POST',
        data: {id_equipo: id_equipo },
        url: 'index.php/Preventivo/getcomponente', //index.php/
        async:false,
        success: function(data){
               
               $('#componente option').remove();
                var opcion  = "<option value='-1'>Seleccione...</option>" ; 
                $('#componente').append(opcion); 
                for(var i=0; i < data.length ; i++){    

                      var nombre = data[i]['descripcion'];
                      var opcion  = "<option value='"+data[i]['id_componente']+"'>" +nombre+ "</option>" ; 
                      $('#componente').append(opcion);                                  
                }                         
              },
        error: function(result){              
              console.log(result);
            },
        dataType: 'json'
    });
}

$('#periodo').change(function(){
  if( $('#periodo').val()=='horas' || $('#periodo').val()=='ciclos' ) {
    $('#alerta').prop('disabled', false);
    $('#lectura_base').prop('disabled', false);
  } else {
    $('#alerta').prop('disabled', 'disabled');
    $('#lectura_base').prop('disabled', 'disabled');
  }
});

// Trae tareas por empresa logueada - Chequeado
$.ajax({
    type: 'POST',
    data: { },
    url: 'index.php/Preventivo/gettarea', 
    success: function(data){
           
              var opcion  = "<option value='-1'>Seleccione...</option>" ; 
              $('#tarea').append(opcion); 
              for(var i=0; i < data.length ; i++){    
                var nombre = data[i]['descripcion'];
                var opcion  = "<option value='"+data[i]['id_tarea']+"'>" +nombre+ "</option>" ; 
                $('#tarea').append(opcion);                                    
              }
          },
    error: function(result){
          
          console.log(result);
        },
    dataType: 'json'
});




////// HERRAMIENTAS
// Trae herramientas por empresa logueada - Chequeado
$.ajax({
      type: 'POST',
      data: { },
      url: 'index.php/Preventivo/getherramienta', 
      success: function(data){
             
              var opcion  = "<option value='-1'>Seleccione...</option>" ; 
              $('#herramienta').append(opcion); 
              for(var i=0; i < data.length ; i++) 
              {    
                    var nombre = data[i]['herrcodigo'];
                    var opcion  = "<option value='"+data[i]['herrId']+"'>" +nombre+ "</option>" ; 

                  $('#herramienta').append(opcion);                                    
              }
            },
      error: function(result){
            
            console.log(result);
          },
      dataType: 'json'
});

// Completa los datos de herramientas seleccionadas      
$("#herramienta").change(function(){
            
  var id_herramienta = $(this).val();
  $('#id_herramienta').val(id_herramienta); // guarda id en input para usar despues en tabla
  
  console.log('herram seleccionada: ' + id_herramienta);
  
  $.ajax({
      type: 'POST',
      data: { id_herramienta: id_herramienta},
      url: 'index.php/Preventivo/getdatos', 
      success: function(data){
              
              console.log(data);
              var marca = data[0]['herrmarca'];   
              $('#marcaherram').val(marca); 
              var des = data[0]['herrdescrip'];
              $('#descripcionherram').val(des); 
            },
        
      error: function(result){
            
            console.log(result);
          },
      dataType: 'json'
      });
});

// Agrega herramientas a la tabla - Chequeado
var nrofila = 0;  // hace cada fila unica
$("#agregarherr").click(function (e) {
      
  //var id_herramienta= $("#herramienta").val(codhermglo);
  var id_her=$('#id_herramienta').val();
  console.log("herramienta en tabla: "+id_her);
  var herramienta = $("select#herramienta option:selected").html(); 
  console.log("id_herr: " + id_her + " herramienta: "+herramienta); 
  var marcaherram = $('#marcaherram').val();
  var descripcionherram = $('#descripcionherram').val();
  var cantidadherram = $('#cantidadherram').val();
  
  nrofila = nrofila + 1;
  var tr = "<tr id='"+id_her+"' data-nrofila='"+nrofila+"'>"+
                "<td ><i class='fa fa-ban elirow' style='color: #f39c12'; cursor: 'pointer'></i></td>"+
                "<td class='herr'>"+herramienta+"</td>"+
                "<td class='marca'>"+marcaherram+"</td>"+
                "<td class='descrip'>"+descripcionherram+"</td>"+
                "<td class='cant'>"+cantidadherram+"</td>"+ 
                // guardo id de herram y cantidades
                "<input type='hidden' name='id_her["+nrofila+"]' value='"+id_her+"'>" +                
                "<input type='hidden' name='cant_herr["+nrofila+"]' value='"+cantidadherram+"'>" +
            "</tr>";
  
  
   if(id_her > 0 && cantidadherram > 0){

      $('#tablaherramienta tbody').append(tr);
    }
    else{
           return;
    } 

  $(document).on("click",".elirow",function(){
    var parent = $(this).closest('tr');
    $(parent).remove();
  });
  $('#herramienta').val('');
  $('#marcaherram').val(''); 
  $('#descripcionherram').val(''); 
  $('#cantidadherram').val('');        
});



////// INSUMOS
// Trae insumos para llenar el select - Chequeado
$.ajax({
      type: 'POST',
      data: { },
      url: 'index.php/Preventivo/getinsumo',
      success: function(data){
             
                var opcion  = "<option value='-1'>Seleccione...</option>" ; 
                $('#insumo').append(opcion); 
                for(var i=0; i < data.length ; i++){    
                      var nombre = data[i]['artBarCode'];
                      var opcion  = "<option value='"+data[i]['artId']+"'>" +nombre+ "</option>" ; 
                    $('#insumo').append(opcion);                                    
                }
              },
      error: function(result){
            
            console.log(result);
          },
          dataType: 'json'
});
  
// llenar descripcion insumos - Chequeado
$("#insumo").change(function(){
  var id_insumo = $(this).val();
  $('#id_insumo').val(id_insumo); // guarda id en input para usar despues en tabla 

  console.log(id_insumo);
  $.ajax({
      type: 'POST',
      data: { id_insumo: id_insumo},
      url: 'index.php/Preventivo/traerinsumo', 
      success: function(data){
                console.log(data);
                var d = data[0]['artDescription']; 
                $('#descript').val(d);  
              },          
      error: function(result){              
              console.log(result);
            },
      dataType: 'json'
  });
});

// Agrega insumos a la tabla 
var nrofilaIns = 0; 
$("#agregarins").click(function (e) {
    var id_insumo = $('#id_insumo').val(); 
    var $insumo = $("select#insumo option:selected").html();
    var descript = $('#descript').val();
    var cant = $('#cant').val();     
    console.log("El id  del insumo");
    console.log(id_insumo);
    var hayError = false;
    var tr = "<tr id='"+id_insumo+"'>"+
                  "<td ><i class='fa fa-ban elirow' style='color: #f39c12'; cursor: 'pointer'></i></td>"+
                  "<td>"+$insumo+"</td>"+
                  "<td>"+descript+"</td>"+
                  "<td>"+cant+"</td>"+

                  // guardo id de insumos y cantidades
                  "<input type='hidden' name='id_insumo["+nrofilaIns+"]' value='"+id_insumo+"'>" +
                  "<input type='hidden' name='cant_insumo["+nrofilaIns+"]' value='"+cant+"'>" +
              "</tr>";
    nrofilaIns = nrofilaIns + 1;          
    if(id_insumo > 0 && cant > 0){
      $('#tablainsumo tbody').append(tr); 
    }
    else {
           return;
    }    

    $(document).on("click",".elirow",function(){
      var parent = $(this).closest('tr');
      $(parent).remove();
    });
     
    $('#insumo').val('');
    $('#descript').val(''); 
    $('#cant').val(''); 
});



$(".datepicker").datepicker({
    changeMonth: true,
    changeYear: true
});

function cargarVista(){
    WaitingOpen();
    $('#content').empty();
    $("#content").load("<?php echo base_url(); ?>index.php/Preventivo/index/<?php echo $permission; ?>");
    WaitingClose();
}

function limpiar(){
      $("#equipo").val("");
      $("#tarea").val("");
      $("#componente").val("");
      $("#periodo").val("");
      $("#cantidad").val("");
      $("#ultimo").val("");
      $("#critico1").val("");
      $("#cantidadhm").val("");
}

$("#fecha").datepicker({
    dateFormat: 'dd/mm/yy',
    firstDay: 1
}).datepicker("setDate", new Date());

</script>