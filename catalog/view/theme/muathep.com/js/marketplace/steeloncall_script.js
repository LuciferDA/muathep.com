jQuery(document).ready(function (e) {
			
    var a = window.location.origin;
    "steeloncall" == window.location.pathname.split("/")[1] ? (a += "/steeloncall/") : (a += "/"),
        jQuery("#grid-view .tonne").keyup(function (e) {
            if (9 == e.which) return !1;
            if ("" == jQuery(this).val() || 0 == jQuery(this).val()) {
                jQuery("#grid-view .checkbox_product").prop("disabled", !0);
                var r = jQuery(this).val();
                (product_id = jQuery(this).data("proid")), jQuery("#grid-view .checkbox_product").prop("disabled", !1);
                t = a + "calculate/index/toncalculate";
                  jQuery.ajax({
                    url: t,
                    type: "post",
                    data: { ton: r, product_id: product_id }, 
                    success: function (e) {
                        jQuery("#grid-view #piece-" + product_id).val('');
                    },
                });
                
            } else {
                r = jQuery(this).val();
                (product_id = jQuery(this).data("proid")), jQuery(" #grid-view .checkbox_product").prop("disabled", !1);
                t = a + "calculate/index/toncalculate";
                jQuery.ajax({
                    url: t,
                    type: "post",
                    data: { ton: r, product_id: product_id }, 
                    success: function (e) {
                        jQuery("#grid-view #piece-" + product_id).val(e);
                    },
                });
            }
        });
    
        jQuery("#grid-view .piece").keyup(function (e) {
            if (9 == e.which) return !1;
            if ("" == jQuery(this).val() || 0 == jQuery(this).val()) {
                jQuery("#grid-view .checkbox_product").prop("disabled", !0);
                 var r = jQuery(this).val();
                var product_id = jQuery(this).data("pieceid");
                var t = a + "calculate/index/piececalculate";
                 jQuery.ajax({
                    url: t,
                    type: "post",
                    data: { piece: r, product_id: product_id },
                    success: function (e) {
                        
                        jQuery("#grid-view #ton-products-" + product_id).val('');
                    },
                });
               
               
            } else {
                jQuery("#grid-view .checkbox_product").prop("disabled", !1);
                r = jQuery(this).val();
                product_id = jQuery(this).data("pieceid");
                t = a + "calculate/index/piececalculate";
                jQuery.ajax({
                    url: t,
                    type: "post",
                    data: { piece: r, product_id: product_id },
                    success: function (e) {
                        
                        jQuery("#grid-view #ton-products-" + product_id).val(e);
                    },
                });
            }
        });
    
    jQuery("#list-view .tonne").keyup(function (e) {    
       
            if (9 == e.which) return !1;
            if ("" == jQuery(this).val() || 0 == jQuery(this).val()) {
                jQuery("#list-view .checkbox_product").prop("disabled", !0);
                var r = jQuery(this).val();
				jQuery("#list-view #piece-" + product_id).val();
                (product_id = jQuery(this).data("proid")), jQuery("#list-view .checkbox_product").prop("disabled", !1);
				jQuery("#list-view #piece-" + product_id).val('');
                
            } else {
                r = jQuery(this).val();
                (product_id = jQuery(this).data("proid")), jQuery(" #list-view .checkbox_product").prop("disabled", !1);
                t = a + "calculate/index/toncalculate";
                jQuery.ajax({
                    url: t,
                    type: "post",
                    data: { ton: r, product_id: product_id },  
                    success: function (e) {
                        jQuery("#list-view #piece-" + product_id).val(e);
                    },
                });
            }
        });
    
        jQuery("#list-view .piece").keyup(function (e) {
            if (9 == e.which) return !1;
            if ("" == jQuery(this).val() || 0 == jQuery(this).val()) {
                jQuery("#list-view .checkbox_product").prop("disabled", !0);
                jQuery("#list-view #ton-products-" + product_id).val('');
               
            } else {
                jQuery("#list-view .checkbox_product").prop("disabled", !1);
                r = jQuery(this).val();
                product_id = jQuery(this).data("pieceid");
                t = a + "calculate/index/piececalculate";
                jQuery.ajax({
                    url: t,
                    type: "post",
                    data: { piece: r, product_id: product_id },
                    success: function (e) {
                        jQuery("#list-view #ton-products-" + product_id).val(e);
                    },
                });
            }
        });
        jQuery("#seller_tabs_nav li.active").removeClass("active"),
        jQuery("body").hasClass("marketplace-dashboard-index") && jQuery("#seller_tabs_nav #seller_tabs_dashboard").addClass("active"),
        jQuery("body").hasClass("marketplace-seller-profile") && jQuery("#seller_tabs_nav #seller_tabs_account").addClass("active"),
        jQuery("body").hasClass("marketplace-seller-liveproduct") && jQuery("#seller_tabs_nav #seller_tabs_liveproduct").addClass("active"),
        jQuery("body").hasClass("marketplace-seller-orderlist") && jQuery("#seller_tabs_nav #seller_tabs_orders").addClass("active");
});
