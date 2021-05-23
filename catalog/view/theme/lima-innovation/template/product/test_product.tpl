<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <div id="content" class=""><?php echo $content_top; ?>
        <div class="col-sm-4">
            <div class="thumbnails-image ">
                <?php if ($thumb) { ?>
                <a class="thumbnail" title="<?php echo $heading_title; ?>">
                    <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                </a>
                <?php } ?>
            </div><!-- thumbnails-image -->
            <div class="row ">

                <div class="wrapper-img-additional">
                    <div class="image-additional" id="gallery_01">
                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                        <a class="thumbnail" href="javascript:void(0);" data-image="<?php echo $image['thumb']; ?>"  title="<?php echo $heading_title; ?>">
                            <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                        </a>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php if($percent!=100){?>
					<div class="sale-off " style="right:30px;">
					     <div class="sale-percent">-<?php echo $percent; ?>%</div>
					</div>
                    <?php } ?>
                </div>
            </div><!-- end wrapper-img-additional -->
        </div>
        <div class="col-sm-4" id="product">
          <h1 class="title-product"><?php echo $heading_title; ?></h1>
            <div class="rating">
                  <?php if ($price) { ?>
                  <ul class="price">
                    <?php if (!$special) { ?>
                    <li>
                      <?php echo $price; ?>
                    </li>
                    <?php } else { ?>
                    <li class="price-new" style="font-size:30px;"><?php echo $special; ?></li>
                    <li class="price-old" style="font-size:20px;"><?php echo $price; ?></li>
                    <?php } ?>

                  </ul>
                  <?php } ?>
                  <h5>* Giá trên đã bao gồm thuế VAT</h5>
                 <div class="gift">

                    <?php if($gift) { echo '<div> Khuyến mãi : ' . $gift .'</div>';}?>
                    <?php if($guarantee) echo '<h5> Bảo hành : ' . $guarantee .'</h5>';?> 
                    <?php if($accessories) echo '<div> Phụ kiện kèm theo : ' . $accessories .'</div>';?>
                 </div>

                <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
        </div>
        <div class="col-sm-4">
            <?php echo $column_right;?>
              <?php if ($tags) { ?>
              <p><?php echo $text_tags; ?>
                <?php for ($i = 0; $i < count($tags); $i++) { ?>
                <?php if ($i < (count($tags) - 1)) { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                <?php } else { ?>
                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                <?php } ?>
                <?php } ?>
              </p>
              <?php } ?>
        </div>
            <div class="col-sm-12">
          <ul class="nav nav-tabs">
            <li <?php if (!$attribute_groups) { echo 'class="active"'; } ?> ><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li class="active"><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab">ĐÁNH GIÁ (<span class="fb-comments-count" data-href="http://thinhtien.com.vn/index.php?route=product/product&product_id=<?php echo $product_id; ?>"></span>)</a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane <?php if (!$attribute_groups) { echo 'active'; } ?> " id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane active" id="tab-specification">
              <table class="table">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                <?php } ?>
                <tfoot>
                  <tr>
                    <td>Kích thước(Dài x Rộng x Cao):</td>
                    <?php 
                        $len=explode('.', $length);
                        $wid=explode('.', $width);
                        $heg=explode('.', $height);
                        $wei=explode('.', $weight);
                    ?>
                    <td><?php echo $len[0]; ?> x <?php echo $wid[0]; ?> x <?php echo $heg[0]; ?> cm</td>
                  </tr>
                  <tr>
                    <td>Nặng</td>
                    <td><?php echo round($weight,2); ?> kg</td>
                  </tr>
                </tfoot>
              </table>
                
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
                <div class="fb-comments" data-href="http://thinhtien.com.vn/index.php?route=product/product&product_id=<?php echo $product_id; ?>" data-numposts="5" data-width="100%"></div>
            </div>
            
            <?php } ?>
        
            </div>
          </div>
      <?php if ($products) { ?>
      <div class="col-sm-12">
        <div class="ttcountdown_module">
        <div class="countdown-title module-title"><h3 class="title-group"><?php echo $text_related; ?></h3></div>
        <div class="product-layout">
        	<div class="row">
        	<div class="countdown-tab-content">
        	<div class="countdown-product-inner2">
                <?php foreach ($products as $product) { ?>
            <div class="timer-item">
        		<div class="item-inner">
        			<div class="images-container">
        				<div class="image">
							<a href="<?php echo $product['href']; ?>">
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
							</a>
    					</div>
                         <?php if($product['sort_description']){ ?>
                         <a href="<?php echo $product['href']; ?>">
                			 <div class="more_info">
                                <?php echo $product['sort_description']; ?>
                             </div>
                         </a>
                         <?php } ?>
                        <?php if($product['percent']!=100){?>
						<div class="sale-off">
						     <div class="sale-percent">-<?php echo $product['percent']; ?>%</div>
						</div>
                        <?php } ?>
    
                            <?php 
                                 $now = time(); // or your date as well
                                 $your_date = strtotime($product['date_added']);
                                 $datediff = $now - $your_date;
                                 $days=floor($datediff/(60*60*24));
                                 if($days < 7){
                             ?>
                                <div class="label_new"><span class="new">new</span></div>
                              <?php }?>
        			</div><!-- images-container -->

        			<div class="des-container">				
        			 <div class="name">
        				<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        			 </div>
        			 <div class="description"></div>
        			 <div class="price">
                        <?php if($product['special']) { ?>
        				<span class="price-new"><?php echo $product['special']; ?></span>
        				<span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } else{ ?>
                        <span class="price-new"><?php echo $product['price']; ?></span>
                        <?php } ?>
        			</div>
        			<div class="box-button">
        			     <div class="button-group">	
        					<button class="btn-compare2" type="button"  title="Compare this Product"  onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php echo $button_compare;?><em class="tooltips"><?php echo $button_compare;?></em></button>
        				</div>
                    	<button class="btn-addtocart" type="button"  title="Add to Cart"   onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart;?></button>
        					
        			</div>
        			</div><!--des-container-->
        		</div>
            </div><!-- timer-item -->
                <?php } ?>
            	</div>
        	</div><!-- countdown-product-inner -->
        	</div><!-- countdown-tab-content -->
        </div>
        </div>
        <script type="text/javascript">
        	$('.countdown-product-inner2').owlCarousel({
        		autoPlay : false,
        		items : 5,
        		itemsDesktop : [1199,4],
        		itemsDesktopSmall : [991,3],
        		itemsTablet: [767,2],
        		itemsMobile : [479,1],
        		slideSpeed : 3000,
        		paginationSpeed : 3000,
        		rewindSpeed : 3000,
        		navigation : true,
        		stopOnHover : true,
        		pagination : false,
        		scrollPerPage:true,
        		afterMove: function(){
        			x = $( ".countdown-tab-content .owl-pagination .owl-page" ).index( $( ".countdown-tab-content .owl-pagination .active" ));
        			var thumbinner = ".thumbinner"+x;
        			$(".list-thumb .thumb li").removeClass('active');
        			$(thumbinner).addClass('active');
        		}
        	});
        </script>
      </div>
      </div>
      <?php } ?>

      <?php echo $content_bottom; ?></div>
</div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
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
<script type="text/javascript"><!--

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
//--></script>
<?php echo $footer; ?>