
<script>
function initForm() {

    $('form').each(function() {
        $(this).bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                select: {
                    selector: '#' + $(this).attr('id') + ' select',
                    validators: {
                        callback: {
                            message: 'Seleccionar Opción',
                            callback: function(value, validator, $field) {
                                if (value == '') {
                                    return false;
                                } else {
                                    return true;
                                }

                            }
                        }
                    }
                }
            }
        }).on('success.form.bv', function(e) {
            e.preventDefault();
        });
    });

    $('.datepicker').datepicker({
        dateFormat: 'DD-MM-YYYY'
    });

    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
        checkboxClass: 'icheckbox_flat-green',
        radioClass: 'iradio_flat-green'
    }).on('ifChanged', function(e) {
        // Get the field name
        var field = $(this).attr('name');
        $(this).closest('form').bootstrapValidator('revalidateField', field);
    });

    $('input[type="file"]').on('change', function(e) {

        var filename = $(this).val();

        if (filename != "" && filename != null) {

            var link = $(this).closest('.form-group').find('a').show();
            var file = e.target.files[0];
            var filename = e.target.files[0].name;
            var blob = new Blob([file]);
            var url = URL.createObjectURL(blob);

            $(link).find('a').attr({
                'download': filename,
                'href': url
            });
        }
    });

    $('.save-form').click(function(e) {

        e.preventDefault();

        var form = $(this).closest('form').attr('id');
        var info = $(this).closest('form').data('info');


        $('#' + form).bootstrapValidator('validate');

        var bv = $('#' + form).data('bootstrapValidator');

        //if (!bv.isValid()) return;

        var formData = new FormData($('#' + form)[0]);

        var checkbox = $('#' + form).find("input[type=checkbox]");

        $.each(checkbox, function(key, val) {
            if (!formData.has($(val).attr('name'))) {
                formData.append($(val).attr('name'), '');
            }
        });

        var object = {};

        formData.forEach((value, key) => {

            if (!object.hasOwnProperty(key)) {
                object[key] = value;
                return;
            }

            if (!Array.isArray(object[key])) {
                object[key] = [object[key]];
            }

            object[key].push(value);

        });
        var json = JSON.stringify(object);

        if (!navigator.onLine) sessionStorage.setItem(form, json);

        else {

            var files = $('#' + form + ' input[type="file"]');

            files.each(function() {
                if (this.value != null && this.value != '') formData.append('-file-' + this.name, this
                    .value);
            });
        }


        $.ajax({
            type: 'POST',
            dataType: 'JSON',
            cache: false,
            contentType: false,
            processData: false,
            url: 'index.php/<?php echo FRM ?>Form/guardar/' + form + '/' + info,
            data: formData,
            success: function(rsp) {
                alert('Hecho');
            },
            error: function(rsp) {
                alert('Error: ' + rsp.msj);
                console.log(rsp.msj);
            }
        });

    });

}
</script>

<script>
$('.btn-form').click(function() {
    
    var info = this.dataset.info;

    $.ajax({
        type: 'GET',
        dataType: 'JSON',
        url: 'index.php/<?php echo FRM ?>Form/obtener/' + info,
        success: function(rsp) {
            $('#frm-field').html(rsp.html);
            $('#frm-modal').show();  
           // initForm();
        },
        error: function(rsp) {
            alert('Error: ' + rsp.msj);
            console.log(rsp.msj);
        }
    });
});
</script>
