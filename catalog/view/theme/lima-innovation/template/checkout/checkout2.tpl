<?php 

echo $header;
?>

<div class="container">        
		<div class="row">
		    <div class="col-md-12">
			    <div class="breadcrumbs">
				   <ul class="breadcrumb">

      <?php $i=1; foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php if($i==1) { echo '<i class="fa fa-home"></i>'; }?> <?php echo $breadcrumb['text']; ?></a></li>
      <?php $i++; } ?>
   </ul>
				</div>
			</div>
			
		</div>
		
		<div class="error"></div>
		<div class="row box checkout_form">
		    <div class="col-md-12 register_block">
			<div class="row">
				  <div class="col-md-12">
				  </div>
				  <div style="display:none">
				  <?php //if (!isset($address)) {?>
				  <div class="form-group" >
				    <label class="control-label"><?php echo $entry_customer_group; ?></label>
				    <?php foreach ($customer_groups as $customer_group) { ?>
				    <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
				    <div class="radio">
				      <label>
					<input type="radio"  name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
					<?php echo $customer_group['name']; ?></label>
				    </div>
				    <?php } else { ?>
				    <div class="radio">
				      <label>
					<input type="radio" checked="checked" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
					<?php echo $customer_group['name']; ?></label>
				    </div>
				    <?php } ?>
				    <?php } ?>
				  </div>
                  </div>
				  <div class="form-group required col-md-6">
				    <input type="text" name="lastname" value="<?php if (isset($lastname)) echo $lastname;?>" placeholder="<?php echo str_replace(':','',$entry_lastname); ?>" id="input-payment-lastname" class="form-control" <?php if (isset($customer_id)) {?> readonly<?php }?>/>
				  </div>
				  <div class="form-group required col-md-6">
				    <input type="text" name="firstname" value="<?php if (isset($address['firstname'])) echo $address['firstname']; elseif (isset($firstname)) echo $firstname; ?>" placeholder="<?php echo str_replace(':','',$entry_firstname); ?>" id="input-payment-firstname" class="form-control" <?php if (isset($customer_id)) {?> readonly<?php }?>/>
				  </div>

				  <div class="form-group required col-md-6">
				    <input type="text" name="email" value="<?php if (isset($email)) echo $email;?>" placeholder="<?php echo str_replace(':','',$entry_email); ?>" id="input-payment-email" class="form-control" <?php if (isset($customer_id)) {?> readonly<?php }?>/>
				  </div>
				  <div class="form-group required  col-md-6">
				    <input type="text" name="telephone" value="<?php if (isset($telephone)) echo $telephone;?>" placeholder="<?php echo str_replace(':','',$entry_telephone); ?>" id="input-payment-telephone" class="form-control" <?php if (isset($customer_id)) {?> readonly<?php }?>/>
				  </div>
                  <div style="display:none">
				  <?php //if (!$checkout_hide_fax) {?>
				  <div class="form-group col-md-6">
				    <input type="text" name="fax" value="<?php if (isset($fax)) echo $fax;?>" placeholder="<?php echo str_replace(':','',$entry_fax); ?>" id="input-payment-fax" class="form-control" <?php if (isset($customer_id)) {?> readonly<?php }?>/>
				  </div>
				  <?php //}?>
                  </div>
				  <div class="col-md-12">
			      <?php if ($addresses) { ?>
				  <?php if (isset($customer_id)) {?>	  
			      <div class="radio">
				 <label>
				  <input type="radio" name="payment_address" value="existing" checked="checked" onclick="jQuery('#payment-address-new').hide()" />
				  <?php echo $text_address_existing; ?></label>
			      </div>
			      <div id="payment-existing">
					<select name="payment_address_id" class="form-control">
				  <?php foreach ($addresses as $address) { ?>
				  <?php if (isset($payment_address_id) && $address['address_id'] == $payment_address_id) { ?>
				  <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
				  <?php } ?>
				  <?php } ?>
				</select>
			      </div>
			      <?php } ?>
			    <?php if (isset($customer_id)) {?>	  
			      <div class="radio">
				  <label>
				  <input type="radio" name="payment_address" value="new" onclick="jQuery('#payment-address-new').show();"/>
				  <?php echo $text_address_new; ?></label>
			      </div>
				  <?php } ?>
			      <?php } ?>
				  </div>
                    
				  <div id="payment-address-new" <?php if (isset($customer_id) && $addresses) {?>	style="display:none"<?php }?>>
				  <?php // if (!$checkout_hide_company){?>
                  <div style="display:none">
				  <div class="form-group col-md-6">
				    <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
				    <input type="text" name="company" value="<?php if (isset($company)) echo $company;?>" placeholder="<?php echo str_replace(':','',$entry_company); ?>" id="input-payment-company" class="form-control" />
				  </div>
				   <?php //} else {?>
					   <input type="hidden" name="company" value="" />
				   <?php //}?>
				  
				  <?php if (isset($entry_company_id)) { ?>
				  <?php if (!$checkout_hide_company_id){?>
				  <div class="form-group col-md-6">
				    <label class="control-label" for="input-payment-company"><?php echo $entry_company_id; ?></label>
				    <input type="text" name="company_id" value="<?php if (isset($company_id)) echo $company_id; ?>" placeholder="<?php echo str_replace(':','',$entry_company_id); ?>" id="input-payment-company-id" class="form-control" />
				  </div>
				   <?php } else {?>
					   <input type="hidden" name="company_id" value="" />
				   <?php }?>
                  
				  <?php if (!$checkout_hide_tax_id){?>
				  <div class="form-group col-md-6">
				    <label class="control-label" for="input-tax-id-"><?php echo $entry_tax_id; ?></label>
				    <input type="text" name="tax_id" value="<?php if (isset($tax_id)) echo $tax_id; ?>" placeholder="<?php echo str_replace(':','',$entry_tax_id); ?>" id="input-tax-id-" class="form-control" />
				  </div>
				   <?php } else {?>
					   <input type="hidden" name="tax_id" value="" />
				   <?php } }?>
				  </div>
				  <div class="form-group required col-md-6">
				    <select name="zone_id" id="input-payment-zone" class="form-control">
				    </select>
				  </div>
				  <div class="form-group required col-md-6">
				    <input type="text" name="address_1" value="<?php if (isset($address_1)) echo $address_1;?>" placeholder="<?php echo str_replace(':','',$entry_address_1); ?>" id="input-payment-address-1" class="form-control" />
				  </div>
                  <div style="display:none">
				  <div class="form-group col-md-12">
				    <label class="control-label" for="input-payment-address-2"><?php echo $entry_address_2; ?></label>
				    <input type="text" name="address_2" value="<?php if (isset($address_2)) echo $address_2;?>" placeholder="<?php echo str_replace(':','',$entry_address_2); ?>" id="input-payment-address-2" class="form-control" />
				  </div>
                  </div>
                  <div style="display:none">
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
				    <select name="country_id" id="input-payment-country" class="form-control">
				      <option value=""><?php echo $text_select; ?></option>
				      <?php foreach ($countries as $country) { ?>
				      <?php if ($country['country_id'] == $country_id) { ?>
				      <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
				      <?php } else { ?>
				      <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
				      <?php } ?>
				      <?php } ?>
				    </select>
				  </div>
                  </div>

                  <div style="display:none">
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
				    <select name="city" id="input-payment-zone" class="form-control">
                        <option value="3767">Đà Nẵng</option>
				    </select>
				  </div>
                  </div>
                  <div style="display:none">
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
				    <input type="text" name="postcode" value="<?php if (isset($postcode)) echo $postcode; ?>59000" placeholder="<?php echo str_replace(':','',$entry_postcode); ?>" id="input-payment-postcode" class="form-control" />
				  </div>
                  </div>
				</div>
                <div style="display:none">
				<?php if (!isset($customer_id)) {?>	
				<div class="form-group col-md-12">
					<label>
					<input type="checkbox" name="register" onclick="jQuery('.register-form').toggle()">&nbsp;<?php echo $text_register; ?></label>
				</div>    
				<?php } ?>  
				</div>
				
				<div class="register-form" style="display:none">
				      <div class="form-group required col-md-6">
					<label class="control-label" for="input-payment-password"><?php echo $entry_password; ?></label>
					<input type="password" name="password" value="" placeholder="<?php echo str_replace(':','',$entry_password); ?>" id="input-payment-password" class="form-control" />
				      </div>
				      <div class="form-group required col-md-6">
					<label class="control-label" for="input-payment-confirm"><?php echo $entry_confirm; ?></label>
					<input type="password" name="confirm" value="" placeholder="<?php echo str_replace(':','',$entry_confirm); ?>" id="input-payment-confirm" class="form-control" />
				      </div>
				</div>
			<?php /*} else {?>
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
				    <p><?php echo $firstname; ?></p>
				  </div>
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
				    <p><?php echo $lastname; ?></p>
				  </div>
				  <div class="form-group required  col-md-6">
				    <label class="control-label" for="input-payment-email"><?php echo $entry_email; ?></label>
				    <p><?php echo $email; ?></p>
				  </div>
				  <div class="form-group required  col-md-6">
				    <label class="control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
				    <p><?php echo $telephone; ?></p>
				  </div>
				  <?php if (!empty($fax)) {?>
				  <div class="form-group col-md-12">
				    <label class="control-label" for="input-payment-fax"><?php echo $entry_fax; ?></label>
				    <p><?php echo $fax; ?></p>
				  </div>
				  <?php }?>

				  <div class="col-md-12">
				    <h3 class="clearfix"><?php echo $text_your_address; ?></h3>
				  </div>

				  <?php if (!empty($address['company'])) {?>
				  <div class="form-group col-md-6">
				    <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
				    <p><?php echo $address['company']; ?></p>
				  </div>
				  <?php }?>
			
				  <?php if (!empty($address['address_1'])) {?>
				  <div class="form-group required col-md-12">
				    <label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
				    <p><?php echo $address['address_1'];?></p>
				  </div>
				   <?php }?>
				  
				  <?php if (!empty($address['address_2'])) {?>
				  <div class="form-group col-md-12">
				    <label class="control-label" for="input-payment-address-2"><?php echo $entry_address_2; ?></label>
				    <p><?php echo $address['address_2'];?></p>
				  </div>
				   <?php }?>
				   
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
				    <p><?php echo $address['country'];?></p>
				  </div>
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-zone"><?php echo $entry_zone;; ?></label>
				    <p><?php echo $address['zone'];?></p>
				  </div>
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
				    <p><?php echo $address['city'];?></p>
				  </div>
				  <div class="form-group required col-md-6">
				    <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
				    <p><?php echo $address['postcode'];?></p>
				  </div>
			    
			<?php } */?>
		      </div>
            <div id="shipping">
            
			    <div class="shipping-method">

				</div>

				<div class="row payment-method">						    

				</div>
            </div>	
		    </div>			      
		    <div class="col-md-12">
				<div class="your_order">
				    <table id="cart_table" class="table table-hover table-responsive">
					  <tbody>
					<?php foreach ($products as $product) { ?>
					<tr>
					  <td class="text-left"><img src="<?php echo $product['image']; ?>"></td>
					  <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a><br>
					  <span>Mã : <?php echo $product['model']; ?></span>
						<?php foreach ($product['option'] as $option) { ?>
						<br />
						&nbsp;<small> - <?php echo $option['name']; ?>: <?php if (isset($option['option_value']) && !empty($option['option_value'])) echo $option['option_value'];else if (isset($option['value'])) echo $option['value']; ?></small>
						<?php } ?></td>

					  <td class="text-right hidden-xs"><?php echo $product['quantity']; ?></td>
					  <td class="text-right hidden-xs"><?php echo $product['price']; ?></td>
					</tr>
					<?php } ?>
					<?php foreach ($vouchers as $voucher) { ?>
					<tr>
					  <td class="text-left"><?php echo $voucher['description']; ?></td>
					  <td class="text-right hidden-xs"><?php echo $voucher['amount']; ?></td>
					  <td class="text-right"><?php echo $voucher['amount']; ?></td>
					</tr>
					<?php } ?>
					  </tbody>
					  <tfoot>
					<?php foreach ($totals as $total) { ?>
					<tr>
					  <td colspan="3" class="text-right  hidden-xs"><strong><?php echo $total['title']; ?>:</strong></td>
					  <td colspan="1" class="text-right  visible-xs"><strong><?php echo $total['title']; ?>:</strong></td>
					  <td class="text-right"><?php echo $total['text']; ?></td>
					</tr>
					<?php } ?>
					  </tfoot>
				    </table>
									

					
					<p><strong><?php echo $text_comments; ?></strong></p>
					<p>
					  <textarea name="comment" rows="3" class="form-control"><?php echo $comment; ?></textarea>
					</p>
					<?php if ($text_agree) { ?>
					<div class="buttons clearfix">
					  <div class="pull-right"><?php echo $text_agree; ?>
					    <?php if ($agree) { ?>
					    <input type="checkbox" name="agree" value="1" checked="checked" />
					    <?php } else { ?>
					    <input type="checkbox" name="agree" value="1" />
					    <?php } ?>
					    &nbsp;
					  </div>
					</div>
					<?php } else { ?>
                    <div style="display:none;">
					<div class="buttons">
					  <div class="pull-right">
					    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" data-loading-text="<?php if (isset($text_loading)) echo $text_loading;else echo 'loading ...' ?>" class="btn btn-primary" />
					  </div>
					</div>
                    </div>
					<?php } ?>
					
					<div class="payment clearfix">
					    <?php if ($payment) echo $payment; else {?>
                        <div class="pull-right">
					       <input type="button" class="btn btn-primary" data-loading-text="<?php if (isset($text_loading)) echo $text_loading;else echo 'loading ...' ?>" id="button-register" value="<?php echo $heading_title;?>">
					    </div>
                        <?php }?></div>
					</div>
			    </div>
			</div>
		</div>
	</div>		
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>



