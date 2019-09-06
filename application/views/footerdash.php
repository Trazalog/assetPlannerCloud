        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.0.0
            </div>
            <strong>Copyright © 2015-<?php echo date('Y'); ?> <a href="http://trazalog.com">trazalog</a>.</strong> Todos
            los derechos reservados.
        </footer>

        <script>
            if ('serviceWorker' in navigator) {
                window.addEventListener('load', () => {
                    navigator.serviceWorker.register('sw1.js').then(function() {
                        console.log('Service Worker Registrado');
                        if (!navigator.serviceWorker.controller) {
                            location.reload();

                        }
                    })
                });
            }
        </script>

        </body>

        <!--Arma Tablas -->
        <script src="<?php echo base_url('lib/tabla.js'); ?>"></script>
        <script>
var link = '';

$('.menu .link').on('click', function() {
    link = $(this).data('link');
    linkTo();
});

function linkTo(uri = '') {
    if (link == '' && uri == '') return;
    $('#content').empty();
    $('#content').load('<?php base_url()?>' + (uri == '' ? link : uri));
    link = (uri == '' ? link : uri);

}

function collapse(e) {
    e = $(e).closest('.box');

    if (e.hasClass('collapsed-box')) {
        $(e).removeClass('collapsed-box');
    } else {
        $(e).addClass('collapsed-box');
    }

}
//Esto dispara un evento para que se cargue el Dash en forma automatica cuando ingreso.
cargarView('<?php echo $grpDash; ?>', 'index', 'View');


//Listener de Envento cuando el Navegador vuelta a estar ONLINE 
//Procesa la cola de POSTS
window.addEventListener('online', function(e) {
    if (navigator.serviceWorker.controller) {
        console.log('Sincronizar Cambios...');
        navigator.serviceWorker.controller.postMessage('processQueue');
    }
});
        </script>