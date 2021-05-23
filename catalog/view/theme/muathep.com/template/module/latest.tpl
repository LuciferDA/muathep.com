
    <div class="box-heading"><?php echo $heading_title; ?></div>
    <div class="box-content">
        <?php if(products){

    ?>
       <div class="box-product  productbox-grid" id=" latest-grid">
        <?php foreach($products as $product){ ?>
          <div class="product-items">
             <div class="product-block product-thumb transition">
                <div class="product-block-inner">
                   <div class="image">
                      <a href="<?php echo $product['href']; ?>">
                         <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive reg-image"/>
                         <div class="image_content"><img class="img-responsive hover-image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>"/></div>
                      </a>
                   </div>
                   <div class="product-details">
                      <div class="caption">
                         <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                         <p class="price">
                            <?php if($product['special']) { ?>
                            <span class="price-new"><?php echo $product['special']; ?></span>
                            <span class="price-old"><?php echo $product['price']; ?></span>
                            <?php } else{ ?>
                            <?php echo $product['price']; ?>
                            <?php } ?>
                            
                         </p>
                      </div>
                      <div class="product_hover_block">
                         <div class="action">
                            <button type="button" class="cart_button" onclick="cart.add('49 ');" title="Add to Cart" ><i class="fa fa-shopping-cart" area-hidden="true"></i> </button>
                            <div class="quickview-button">
                               <a class="quickbox"  title="" href="#"><i class="fa fa-eye"></i></a>
                            </div>
                            <button class="wishlist" type="button"  title="Add to Wish List " onclick="wishlist.add('49 ');"><i class="fa fa-heart"></i></button>
                            <button class="compare_button" type="button"  title="Add to compare " onclick="compare.add('49 ');"><i class="fa fa-exchange"></i></button>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
        <?php } ?>
       </div>
    <?php } ?>
    </div>

 <span class="latest_default_width" style="display:none; visibility:hidden"></span>
