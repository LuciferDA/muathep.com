<?php echo $header; ?>

<div class="container">
  <div class="row">
    <div id="content" class="col-sm-12"><?php echo $content_top; ?>


      <?php if ($products) { ?>
      <div class="container">
        <div class="row">
            <div class="col-sm-12" style="margin:20px 0px 10px 0px;">
                <?php echo $column_right;?>
            </div>
        </div>
      </div>
      <div class="container">
      <div class="row">
        <div class="col-md-12" style="display:none;">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-15" style="border:1px solid #CFCFCF;" >
            <div class="item-inner">
              <div class="images-container">
                <div class="image">
              <a href="<?php echo $product['href']; ?>">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
              </a>
              </div>
                        <a href="<?php echo $product['href']; ?>">


                        </a>
              </div><!-- images-container -->

              <div class="des-container">       
               <div class="name">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
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
                        <?php 
                             $now = time(); // or your date as well
                             $your_date = strtotime($product['date_added']);
                             $datediff = $now - $your_date;
                             $days=floor($datediff/(60*60*24));
                             if($days < 7){
                         ?>
                            <div class="label_new"><span class="new">new</span></div>
                          <?php }?>
              </div>
              <div class="box-button">
                   <div class="button-group"> 
                  <button class="btn-compare2" type="button"  title="Compare this Product"  onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php echo $button_compare;?><em class="tooltips"><?php echo $button_compare;?></em></button>
                    <button class="btn-addtocart" type="button"  title="Add to Cart"   onclick="cart.add('<?php echo $product['product_id']; ?>');"></i><?php echo $button_cart;?></button>
                  
                        </div>
                      
              </div>
              </div><!--des-container-->
            </div>
        </div>
        <?php } ?>
      </div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    </div>
</div>
<?php echo $footer; ?>
