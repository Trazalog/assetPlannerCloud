
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
    <div class="col-sm-12 col-md-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Preventivo</h3>
          <?php
            if (strpos($permission,'Add') !== false) {
              echo '<button class="btn btn-block btn-success" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>';
            }
            ?>
        </div><!-- /.box-header -->

        <div class="box-body">
          <div role="tabpanel" class="tab-pane">
            <div class="form-group">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title fa fa-cogs">   Datos del Equipo </h3>
                </div>
     
                    <div class="panel-body">

                        <div class="col-xs-4">Equipos <strong style="color: #dd4b39">*</strong>

                           <select  id="equipo" name="componente" class="form-control" />
                            <!-- <input type="hidden" id="id_equipo" name="id_equipo">-->
                        </div>
                        <div class="col-xs-4">Fecha:
                            <input type="text" id="fecha_ingreso"  name="fecha_ingreso" class="form-control input-md" disabled />
                        </div>
                        <div class="col-xs-4">Marca:
                            <input type="text" id="marca"  name="marca" class="form-control input-md"  disabled />
                        </div>
                       
                        <div class="col-xs-4">Ubicación:
                            <input type="text" id="ubicacion"  name="ubicacion" class="form-control input-md" disabled/>
                        </div>

                        <div class="clearfix"></div>
                       
                     
                        <div class="col-xs-8">Descripción:
                        <textarea class="form-control" id="descripcion" name="descripcion" disabled></textarea> 
                        </div> 

                        <!-- <div class="row">
                          <div class="col-lg-12">
                          
                          <textarea class="form-control" id="descripcion" name="descripcion" disabled></textarea>
                          </div>
                        </div> -->
                      </div> <!-- panel -->
                    </div>
                  </div>
                </div>
                <div class="row" >
                  <div class="col-sm-12 col-md-12">
                    <div role="tabpanel" class="tab-pane">
                      <div class="form-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              <h4 class="panel-title fa fa-building-o">      Nueva Tarea </h4>
                            </div>

                            <div class="panel-body">  

                              <div class="col-xs-4">Tarea <strong style="color: #dd4b39">*</strong>:
                               <select id="tarea" name="tarea" class="form-control"   />
                               <!--<input type="hidden" id="id_tarea" name="id_tarea">-->
                              </div>
                              <input type="hidden" id="id" name="id">

                              <div class="col-xs-4">Componente <strong style="color: #dd4b39">*</strong>:
                                <select id="componente" name="equipo" class="form-control input-md"   />
                                <input type="hidden" id="id_componente" name="id_componente" />
                              </div>
                              <div class="col-xs-4">Fecha Base:
                                <input type="text" class="datepicker form-control ultimo" id="ultimo" name="vfecha" value="<?php echo date_format(date_create(date("Y-m-d H:i:s")), 'd-m-Y') ; ?>" size="27"/>                                
                              </div> 
                                                                              
                              <div class="col-xs-4">Periodo <strong style="color: #dd4b39">*</strong>:
                                
                                <select id="periodo"  name="periodo" class=" selectpicker form-control input-md">
                                      <!-- <option >Anual</option> -->
                                      <option >Diario</option>
                                      <!-- <option >Mensual</option> -->
                                      <!-- <option >Periodos</option> -->
                                      <!-- <option >Ciclos</option> -->
                                      <!-- <option >Semestral</option> -->
                                      
                              </select>
                              </div>

                              <div class="col-xs-4">Frecuencia <strong style="color: #dd4b39">*</strong>:
                                <input type="text"  id="cantidad" name="cantidad" class="form-control input-md" placeholder="Ingrese valor" />
                              </div>
                              
                              <br>
                              

                              <div class="col-xs-3">
                                
                              </div>                                      
                        </div>
                      </div>
                      <!--<br>-->
                      <!-- <fieldset><legend></legend></fieldset> -->
                                         
                      <!-- <div> -->

                      <!--tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#choras" aria-controls="home" role="tab" data-toggle="tab">Duración</a></li>
                        <li role="presentation"><a href="#herramin" aria-controls="profile" role="tab" data-toggle="tab">Herramientas</a></li>
                        <li role="presentation"><a href="#insum" aria-controls="messages" role="tab" data-toggle="tab">Insumos</a></li>
                        <li role="presentation"><a href="#adj" aria-controls="messages" role="tab" data-toggle="tab">Adjunto</a></li>                        
                      </ul>

                      <!-- Tab panes -->
                      <div class="tab-content">
                          
                          <div role="tabpanel" class="tab-pane active" id="choras">
                            <div class="row" >
                              <div class="col-sm-12 col-md-12">
                              <br>
                              <!--  <fieldset><legend></legend></fieldset> -->
                                <div class="col-xs-4">
                                  <input type="text"  id="cantidadhm"  name="cantidadhm" class="form-control input-md" placeholder="Cantidad de horas (hh:mm:ss)" />
                                </div>
                              </div>
                            </div>
                          </div><!--cierre de choras-->

                          <div role="tabpanel" class="tab-pane" id="herramin">
                            <br>
                              <!-- <fieldset><legend></legend></fieldset> -->
                             
                              <div class="col-xs-3">Codigo <strong style="color: #dd4b39">*</strong>:
                                  <select  id="herramienta"  name="herramienta" class="form-control input-md" />
                                  <input type="hidden" id="id_herramienta" name="id_herramienta">
                              </div>
                              
                              <div class="col-xs-3">Marca:
                                  <input type="text" id="marcaherram"  name="marcaherram" class="form-control input-md" />
                              </div>

                              <div class="col-xs-3">Descripcion:
                                  <input type="text" id="descripcionherram"  name="descripcionherram" class="form-control input-md" />
                              </div>

                              <div class="col-xs-3">Cantidad <strong style="color: #dd4b39">*</strong>:
                                  <input type="text" id="cantidadherram"  name="cantidadherram" class="form-control input-md" placeholder="Ingrese Cantidad" />
                              </div>

                              <br>
                              <div class="col-xs-3"><label></label> 
                                <br>
                                <button type="button" class="btn btn-success" id="agregarherr"><i class="fa fa-check">Agregar</i></button>
                              </div>

                              <div class="row">
                                <div class="col-xs-10 col-xs-offset-1">
                                  <table class="table table-bordered" id="tablaherramienta"> 
                                    <thead>
                                      <tr>                      
                                      <br>
                                      <th width="35px"></th>
                                      <th width="10%">Código</th>
                                      <th>Marca</th>
                                      <th>Descripcion</th>
                                      <th width="10%">Cantidad</th>
                                      </tr>
                                    </thead>
                                    <tbody></tbody>
                                  </table>  
                                </div>
                              </div>
                          </div> <!-- cierre div herram-->

                          <div role="tabpanel" class="tab-pane" id="insum">
                            <br>
                            <!-- <fieldset><legend></legend></fieldset> -->
                            <div class="col-xs-3">Codigo <strong style="color: #dd4b39">*</strong>:
                              <select  id="insumo"  name="insumo" class="form-control input-md" />
                              <input type="hidden" id="id_insumo" name="id_insumo">
                            </div>

                            <div class="col-xs-3">Descripcion:
                                <input type="text" id="descript"  name="descript" class="form-control input-md" />
                            </div>

                            <div class="col-xs-3">Cantidad <strong style="color: #dd4b39">*</strong>:
                                <input type="text" id="cant"  name="cant" class="form-control input-md" placeholder="Ingrese Cantidad"/>
                            </div>
                            <br>

                            <div class="col-xs-3"><label></label> 
                              <button type="button" class="btn btn-success" id="agregarins"><i class="fa fa-check">Agregar</i></button>
                            </div>
                            <br>

                            <div class="row">
                              <div class="col-xs-10 col-xs-offset-1">
                                <table class="table table-bordered" id="tablainsumo"> 
                                  <thead>
                                    <tr>                           
                                    <br>
                                    <th width="35px"></th>
                                    <th width="10%">Código</th>
                                    <th>Descripcion</th>
                                    <th width="10%">Cantidad</th>
                                   
                                    </tr>
                                  </thead>
                                  <tbody></tbody>
                                </table>  
                              </div>
                            </div>
                          </div><!--cierre div insum-->

                        <div role="tabpanel" class="tab-pane active" id="adj">
                          <br>                       
                          <input id="input-4" name="input4[]" type="file"  class="form-control input-md">
                        </div>
                        
                      </div>
                        
                      <!-- </div> --><!--Cierre de adjunto-->
                    

        
            <div class="modal-footer">
              <button type="button" class="btn btn-danger btn-sm delete" onclick="limpiar()">Cancelar</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" onclick="guardar()">Guardar</button>
            </div>


                </div>
            </div>        
          </div>
        </div>    
      </div>
    </div>
  </div>  <!-- row -->        
