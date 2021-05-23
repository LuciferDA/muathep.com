<script>
   $('#tabs a').tabs();
</script> 
<div class="box ProductbyCategory">
   <div class="container">
      <div class="row">
         <div class="column_combine">
            <div class="tab-head">
               <div class="hometab-heading box-heading">Danh Mục Bán Chạy</div>
               <div id="tabss" class="htabs">

                  <ul class="etabs">
                    <?php foreach ($categories as $category) { ?>
                     <li class="tab">
                        <a href="#<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></a>
                     </li>
                    <?php } ?>
                  </ul>
               </div>
            </div>
            <div class="product-column">
               <?php foreach ($categories as $category) { ?>
               <div id="<?php echo $category['category_id']; ?>" class="tab-content">
                  <div class="box-content">
                      
                     <div class="box-product  productbox-cat" id="special-grid">
                       <?php foreach($products as $product) { ?>
               <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                  <div class="product-block product-thumb transition">
                     <div class="product-block-inner">
                        <div class="image_cover">
                           <div class="image ">
                              <a href="<?php echo $product['href']; ?>">
                                 <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive reg-image"/>
                                 <div class="image_content"><img class="img-responsive hover-image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>"/></div>
                              </a>
                              <?php if($product['percent']!=100){?>
                              <span class="special-tag"><?php echo $product['percent']; ?>%</span>
                              <?php } ?>
                              
                           </div>

                           <div class="product_hover_block">
                              <div class="action">
                                 <button class="wishlist" type="button"  title="Add to Wish List " onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></button>
                                 <button class="compare_button" type="button"  title="Add to compare " onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
                              </div>
                           </div>
                        </div>
                        <div class="product-details">
                           <div class="caption">
                              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>

                              <p class="price">
                                 <?php if($product['special']) { ?>
                                 <span class="price-new"><?php echo $product['special']; ?></span>
                                 <span class="price-old"><?php echo $product['price']; ?></span>
                                 <?php } else{ ?>
                                 <span class="price-new"><?php echo $product['price']; ?></span>
                                       <?php } ?>
                              </p>
                           </div>
                           <div class="product_hover_block">
                              <div class="action">
                                 <button type="button" class="cart_button" onclick="cart.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart;?>" ><?php echo $button_cart;?></button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
<!--                   <script> 
   $('.total-review42').on('click', function() { 
     var t='indexbb02.html?route=product/product&amp;product_id=42'; 
     const parseResult = new DOMParser().parseFromString(t, "text/html");
     const parsedUrl = parseResult.documentElement.textContent;
     window.location.href = parsedUrl + '&review';
     return false;
   });
</script> -->
               </div>
               <?php } ?>
                     </div>

                  </div>
                  <span class="productcategory0_default_width" style="display:none; visibility:hidden"> </span>
               </div>
               <?php } ?>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   $('#tabss a').tabss();
</script>


