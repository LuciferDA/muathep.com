<div id="content" class="col-sm-12">
<div class="ttcountdown_module">
<div class="countdown-title module-title"><h3 class="title-group"><?php echo $heading_title; ?></h3></div>
<div class="product-layout">
	<div class="row">
	<div class="countdown-tab-content">
	<div class="special-product-inner">
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
        			</div><!-- images-container -->

        			<div class="des-container">				
        			 <div class="name">
        				<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        			 </div>
                    <div class="description">
                    <?php echo $product['gift']; ?>
                    </div>
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
</div>
</div>
<script type="text/javascript">
	$('.special-product-inner').owlCarousel({
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