</section>

<script>


// $('#ultimo').daterangepicker({
//     "autoApply": true,
//     "singleDatePicker": true,
//     "timePicker": true,
//     // "startDate": "04/17/2018",
//     // "endDate": "04/23/2018",
//     "timePicker24Hour":true,
//     "locale": {
//             format: 'h:mm:ss'
//     }
// }, function(start, end, label) {
//   console.log('New date range selected: ' + start.format('YYYY-MM-DD hh:mm:ss') + ' to ' + end.format('YYYY-MM-DD hh:mm:ss') + ' (predefined range: ' + label + ')');
// });

$('#ultimo').datepicker( changeMonth: true,
    changeYear: true);

 

var codhermglo="";
var codinsumolo="";
var preglob="";

$('#listado').click( function cargarVista(){
    WaitingOpen();
    $('#content').empty();
    $("#content").load("<?php echo base_url(); ?>index.php/Preventivo/index/<?php echo $permission; ?>");
    WaitingClose();
});

// Trae equipos por empresa logueada
traer_equipo();
function traer_equipo(){
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
}

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
traer_componente();
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

$("#componente").change(function () {
    var id_componente= $(this).val();
    console.log(id_componente);
});

// Trae tareas por empresa logueada - Chequeado
traer_tarea();
function traer_tarea(){
    $.ajax({
      type: 'POST',
      data: { },
      url: 'index.php/Preventivo/gettarea', 
      success: function(data){
             
               var opcion  = "<option value='-1'>Seleccione...</option>" ; 
                $('#tarea').append(opcion); 
              for(var i=0; i < data.length ; i++) 
              {    
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
}

// Trae herramientas por empresa logueada - Chequeado
traer_herramienta();
function traer_herramienta(){
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
}

// Completa los datos de herramientas seleccionadas      
$("#herramienta").change(function(){
            
  var id_herramienta = $(this).val();
  console.log(id_herramienta);
  codhermglo=id_herramienta;
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

// Trae insumos para llenar el select - Chequeado
traer_insumo();
function traer_insumo(){
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
}   
// llenar descripcion insumos - chequeado
$("#insumo").change(function(){
   
    var id_insumo = $(this).val();
    codinsumolo=id_insumo;
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

// function guardar(){     
         
  //   var equipo = $('#equipo').val();
  //   var tarea = $('#tarea').val();
  //   var periodo = $('#periodo').val();
  //   var cantidad = $('#cantidad').val();
  //   var ultimo = $('#ultimo').val();
  //   var componente = $('#componente').val();
  //   var cantidadhm= $('#cantidadhm').val();

  //   var adjunto = $('#input-4').val();
  //   //var archivo = adjunto[0].file;

  //   alert(adjunto);
          
  //   var idsherramienta = new Array();     
  //   $("#tablaherramienta tbody tr").each(function (index){
        
  //       var id_her = $(this).attr('id');
  //       idsherramienta.push(id_her);  
  //   });         

  //   comp = {};
  //   $("#tablaherramienta tbody tr").each(function (index){
  //       var campo1, campo2, campo3, campo4;             

  //       var id_her = $(this).attr('id'); 
  //       console.log(id_her);              
          
  //       $(this).children("td").each(function (index2) 
  //       {
  //           if (index2) {                  
  //             comp[id_her]=$(this).text();                 
  //           }                
  //       });
  //      console.log(comp); 
  //   });        
        
  //   var idsinsumo = new Array();     
  //   $("#tablainsumo tbody tr").each(function (index){
  //       var id_in = $(this).attr('id');
  //       idsinsumo.push(id_in);
  //   }); 

  //    comp2 = {};
  //   $("#tablainsumo tbody tr").each(function (index){
  //       var id_in = $(this).attr('id'); 
  //       console.log(id_in);
          
          
  //       $(this).children("td").each(function (index2) 
  //       {
  //           if (index2) {
              
  //             comp2[id_in]=$(this).text();
             
  //           }
            
  //       });

  //      console.log(comp2);
  //   });
       
  //   console.log(idsinsumo);
  //   console.log(idsherramienta);
  //   console.log(comp);
  //   console.log(comp2);    
         
  //   console.log("Estoy guardando");
  //   if(equipo >0 && tarea >0 && componente >0 ){
  //   $.ajax({
  //         type: 'POST',
  //         data: {equipo:equipo, tarea:tarea, periodo:periodo, cantidad:cantidad, ultimo:ultimo, componente:componente, cantidadhm:cantidadhm, idsherramienta:idsherramienta,comp:comp, idsinsumo:idsinsumo, comp2:comp2, adjunto: adjunto},
  //         url: 'index.php/Preventivo/guardar_preventivo',  //index.php/
  //         success: function(data){
                 
  //                 console.log("exito");
                   
  //                cargarVista();               
  //               },
  //         error: function(result){
                
  //               console.log(result);              
  //             },
  //         dataType: 'json'
  //   });
  //   }
  //   else{
  //       var hayError = true;
  //       $('#error').fadeIn('slow');
  //       return;
  //   }

  //   if(hayError == false){
      
  //     $('#error').fadeOut('slow');
  //   }    
  // }


function guardar(){     
       
  var equipo = $('#equipo').val();
  var tarea = $('#tarea').val();
  var periodo = $('#periodo').val();
  var cantidad = $('#cantidad').val();
  var ultimo = $('#ultimo').val();
  var componente = $('#componente').val();
  var cantidadhm= $('#cantidadhm').val();

  var adjunto = $('#input-4').val();
  //var archivo = adjunto[0].file;

  //alert(adjunto);
        
  var idsherramienta = new Array();     
  $("#tablaherramienta tbody tr").each(function (index){
      
      var id_her = $(this).attr('id');
      idsherramienta.push(id_her);  
  });         

  comp = {};
  $("#tablaherramienta tbody tr").each(function (index){
      var campo1, campo2, campo3, campo4;             

      var id_her = $(this).attr('id'); 
      console.log(id_her);              
        
      $(this).children("td").each(function (index2) 
      {
          if (index2) {                  
            comp[id_her]=$(this).text();                 
          }                
      });
     console.log(comp); 
  });        
      
  var idsinsumo = new Array();     
  $("#tablainsumo tbody tr").each(function (index){
      var id_in = $(this).attr('id');
      idsinsumo.push(id_in);
  }); 

   comp2 = {};
  $("#tablainsumo tbody tr").each(function (index){
      var id_in = $(this).attr('id'); 
      console.log(id_in); 
      $(this).children("td").each(function (index2) 
      {
          if (index2) {
            
            comp2[id_in]=$(this).text();           
          }          
      });

     console.log(comp2);
  });         
  
  if(equipo >0 && tarea >0 && componente >0 ){
  $.ajax({
        type: 'POST',
        data: {equipo:equipo, tarea:tarea, periodo:periodo, cantidad:cantidad, ultimo:ultimo, componente:componente, cantidadhm:cantidadhm, idsherramienta:idsherramienta,comp:comp, idsinsumo:idsinsumo, comp2:comp2, adjunto: adjunto},
        url: 'index.php/Preventivo/guardar_preventivo',  //index.php/
        success: function(data){
               
                console.log("exito");
                 
               cargarVista();               
              },
        error: function(result){
              
              console.log(result);              
            },
        dataType: 'json'
  });
  }
  else{
      var hayError = true;
      $('#error').fadeIn('slow');
      return;
  }

  if(hayError == false){
    
    $('#error').fadeOut('slow');
  }    
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

    //var cantglob="";
$("#agregarherr").click(function (e) {
      
  var id_herramienta= $("#herramienta").val(codhermglo);
  var id_her=codhermglo;
  console.log("herramienta"+id_her);
  var $herramienta = $("select#herramienta option:selected").html(); 
  var marcaherram = $('#marcaherram').val();
  var descripcionherram = $('#descripcionherram').val();
  var cantidadherram = $('#cantidadherram').val();
  var hayError = false;
  var tr = "<tr id='"+id_her+"'>"+
                "<td ><i class='fa fa-ban elirow' style='color: #f39c12'; cursor: 'pointer'></i></td>"+
                "<td>"+$herramienta+"</td>"+
                "<td>"+marcaherram+"</td>"+
                "<td>"+descripcionherram+"</td>"+
                "<td>"+cantidadherram+"</td>"+
                
            "</tr>";
  console.log(tr);
  $('#tablaherramienta tbody').append(tr);

   /*}
   else {
       var hayError = true;
              $('#error').fadeIn('slow');
              return;
            }

          if(hayError == false){
            
            $('#error').fadeOut('slow');
          }*/

   
  $(document).on("click",".elirow",function(){
    var parent = $(this).closest('tr');
    $(parent).remove();
  });
  $('#herramienta').val('');
  $('#marcaherram').val(''); 
  $('#descripcionherram').val(''); 
  $('#cantidadherram').val(''); 
       
});

$("#agregarins").click(function (e) {

    var id_insumo= $('#insumo').val(codinsumolo);
    var id_in= codinsumolo;


    var $insumo = $("select#insumo option:selected").html();
    var descript = $('#descript').val();
    var cant = $('#cant').val();
      //var datos=Array();
      //datos=marca.split('%%');  //class='quitarEquipo'
    console.log("El id  del insumo");
    console.log(id_in);
       var hayError = false;

    var tr = "<tr id='"+id_in+"'>"+
                  "<td ><i class='fa fa-ban elirow' style='color: #f39c12'; cursor: 'pointer'></i></td>"+
                  "<td>"+$insumo+"</td>"+
                  "<td>"+descript+"</td>"+
                  "<td>"+cant+"</td>"+
                  
              "</tr>";

    if(id_in >0 && cant >0){

      $('#tablainsumo tbody').append(tr); 
    }
    else {
       var hayError = true;
              $('#error').fadeIn('slow');
              return;
    }

        if(hayError == false){
          
          $('#error').fadeOut('slow');
        }


    $(document).on("click",".elirow",function(){
      var parent = $(this).closest('tr');
      $(parent).remove();
    });

     
    $('#insumo').val('');
    $('#descript').val(''); 
    $('#cant').val(''); 
});



</script>
<script>     
  $("#fecha").datepicker({
    dateFormat: 'dd/mm/yy',
    firstDay: 1
  }).datepicker("setDate", new Date());
</script>
<!-- / Datepicker -->