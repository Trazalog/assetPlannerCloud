<input type="hidden" id="permission" value="<?php echo $permission;?>">
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">KPIs</h3>
          <!--<div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
          </div>-->
        </div><!-- /.box-header -->

        <div class="box-body">
          <div class="row">
              <div class="col-md-6 col-xs-12"> <!-- class="daterange"-->
                  <?php //$disponibilidad = calcularDisponibilidad('all');
                  /*
                  echo "<pre>";
                  //echo json_encode($disponibilidad["porcentajeHorasOperativas"]);
                  print_r ($disponibilidad);
                  echo "</pre>";
                  */
                  ?>
                <h3><center>Disponibilidad [%]</center></h3>
                
                <div data-disponibilidad="">
                  <div class="row">
                    <div class="col-md-6 col-xs-12">
                      <div class="radio">
                        <label>
                          <input type="radio" name="radioDisponibilidad" id="radioDisponibilidadAll" value="all" checked>
                          Todos los equipos.
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="radioDisponibilidad" id="radioDisponibilidadEquipo" value="">
                          <input type="text" class="form-control" id="checkboxEquipoID" name="checkboxEquipoID" placeholder="Ingrese código de equipo" value="">
                        </label>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="form-inline">
                  <!--<label>Rango de fechas: </label>
                  <input type="text" id="daterange-disponibilidad" class="form-control">
                  <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>-->
                </div>
                <div id="graph-container">
                  
                </div>
              </div>

              <div class="col-md-3 col-xs-12 daterange">
                <h3><center>Mantenimiento [%]</center></h3>
                <div class="form-inline">
                  <!--<label>Rango de fechas: </label>
                  <input type="text" id="daterange-mantenimiento" class="form-control">
                  <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>-->
                </div>
                <div class="graph-container-1" style="width:100%; max-width: 250px; margin:0 auto 20px;">
                      <canvas id="graficoMantenimiento"></canvas>
                  </div>
              </div>

              <div class="col-md-3 col-xs-12 daterange">
                <h3><center>Equipos Operativos [%]</center></h3>
                <div class="graph-container-2" style="width:100%; max-width: 250px; margin:0 auto 20px;">
                      <canvas id="graficoEquiposOperativos"></canvas>
                  </div>
              </div>


          </div><!-- /.row -->
        </div>

      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->


<?php
  $cantTipoOT = cantTipoOrdenTrabajo();

  // $cantTipoOT[0]['CantidadTipoOT'] = correctivo;
  // $cantTipoOT[2]['CantidadTipoOT'] = preventivo;
  // $cantTipoOT[3]['CantidadTipoOT'] = predictivo;
  // $cantTipoOT[4]['CantidadTipoOT'] = backlog;
  /* En DB tabla orden_trabajo, en el campi tipo */
  // 1 = correctivo
  // 2 = preventivo
  // 3 = predictivo
  // 4 = backlog

  $equipoOperativo = sacarEquiposOperativos();
?>

<style type="text/css">
  .daterange { position: relative; }
  .daterange i {
    position: relative; right: 24px; cursor: pointer;
  }
</style>

