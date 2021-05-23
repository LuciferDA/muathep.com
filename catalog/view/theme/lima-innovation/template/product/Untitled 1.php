<?php echo $header; ?>
<div class="container">
    <div class="row">
        <div id="content">
        <div class="col-md-3">
            <div class="builder-sidebar">
                <?php $i=1;?>
                <?php foreach($categorys as $category){ ?>
            		<div class="step ">
            			<a href="<?php echo $category['href']; ?>">
            			<div class="step_label">
            			 <strong>Bý?c <?php echo $i; ?>:</strong> <br> Ch?n <?php echo $category['name']; ?>
            			</div>
            			</a>
            			<div class="step_thumb" data-step="<?php echo $category['id']; ?>">
                            <?php if(isset($category['image'])) {?>
                                <img src="<?php echo $category['image'];?>" />
                            <?php } ?>
            			</div>
            		</div>
                <?php $i=$i+1;?>
                <?php } ?>
            </div>
            <div class="builder-submit">
                <a href="<?php echo $cost_href; ?>"><?php echo $button_submit;?></a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <?php foreach ($products as $product) { ?>
                <div class="builder-product-item">
						<div class="builder-product-img">
							<a href="<?php echo $product['href']; ?>">
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
							</a>
						</div>
						<div class="builder-product-desc">
                            <?php echo $product['name']; ?>
						</div>
						<div class="add-to-builder">
							<p class="pro-price">
                                <?php if($product['special']) { ?>
                				<?php echo $product['special']; ?>
                                <?php } else{ ?>
                                <?php echo $product['price']; ?>
                                <?php } ?>
                            </p>
							<button class="btn-dang-ky btn-add-builder" onclick="cart.add_builder('<?php echo $product['product_id']; ?>',<?php echo $category_code; ?>);" data-step="main">
								Ch?n s?n ph?m
							</button>
						</div>
					</div>
                <?php } ?>
                <div class="col-sm-12 text-left"><?php echo $pagination; ?></div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="row">
                <?php if($filter_groups){ ?>
                <?php foreach ($filter_groups as $filter_group) { ?>
                    <div class="col-md-12" >
                        <a class="list-group-item"><?php echo $filter_group['name']; ?></a>
                        <div class="list-group-item">
                          <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
                            <?php foreach ($filter_group['filter'] as $filter) { ?>
                            <div class="checkbox">
                              <label>
                                <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                                <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
                                <?php echo $filter['name']; ?>
                                <?php } else { ?>
                                <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
                                <?php echo $filter['name']; ?>
                                <?php } ?>
                              </label>
                            </div>
                            <?php } ?>
                          </div>
                        </div>
                    </div>
                <?php } ?>
             
              <div class="panel-footer text-right">
                <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
              </div>
              <?php } ?>
              </div>
        </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    $('#button-filter').on('click', function() {
    	filter = [];
    
    	$('input[name^=\'filter\']:checked').each(function(element) {
    		filter.push(this.value);
    	});
    
    	location = '<?php echo $action; ?>&filter=' + filter.join(',');
    });
//--></script>
<script type="text/javascript"><!--
$('.btn-add-builder').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
                window.location.href ='index.php?route=checkout/checkout';
			}
            else{

            }
		}
	});
});
//--></script>
<?php echo $footer; ?>