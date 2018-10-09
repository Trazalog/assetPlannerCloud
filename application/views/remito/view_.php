<input type="hidden" id="permission" value="<?php echo $permission;?>">
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-danger alert-dismissable" id="error" style="display: none">
      <h4><i class="icon fa fa-ban"></i> Error!</h4>
      Revise que todos los campos obligatorios esten seleccionados
    </div>
  </div>
</div>
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-danger alert-dismissable"  id="error1" style="display: none">
      <h4><i class="icon fa fa-ban"></i> </h4>
      EL ARTICULO Y DEPOSITO SELECCIONADO NO ESTAN EN LOTE 
    </div>
  </div>
</div>
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-success" id="error2" style="display: none">
      <h4></h4>
      EL ARTICULO Y DEPOSITO SELECCIONADO ESTAN EN LOTE 
    </div>
  </div>
</div>

<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title"> Remito</h3> 
        </div><!-- /.box-header -->
           
        <div class="box-body">
          <div class="row" >
            <div class="col-xs-12">
              <div class="panel panel-default">

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4">
                      <label for="comprobante">Comprobante <strong style="color: #dd4b39">*</strong> :</label>
                      <input type="text" align=\"right\" placeholder="Ingrese Numero..." class="form-control" id="comprobante" name="comprobante" min="1" size="35">
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                      <label for="fecha">Fecha <strong style="color: #dd4b39">*</strong> :</label>
                      <input type="date" align=\"right\" class="form-control datepicker" id="fecha" size="35"  >
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                      <label for="proveedor">Proveedor <strong style="color: #dd4b39">*</strong> :</label>
                      <select  id="proveedor" name="proveedor" class="form-control"   />  
                    </div>
                  </div><br>
                        
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#insum" aria-controls="home" role="tab" data-toggle="tab" class="fa fa-file-text-o icotitulo"> Insumos</a></li>
                  </ul>

                  <!-- Tab panes -->
                  <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="insum">
                      <div class="row">
                        <br>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                          <label for="codigo">Codigo <strong style="color: #dd4b39">*</strong> :</label>
                          <select id="codigo" name="codigo" class="form-control" />  
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                          <label for="descripcion">Descripcion <strong style="color: #dd4b39">*</strong> :</label>
                          <input type="text" id="descripcion" name="descripcion" class="form-control" />
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                          <label for="cantidad">Cantidad <strong style="color: #dd4b39">*</strong> :</label>
                          <input type="text" id="cantidad" name="cantidad" placeholder="Ingrese Cantidad..." class="form-control">  
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                          <label for="deposito">Deposito <strong style="color: #dd4b39">*</strong> :</label>
                          <select  id="deposito" name="deposito" class="form-control" />  
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-3">
                          <label></label> 
                          <br>
                          <button type="button" class="btn btn-primary" id="agregar"><i class="fa fa-check">Agregar</i></button>
                        </div>
                      </div><br>

                      <div class="row">
                        <div class="col-xs-12">
                          <table class="table table-bordered" id="tablainsumo"> 
                            <thead>
                              <tr>                      
                                <th></th>
                                <th>Código</th>
                                <th>Descripcion</th>
                                <th>Cantidad</th>
                                <th>Deposito</th>
                              </tr>
                            </thead>
                            <tbody></tbody>
                          </table>  
                        </div>
                      </div>
                    </div><!-- /. tab-pane -->
                  </div><!-- /.tab-content -->
                </div> <!-- /.panel-body -->

              </div>
            </div>
          </div>
        </div><!-- /.box-body -->

        <div class="modal-footer">
          <button type="button" class="btn btn-default delete" onclick="limpiar()">Cancelar</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="guardar()" >Guardar</button>
        </div>  <!-- /.modal footer -->

      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->
<script>
var idslote = {}; 
var j = 0;

traer_codigo();
function traer_codigo(){
  $.ajax({
    type: 'POST',
    data: { },
    url: 'index.php/Remito/getcodigo', //index.php/
    success: function(data){
      var opcion  = "<option value='-1'>Seleccione...</option>";
      $('#codigo').append(opcion);
      for(var i=0; i < data.length ; i++) 
      {   
        var nombre = data[i]['artBarCode'];
        var opcion  = "<option value='"+data[i]['artId']+"'>" +nombre+ "</option>" ;
        $('#codigo').append(opcion); 
      }
    },
    error: function(result){
      console.log(result);
    },
      dataType: 'json'
  });
}