<script>
/*var locale = {
  "format": "DD/MM/YYYY",
  "separator": " - ",
  "applyLabel": "Ok",
  "cancelLabel": "Cancelar",
  "fromLabel": "Desde",
  "toLabel": "Hasta",
  "customRangeLabel": "Custom",
  "daysOfWeek": [
    "Do",
    "Lu",
    "Ma",
    "Mi",
    "Ju",
    "Vi",
    "Sa"
  ],
  "monthNames": [
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agusto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre"
  ],
  "firstDay": 1
};
var ranges = {
  "Hoy": [
    "17-11-2017T14:57:40.858Z",
    "17-11-2017T14:57:40.858Z"
  ],
  "Ayer": [
    "16-11-2017T14:57:40.858Z",
    "16-11-2017T14:57:40.858Z"
  ],
  "Últimos 7 días": [
    "11-11-2017T14:57:40.858Z",
    "17-11-2017T14:57:40.858Z"
  ],
  "Últimos 30 días": [
    "19-10-2017T14:57:40.858Z",
    "17-11-2017T14:57:40.858Z"
  ],
  "Este mes": [
    "01-11-2017T03:00:00.000Z",
    "01-12-2017T02:59:59.999Z"
  ],
  "Mes anterior": [
    "01-10-2017T03:00:00.000Z",
    "01-11-2017T02:59:59.999Z"
  ]
};
var dateToday = Date.now();
var date7days = moment().subtract(7,'d').format('DD/MM/YYYY');

$('#daterange-disponibilidad').daterangepicker({
  "locale": locale,
    "ranges": ranges,
    "startDate": date7days,
    "endDate": dateToday
}, function(start, end, label) {
  console.log("New date range selected: ' + start.format('DD/MM/YYYY') + ' to ' + end.format('DD/MM/YYYY') + ' (predefined range: ' + label + ')");
  alert("rango de fechas: "+ start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
});

var dateToday = Date.now();
var date7days = moment().subtract(7,'d').format('DD/MM/YYYY');

$('#daterange-mantenimiento').daterangepicker({
  "locale": locale,
    "ranges": ranges,
    "startDate": date7days,
    "endDate": dateToday
}, function(start, end, label) {
  console.log("New date range selected: ' + start.format('DD/MM/YYYY') + ' to ' + end.format('DD/MM/YYYY') + ' (predefined range: ' + label + ')");
  alert("rango de fechas: "+ start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
});
*/



/* obtengo datos de disponibilidad */
var idEquipo = 'all';
getDisponibilidad(idEquipo);
function getDisponibilidad(idEquipo) {
  WaitingOpen("Obteniendo datos de disponibilidad...");
  $.ajax({
    data: { idEquipo: idEquipo },
    dataType: 'json',
    type: 'POST',
    url: 'index.php/Otrabajo/getDisponibilidad', 
  })
  .done( (data) => {
    graficarParametro(data);
  })
  .fail( () => alert("Error al traer datos de Disponibilidad.") )
  .always( () => WaitingClose() );
}

/* grafico KPI de Disponibilidad*/
function graficarParametro(disponibilidad) {
  //elimino grafico anterior si existe
  $('#miGrafico').remove();
  $('#graph-container').append('<canvas id="miGrafico" style="width: 100%; margin:0 auto"></canvas>');

  var ctx = document.getElementById("miGrafico");
  //var ctx = canvas.getContext("2d");

  var horizonalLinePlugin = {
    afterDraw: function(chartInstance) {
      var yScale = chartInstance.scales["y-axis-0"];
      var canvas = chartInstance.chart;
      var ctx = canvas.ctx;
      var index;
      var line;
      var style;

      if (chartInstance.options.horizontalLine) {
        for (index = 0; index < chartInstance.options.horizontalLine.length; index++) {
          line = chartInstance.options.horizontalLine[index];

          if (!line.style) {
            style = "#86888e";
          } else {
            style = line.style;
          }

          if (line.y) {
            yValue = yScale.getPixelForValue(line.y);
          } else {
            yValue = 0;
          }

          ctx.lineWidth = 2;

          if (yValue) {
            ctx.beginPath();
            ctx.moveTo(0, yValue);
            ctx.lineTo(canvas.width, yValue);
            ctx.strokeStyle = style;
            ctx.stroke();
          }

          if (line.text) {
            ctx.fillStyle = style;
            ctx.fillText(line.text, 0, yValue + ctx.lineWidth);
          }
        }
        return;
      };
    }
  };
  Chart.pluginService.register(horizonalLinePlugin);
  var porcentajeHorasOperativas = [80].concat( disponibilidad["porcentajeHorasOperativas"] );
  var tiempo = ["meta"].concat( disponibilidad["tiempo"] );

  var data = {
    labels: tiempo,
    //['Meta', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    datasets: [{
      backgroundColor: ["#009900"],
      data: porcentajeHorasOperativas,
      //data:[80, 66, 70, 71, 75, 81, 77, 78, 77, 82, 81, 78, 80],
      fill: false,
      label: ['Meta'],
      lineTension: 0.2,
      pointRadius: 2,
      pointHitRadius: 10,
      spanGaps: false,
    }],
  };

  var miGrafico = new Chart(ctx, {
    type: 'bar',
    data: data,
    options: {
      "horizontalLine": [{
        "y": 80,
        "style": "#009900",
        "text": "meta"
      }],
      responsive: true,
      maintainAspectRatio: true,
      scales: {
        yAxes: [{
          ticks: {
            //max: 100,
            //beginAtZero:true,
          }
        }]
      },
      tooltips: {
        callbacks: {
          label: function(tooltipItem, data) {
            //get the concerned dataset
            var dataset = data.datasets[tooltipItem.datasetIndex];
            //get the current items value
            var currentValue = dataset.data[tooltipItem.index];
            return currentValue + "%";
          }
        }
      }
    }
  });
}

