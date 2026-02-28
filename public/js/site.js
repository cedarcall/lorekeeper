function loadModal(url, title) {
    $('#modal').find('.modal-body').html('');
    $('#modal').find('.modal-title').html(title);
    $('#modal').find('.modal-body').load(url, function( response, status, xhr ) {
        if ( status == "error" ) {
            var msg = "Error: ";
            $( "#modal" ).find('.modal-body').html( msg + xhr.status + " " + xhr.statusText );
        }
        else {
            $('#modal [data-toggle=tooltip]').tooltip({html: true});
            $('#modal [data-toggle=toggle]').bootstrapToggle();
            $('#modal .cp').colorpicker({
                'autoInputFallback': false,
                'autoHexInputFallback': false,
                'format': 'auto',
                'useAlpha': true,
                extensions: [{
                    name: 'blurValid'
                }]
            });
        }
    });
    
    // Show modal with explicit settings
    $('#modal').modal({
        backdrop: true,
        keyboard: true,
        focus: true,
        show: true
    });
    
    // Ensure backdrop click closes modal
    $('#modal').off('click.dismiss.bs.modal').on('click.dismiss.bs.modal', function(e) {
        if (e.target === this) {
            $(this).modal('hide');
        }
    });
    
    // Ensure close button works
    $('#modal .close').off('click.closemodal').on('click.closemodal', function(e) {
        e.preventDefault();
        e.stopPropagation();
        $('#modal').modal('hide');
    });
    
    // Ensure any button with data-dismiss="modal" works
    $('#modal').off('click.autodismiss', '[data-dismiss="modal"]').on('click.autodismiss', '[data-dismiss="modal"]', function(e) {
        e.preventDefault();
        e.stopPropagation();
        $('#modal').modal('hide');
    });
}