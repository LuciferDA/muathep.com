$(document).ready(function() {
    oclayerednavigationajax.productViewChange();
    oclayerednavigationajax.paginationChangeAction();
});

var oclayerednavigationajax = {
    

    /* Filter action */
    'filter' : function(filter_url) {
        var old_route = 'route=product/category';
        var new_route = 'route=module/oclayerednavigation/category';
        if(filter_url.search(old_route) != -1) {
            filter_url = filter_url.replace(old_route, new_route);
        }

        if(filter_url.search(new_route) != -1) {
            $.ajax({
                url         : filter_url,
                type        : 'get',
                beforeSend  : function () {
                    $('.layered-navigation-block').show();
                    $('.ajax-loader').show();
                },
                success     : function(json) {
                    $('.filter-url').val(json['filter_action']);
                    $('.price-url').val(json['price_action']);
                    $('.custom-category').html(json['result_html']);
                    $('.layered').html(json['layered_html']);
                    oclayerednavigationajax.paginationChangeAction();
                    oclayerednavigationajax.productViewChange();
                    $('.layered-navigation-block').hide();
                    $('.ajax-loader').hide();
                }
            });
        }

    },

    /* Use again and update ajaxComplete from common.js */
    'productViewChange' : function() {
        // Product List
        $('#list-view').click(function() {
            $('#content .product-grid > .clearfix').remove();

            //$('#content .product-layout').attr('class', 'product-layout product-list col-xs-12');
            $('#content .row > .product-grid').attr('class', 'product-layout product-list col-xs-12');

            localStorage.setItem('display', 'list');
             $('.btn-group').find('#list-view').addClass('selected');
              $('.btn-group').find('#grid-view').removeClass('selected');
        });

        // Product Grid
        $('#grid-view').click(function() {
            // What a shame bootstrap does not take into account dynamically loaded columns
            cols = $('#column-right, #column-left').length;

            if (cols == 2) {
                $('#content .product-list').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
            } else if (cols == 1) {
                $('#content .product-list').attr('class', 'product-layout product-grid col-lg-2 col-md-2 col-sm-6 col-xs-12');
            } else {
                $('#content .product-list').attr('class', 'product-layout product-grid col-lg-15 col-md-15 col-sm-6 col-xs-6 col-sp-12');
            }

             localStorage.setItem('display', 'grid');
             $('.btn-group').find('#grid-view').addClass('selected');
               $('.btn-group').find('#list-view').removeClass('selected');
        });

        if (localStorage.getItem('display') == 'list') {
            $('#list-view').trigger('click');
        } else {
            $('#grid-view').trigger('click');
        }

        if (localStorage.getItem('display') == 'list') {
            $('#list-view').trigger('click');
        } else {
            $('#grid-view').trigger('click');
        }

    },
    
    /* Modify pagination links */
    paginationChangeAction: function () {
        $('.custom-category .pagination a').each(function () {
            var href = $(this).attr('href');
            $(this).attr('onclick', 'oclayerednavigationajax.filter("'+ href +'")');
            $(this).attr('href', 'javascript:void(0);');
        });
    }

};