$('#checkboxEquipoID').focusin( function() {
  //console.log('Equipos');
  $(this).prev().prop("checked", true);
});
$('#radioDisponibilidadAll').focusin( function() {
  //console.log('Todos');
  getDisponibilidad( 'all' );
});

// autocomplete para codigo
var dataEquipos = function () {
  var tmp = null;
  $.ajax({
    'async': false,
    'type': "POST",
    'global': false,
    'dataType': 'json',
    'url': "index.php/Otrabajo/getEquipoDisponibilidad",
    'success': function (data) {
      tmp = data;
    }
  });
  return tmp;
}();
$("#checkboxEquipoID").autocomplete({
  source: dataEquipos,
  delay: 500,
  minLength: 1,
  focus: function(event, ui) {
    event.preventDefault();
    $(this).val(ui.item.label);
  },
  select: function(event, ui) {
    event.preventDefault();
    $(this).val(ui.item.label); //value

    getDisponibilidad( ui.item.value );
  },
});



graficarMantenimiento();
/* grafico KPI Mantenimiento usando charjs 2.5 */
// function graficarMantenimiento() {
  //   WaitingOpen("Obteniendo datos de Mantenimiento...");
  //     var areaChartCanvas = document.getElementById("graficoMantenimiento");

  //     var myChart = new Chart(areaChartCanvas, {
  //         type: 'doughnut',
  //         data: {
  //             // programado: [preventivo, predictivo y backlog], correctivo
  //             labels: ["Correctivo", "Preventivo", "Predictivo", "backlog"],
  //             datasets: [{
  //                 data: [ <?php //echo $cantTipoOT[0]['CantidadTipoOT']?>,
  //                         <?php //echo $cantTipoOT[1]['CantidadTipoOT']?>,
  //                         <?php //echo $cantTipoOT[2]['CantidadTipoOT']?>,
  //                         <?php //echo $cantTipoOT[3]['CantidadTipoOT']?>],
  //                 backgroundColor: [
  //                 "#dd1100",
  //                 "#006612",
  //                 "#009933",
  //                 "#00CC00"
  //                 ],
  //                 hoverBackgroundColor: [
  //                 "#ee2211",
  //                 "#117723",
  //                 "#11aa44",
  //                 "#11dd11"
  //                 ]
  //             }]
  //         },
  //         options: {
  //             cutoutPercentage: 40,
  //             legend: {
  //               position: 'bottom',
  //             },
  //             animation: {
  //               animateScale: true,
  //               animateRotate: true
  //             },
  //             tooltips: {
  //               callbacks: {
  //                 label: function(tooltipItem, data) {
  //                   //get the concerned dataset
  //                   var dataset = data.datasets[tooltipItem.datasetIndex];
  //                   //calculate the total of this data set
  //                   var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
  //                     return previousValue + currentValue;
  //                   });
  //                   //get the current items value
  //                   var currentValue = dataset.data[tooltipItem.index];
  //                   //calculate the precentage based on the total and current item, also this does a rough rounding to give a whole number
  //                   var precentage = Math.floor(((currentValue/total) * 100)+0.5);

  //                   return currentValue + " (" + precentage + "%)";
  //                 }
  //               }
  //             }
  //         }
  //     });
  //   WaitingClose();
  // }