<script type="text/javascript"><!--
var error = true;

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/checkout/login_validate',
        type: 'post',
        data: $('.login-form :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},  
        complete: function() {
            $('#button-login').button('reset');
        },              
        success: function(json) {
            $('.alert, .text-danger').remove();
            
            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('.login-form .message').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
           }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});

// Register
$(document).delegate('#button-register', 'click', function() 
{
	
	var data = $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select').serialize();
	data += '&_shipping_method='+ jQuery('.checkout_form input[name=\'shipping_method\']:checked').prop('title') + '&_payment_method=' + jQuery('.payment_method_item input[name=\'payment_method\']:checked').prop('title');
	console.log(data);
    $.ajax({
        url: 'index.php?route=checkout/checkout/validate',
        type: 'post',
        data: data,
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},  
        complete: function() {
            $('#button-register').button('reset');
        },          
        success: function(json) {
            $('.alert, .text-danger').remove();
                        
            if (json['redirect']) {
                //location = json['redirect'];                
            } else if (json['error']) {
				error = true;
                if (json['error']['warning']) {
                    $('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
                
		for (i in json['error']) {
                    $('[name="' + i + '"]').after('<div class="text-danger">' + json['error'][i] + '</div>');
		}
            } else 
	    {
			error = false;
			jQuery('[name=\'payment_method\']:checked').click();
            }    
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});

$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
        url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-spinner fa-spin"></i>');
        },
        complete: function() {
			$('.fa-spinner').remove();
        },          
        success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}
			            
            html = '<option value=""><?php echo $text_select; ?></option>';
            
            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                        html += ' selected="selected"';
                    }
    
                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }
            
            $('select[name=\'zone_id\']').html(html).val("");
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});


