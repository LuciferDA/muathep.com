(function($){

    /**
     * Get param from url
     * @param string name
     */
    $.getUrlParam = function(name, url){
        var url = url || window.location.href;
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(url);
        return (results==null) ? null : (decodeURIComponent(results[1]) || 0);
    }

    $(document).ready(function(){

        var initHtmlEditor = function(textarea) {
            if ($.fn.summernote) {
                textarea.summernote();
            }
        }

        initHtmlEditor($('textarea[data-toggle=\'summernote\']'));

        $('#modal-answer').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var modal = $(this);
            var row = button.parents('tr');

            modal.find('.modal-title').text(row.find('[data-var=product]').text());
            modal.find('#input-question').val(row.find('[data-var=question]').val());
            modal.find('#input-answer').val(row.find('[data-var=answer]').val());
            modal.find('.modal-body input[name=question_id]').val(row.find("[name='selected[]']").val());

            initHtmlEditor(modal.find('.modal-body textarea[data-toggle=\'ckeditor\']'));
        });

        $('#input-customer').autocomplete({
            source: function(request, response) {
                $.ajax({
                    url: ('index.php?route=customer/customer/autocomplete&user_token=' + $.getUrlParam('user_token') + '&filter_name=' + encodeURIComponent(request)),
                    type: 'GET',
                    dataType: 'json',
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                email: item['email'],
                                value: item['customer_id']
                            }
                        }));
                    }
                });
            },
            select: function(item) {
                $('input[name=\'customer_id\']').val(item['value']);
                $('#input-customer').val(item['label']);

                if (item['email'] && $('input[name=\'email\']').val() == '') {
                    $('input[name=\'email\']').val(item['email'])
                }

                if ($('input[name=\'name\']').val() == '') {
                    $('input[name=\'name\']').val(item['label'])
                }
            }
        });

        $('#input-product').autocomplete({
            'source': function(request, response) {
                $.ajax({
                    url: 'index.php?route=catalog/product/autocomplete&user_token=' + $.getUrlParam('user_token') + '&filter_name=' +  encodeURIComponent(request),
                    dataType: 'json',
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['product_id']
                            }
                        }));
                    }
                });
            },
            'select': function(item) {
                $('input[name=\'product_id\']').val(item['value']);
                $('#input-product').val(item['label']);
            }
        });

        $('#button-filter').on('click', function() {
            var url = '';

            var filter_name = $('input[name=filter_name]').val();
            if (filter_name) {
                url += '&filter_name=' + encodeURIComponent(filter_name);
            }

            var filter_question = $('input[name=filter_question]').val();
            if (filter_question) {
                url += '&filter_question=' + encodeURIComponent(filter_question);
            }

            var filter_answer = $('input[name=filter_answer]').val();
            if (filter_answer) {
                url += '&filter_answer=' + encodeURIComponent(filter_answer);
            }

            var filter_product = $('input[name=product_id]').val();
            if (filter_product) {
                url += '&filter_product=' + encodeURIComponent(filter_product);
            }

            var filter_status = $('input[name=filter_status]:checked').val();
            if (filter_status && filter_status !== '') {
                url += '&filter_status=' + encodeURIComponent(filter_status);
            }

            window.location = 'index.php?route=extension/module/emailtemplate_question&user_token=' + $.getUrlParam('user_token') + url;
        });
    });
})(jQuery);