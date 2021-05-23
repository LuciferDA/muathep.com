(function($){
	$(document).ready(function(){
        var $popup = $('#modal-question-add');

        var $form = $popup.find('form');

        $form.on('submit', function(e) {
            e.preventDefault();

            $form.find('button[type=submit]').button('loading');

            $('.alert-dismissible').remove();

            $.ajax({
                url: $form.attr('action'),
                type: "POST",
                data: $form.find(":input").serializeArray(),
                complete: function(){
                    $form.find('button[type=submit]').button('reset');
                },
                success: function(json){
                    $('#modal-question-add .alert-success, #modal-question-add .alert-danger').remove();

                    if (json['error']) {
                        $('#modal-question-add .modal-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                    }

                    if (json['success']) {
                        $form.trigger("reset");

                        $popup.modal('hide');

                        window.scrollTo(0, 0);

                        $('#content').parent().before('<div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">x</button></div>');
                    }
                }
            });
        });
    });
})(jQuery);