traer_deposito();
function traer_deposito(){
  $('#deposito').html(""); 
  $.ajax({
    type: 'POST',
    data: {},
    url: 'index.php/Remito/getdeposito',
    success: function(data){
      console.log("exito en deposito");
      console.log(data);
      var opcion  = "<option value='-1'>Seleccione...</option>" ; 
      $('#deposito').append(opcion); 
      for(var i=0; i < data.length ; i++) 
      {    
        var nombre = data[i]['depositodescrip'];
        var opcion  = "<option value='"+data[i]['depositoId']+"'>" +nombre+ "</option>" ; 
        $('#deposito').append(opcion); 
      }
    },
    error: function(result){
      console.log("entre por el error en deposito");
      alert("este articulo no esta en deposito");             
      console.log(result);
    },
    dataType: 'json'
  });
}

traer_proveedor();
function traer_proveedor(){
  $('#proveedor').html(""); 
  $.ajax({
    type: 'POST',
    data: {},
    url: 'index.php/Remito/getproveedor', //index.php/
    success: function(data){
      console.log("exito en proveedor");
      console.log(data);
      var opcion  = "<option value='-1'>Seleccione...</option>" ; 
      $('#proveedor').append(opcion); 
      for(var i=0; i < data.length ; i++) 
      {    
        var nombre = data[i]['provnombre'];
        var opcion  = "<option value='"+data[i]['provid']+"'>" +nombre+ "</option>" ; 
        $('#proveedor').append(opcion); 
      }
    },
    error: function(result){
      console.log("entre por el error en proveedor");
      console.log(result);
    },
    dataType: 'json'
  });
}

function traer_lote(id_her, id_deposito){
  console.log("ENTRE A LA FUNCION");
  console.log(id_her);
  console.log(id_deposito);
  $.ajax({
    type: 'POST',
    data: {id_her:id_her, id_deposito:id_deposito},
    url: 'index.php/Remito/getlote', //index.php/
    success: function(data){
      console.log("exito en lote");
      console.log(data);
      for(var i=0; i < data.length ; i++) 
      {   
        idslote[j] = data[i]['loteid'];
      }
    },
    error: function(result){
      console.log("entre por el error en lote ");
      console.log("No esta en el lote este articulo "); //no se q hacer aca  
      console.log(result);
    },
    dataType: 'json'
  });
}

function limpiar(){
  $("#comprobante").val("");
  $("#fecha").val("");
  $("#solicitante").val("");
  $("#destino").val("");
  $("#codigo").val("");
  $("#descripcion").val("");
  $("#cantidad").val("");
  $("#deposito").val("");
  $('#tablainsumo tbody tr').remove();
}

$('#codigo').change(function(){
  var artId = $(this).val();
  console.log("Id de articulo");
  console.log(artId);
  $.ajax({
    type: 'POST',
    data: {artId:artId }, 
    url: 'index.php/Remito/getdescrip', //index.php/
    success: function(data){
      console.log(data);
      // if (data[0]['depositoid']!="")
      // {
      var descrip = data[0]['artDescription']; 
      // var depo= data[0]['depositoid'];
      $('#descripcion').val(descrip);
      //$('#deposito').val(depo) }
      //else 
      /*{
        alert("El articulo seleccionado no esta deposito");
        var descrip = data[0]['artDescription'];
         $('#descripcion').val(descrip); 
      } */    
    },
    error: function(result){
      console.log(result);
    },
    dataType: 'json'
  });  
});