$('select[name=\'shipping_country_id\']').on('change', function() {
	$.ajax({
        url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-spinner fa-spin"></i>');
        },
        complete: function() {
			$('.fa-spinner').remove();
        },          
        success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}
			            
            html = '<option value=""><?php echo $text_select; ?></option>';
            
            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                        html += ' selected="selected"';
                    }
    
                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }
            
            $('select[name=\'shipping_zone_id\']').html(html).val("");
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('select[name=\'country_id\'], select[name=\'zone_id\'], select[name=\'shipping_country_id\'], select[name=\'shipping_zone_id\'], input[type=\'radio\'][name=\'payment_address\'], input[type=\'radio\'][name=\'shipping_address\']').on('change', function() 
{
	if (this.name == 'contry_id') jQuery("select[name=\'zone_id\']").val("");
	if (this.name == 'shipping_country_id') jQuery("select[name=\'shipping_zone_id\']").val("");
	
    jQuery(".shipping-method").load('index.php?route=checkout/checkout/shipping_method', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked,input[name=\'shipping_method\']:first, .checkout_form textarea, .checkout_form select'), function() 
    {
		if (jQuery("input[name=\'shipping_method\']:first").length) 
		{
			jQuery("input[name=\'shipping_method\']:first").attr('checked', 'checked').prop('checked', true).click();
		} else
		{
			jQuery("#cart_table").load('index.php?route=checkout/checkout/cart', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select'));	
		}
    });

	jQuery(".payment-method").load('index.php?route=checkout/checkout/payment_method', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked,input[name=\'shipping_method\']:first, .checkout_form textarea, .checkout_form select'), function() 
	{
		jQuery("[name=\'payment_method\']").removeAttr("checked").prop('checked', false);
	});
});    


$(document).delegate('input[name=\'shipping_method\']', 'click', function() 
{
    jQuery("#cart_table").load('index.php?route=checkout/checkout/cart', $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select'));
});  

$('body').delegate('[name=\'payment_method\']','click', function() 
{

	var data = $('.checkout_form input[type=\'text\'], .checkout_form input[type=\'date\'], .checkout_form input[type=\'datetime-local\'], .checkout_form input[type=\'time\'], .checkout_form input[type=\'password\'], .checkout_form input[type=\'hidden\'], .checkout_form input[type=\'checkbox\']:checked, .checkout_form input[type=\'radio\']:checked, .checkout_form textarea, .checkout_form select').serialize();
	data += '&_shipping_method='+ jQuery('.checkout_form input[name=\'shipping_method\']:checked').prop('title') + '&_payment_method=' + jQuery('.checkout_form input[name=\'payment_method\']:checked').prop('title');

	if (!error)
    $.ajax({
        url: 'index.php?route=checkout/checkout/confirm',
        type: 'post',
        data: data,
        success: function(html) 
        {
			jQuery(".payment").html(html);
			
			jQuery("#button-confirm").click();
			
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});

$('select[name=\'country_id\']').trigger('change');
jQuery(document).ready(function()
{
	jQuery('input:radio[name=\'payment_method\']:first').attr('checked', true).prop('checked', true);
	<?php /*if ($opencart_version < 2000) {?>
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
	<?php }*/?>
});
//--></script> 

<?php echo $footer;?>
