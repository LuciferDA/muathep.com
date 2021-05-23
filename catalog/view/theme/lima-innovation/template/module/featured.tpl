
<div class="box special">
   <div class="container">

        <div class="row">
          <div class="col-md-6">
            <div class="box-heading">LIMA INNOVATION</div>
            <p>We are one of the global EcoXpert partner of Schneider Electric for Critical Power and Light Room Control solutions. Thanks to high-end technology of  European multinational cooperation, LIMA Innovation is honour to cooperate with end user for providing energy and automation digital solutions for efficiency and sustainability. It addresses homes, buildings, data centers, infrastructure and industries, by combining energy technologies, real-time automation, software and services.
            </p>
          </div>
          <div class="col-md-6">
            <iframe width="100%" height="315" src="https://www.youtube.com/embed/oY3JbUDXSjw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        </div>
      
      <div class="row">
         <div class="box-heading"><?php echo $heading_title; ?></div>
         <div class="box-content">
            <?php if($products){ ?>
            <div class="box-product  productbox-grid" id="special-grid">
               <?php foreach($products as $product) { ?>
               <div class="product-items">
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
            <?php } ?>
         </div>
      </div>
   </div>
</div>
<span class="special_default_width" style="display:none; visibility:hidden"></span>