//agrega insumos a la tabla detainsumos
var i = 1;
$('#agregar').click(function (e) {
  var $codigo     = $("select#codigo option:selected").html(); 
  var id_her      = $('#codigo').val(); //id de articulo
  var descripcion = $('#descripcion').val();
  var cantidad    = $('#cantidad').val();
  var deposito    = $("select#deposito option:selected").html(); 
  var id_deposito = $('#deposito').val();
  var tr          = "<tr id='"+i+"'>"+
    "<td ><i class='fa fa-ban elirow' style='color: #f39c12'; cursor: 'pointer'></i></td>"+
    "<td>"+$codigo+"</td>"+
    "<td class='hidden' id='"+id_her+"'>"+id_her+"</td>"+
    "<td>"+descripcion+"</td>"+
    "<td>"+cantidad+"</td>"+
    "<td>"+deposito+"</td>"+
    "<td class='hidden' id='"+id_deposito+"'>"+id_deposito+"</td>"+
    "</tr>";
  i++;  
   
  console.log(tr);
  console.log("El id de deposito es :" + id_deposito);
  console.log("El codigo es:" + $codigo);
  console.log("El id de articulo:" + id_her);
  /* mando el codigo y el id _ deposito entonces traigo esa cantidad de lote*/
  var hayError = false;
  var Error1   = false;
  var Error2   = false;

  if(Error1== true){
    $('#error1').fadeOut('slow'); // lo levanto
  }
  if(Error2== true){
    $('#error2').fadeOut('slow'); // lo levanto
  }
  if($codigo !=0 && cantidad >0 && id_deposito>0  ){
    $.ajax({
      type: 'POST',
      data: { id_her:id_her, id_deposito:id_deposito}, 
      url: 'index.php/Remito/alerta', //se fija en la tabla lote , con el id de articulo y id d deposito
      success: function(data){
        //traigo la cantidad
        console.log("exito en la alerta");
        console.log(data);
        var datos= parseInt(data);
        console.log("cantidad");
        console.log(datos);
        if(Error2 == false){
          Error2 = true;
          alert("El articulo esta en el deposito seleccionado en lote ")
          //el deposito y el articulos estan en lote y devielve la cantidad
          $('#error1').fadeOut('slow');//levanta error1
          $('#error2').fadeIn('slow');
          traer_lote(id_her,id_deposito); 
          j++;
          $('#tablainsumo tbody').append(tr);
          $('#error2').fadeOut('slow'); //levanta errror2
        }
        else {
          if(Error1== true){
            Error1=false;
            $('#error1').fadeOut('slow');//levanta error1
            return;
          }
        }
      },
      error: function(result){
        console.log("este articulo en el deposito seleccionado no esta en lote ");
        alert("este articulo en el deposito seleccionado no esta en lote ");  
        console.log(result); // lo tengo que agregar 
        if(Error1== false){
          Error1=true;
          $('#error2').fadeOut('slow');
          $('#error1').fadeIn('slow');
          $('#tablainsumo tbody').append(tr);
        }
        $('#error1').fadeOut('slow');//levanta error1
        return; 
      },
      dataType: 'json'
    });

    $(document).on("click",".elirow",function(){
      var parent = $(this).closest('tr');
      $(parent).remove();
    });

    $('#codigo').val('');
    $('#descripcion').val(''); 
    $('#cantidad').val(''); 
    $('#deposito').val('');
  }
});

function guardar(){ 
  console.log("estoy guardando");
  var parametros = {
    'fecha': $('#fecha').val(),
    'provid': $('#proveedor').val(),
    'comprobante': $('#comprobante').val(),        
  };

  var idsinsumo = new Array();     
  $("#tablainsumo tbody tr").each(function (index){
    var i = $(this).attr('id');
    idsinsumo.push(i);            
  }); 

  comp = {};
  depo = {};
  art  = {};

  $("#tablainsumo tbody tr").each(function (index) 
  {
    var campo1, campo2, campo3, campo4, campo5, campo6, campo7;
    var i = $(this).attr('id'); 
    console.log(i);

    $(this).children("td").each(function (index2) 
    {
      switch (index2) 
      {
        case 0: campo1 = $(this).text();
          break;
        case 1: campo2 = $(this).text();
          break;
        case 2: campo3 = $(this).text();
          art[i] = campo3;
          break;
        case 3: campo4 = $(this).text();
          // comp[i]=campo4;
          break;
        case 4: campo5 = $(this).text(); 
          comp[i] = campo5;              
          break;
        case 5: campo6 = $(this).text();
          //depo[i]=campo6;                   
          break;
        case 6: campo7 = $(this).text();
          depo[i]=campo7; 
          break;
      }
    });

    console.log(comp);
    console.log(depo);
  });

  console.log("parametros de Orden");
  console.log(parametros);
  console.log("insumos id");
  console.log(idsinsumo);
  console.log("cantidad");
  console.log(comp);
  console.log("lote");
  console.log(idslote);
  console.log("depo");
  console.log(depo);
  console.log("id de articulos");
  console.log(art);
  var hayError = false;

  if(parametros !=0 && idsinsumo !=0){
    //&& depo !=0 && idsinsumo >0 && comp >0
    $.ajax({
      type: 'POST',
      data: {data:parametros, comp:comp, depo:depo, idsinsumo: idsinsumo, art:art},
      url: 'index.php/Remito/guardar',  //index.php/
      success: function(data){
        console.log("exito");
        console.log(data);
      },
      error: function(result){
        console.log("entro por el error");
        console.log(result);
      },
      // dataType: 'json'
    });
    limpiar();
  }
  else {
    var hayError = true;
    $('#error').fadeIn('slow');
    return;
  }

  if(hayError == false){
    $('#error').fadeOut('slow');
  }

}

</script>