function graficarMantenimiento() {
  WaitingOpen("Obteniendo datos de Mantenimiento...");
    var areaChartCanvas = document.getElementById("graficoMantenimiento");

    var myChart = new Chart(areaChartCanvas, {
        type: 'doughnut',
        data: {
            // programado: [preventivo, predictivo y backlog], correctivo
            labels: ["OTrabajo", "Correctivo", "Preventivo", "Backlog", "Predictivo"],
            datasets: [{
                data: [ <?php echo $cantTipoOT[0]['CantidadTipoOT']?>,
                        <?php echo $cantTipoOT[1]['CantidadTipoOT']?>,
                        <?php echo $cantTipoOT[2]['CantidadTipoOT']?>,
                        <?php echo $cantTipoOT[3]['CantidadTipoOT']?>,
                        <?php echo $cantTipoOT[3]['CantidadTipoOT']?>],
                backgroundColor: [
                "#fad61d",
                "#dd1100",
                "#006612",
                "#009933",
                "#00CC00"
                ],
                hoverBackgroundColor: [
                "#f3fa1d",  
                "#ee2211",
                "#117723",
                "#11aa44",
                "#11dd11"
                ]
            }]
        },
        options: {
            cutoutPercentage: 40,
            legend: {
              position: 'bottom',
            },
            animation: {
              animateScale: true,
              animateRotate: true
            },
            tooltips: {
              callbacks: {
                label: function(tooltipItem, data) {
                  //get the concerned dataset
                  var dataset = data.datasets[tooltipItem.datasetIndex];
                  //calculate the total of this data set
                  var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
                    return previousValue + currentValue;
                  });
                  //get the current items value
                  var currentValue = dataset.data[tooltipItem.index];
                  //calculate the precentage based on the total and current item, also this does a rough rounding to give a whole number
                  var precentage = Math.floor(((currentValue/total) * 100)+0.5);

                  return currentValue + " (" + precentage + "%)";
                }
              }
            }
        }
    });
  WaitingClose();
}



graficarEquiposOperativos();
/* grafico KPI Equipos Operativos */
function graficarEquiposOperativos() {
  WaitingOpen("Obteniendo datos de Equipos Operativos...");
    var areaChartCanvas = document.getElementById("graficoEquiposOperativos");

    var myChart = new Chart(areaChartCanvas, {
        type: 'doughnut',
        data: {
            labels: ["Activos", "En Reparación"],
            datasets: [{
                data: [ <?php echo $kpi['eqActivos'] ?>,
                        <?php echo $kpi['eqReparacion'] ?>],
                
                backgroundColor: [
                "#008d4c",
                "#FF9600"
                ],
                hoverBackgroundColor: [
                "#00a65a",
                "#ffa711"
                ]
            }]
        },
        options: {
            cutoutPercentage: 40,
            legend: {
              position: 'bottom',
            },
            animation: {
              animateScale: true,
              animateRotate: true
            },
            tooltips: {
              callbacks: {
                label: function(tooltipItem, data) {
                  //get the concerned dataset
                  var dataset = data.datasets[tooltipItem.datasetIndex];
                  //calculate the total of this data set
                  var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
                    return previousValue + currentValue;
                  });
                  //get the current items value
                  var currentValue = dataset.data[tooltipItem.index];
                  //calculate the precentage based on the total and current item, also this does a rough rounding to give a whole number
                  var precentage = Math.floor(((currentValue/total) * 100)+0.5);

                  return currentValue + " (" + precentage + "%)";
                }
              }
            }
        }
    });
  WaitingClose();
}
</script>
