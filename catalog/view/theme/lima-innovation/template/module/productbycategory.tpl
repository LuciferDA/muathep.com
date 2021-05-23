<div class="productbycategory">
  <div class="row title">
    <h4 class="title-cate pull-left">
        <?php foreach ($categories as $category) { ?>
            <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
    </h4>
    <div class="subcategory pull-right">
      <ul class="nav nav-pills">
        <?php if (!empty($subcategories)) {
              $i=0;
              foreach ($subcategories as $subcategory) {?>
                <li><a href="<?php echo $subcategory['href']; ?>"><?php echo $subcategory['name']; ?></a></li>
            <?php if (++$i == 6) break; }?>
        <?php } ?>
        <?php foreach ($categories as $category) { ?>
          <li class="viewmore"><a href="<?php echo $category['href']; ?>">Xem tất cả</a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
<div class="row">
<?php if ($style == 0) { ?>

<div id="productbycategory<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($products as $product) { ?>
  <div class="item">
      <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img data-src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyOwl" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?//php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                
                </p>
                <?php } ?>
              </div>
             
            </div>
          </div>
      
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#productbycategory<?php echo $module; ?>').owlCarousel({
  items: 5,
  autoPlay: 3000,
   lazyLoad : true,
  singleItem: false,
  navigation: false,
  pagination: false,
  transitionStyle: 'fade'
});
--></script>
<?php } else {  ?>
<?php foreach ($products as $product) { ?>
  <div class="product-layout product-grid col-lg-3 col-md-3 col-sm-4 col-xs-6">
      <div class="product-thumb row">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyOwl" /></a></div>
        <div>
          <div class="caption">
            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
            <p><?//php echo $product['description']; ?></p>
            <?php if ($product['rating']) { ?>
            <div class="rating">
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($product['rating'] < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($product['price']) { ?>
            <p class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
              <?php } ?>
            
            </p>
            <?php } ?>
          </div>
         
        </div>
      </div>
    </div>
<?php } ?>
 <?php } ?>

</div>
 

</div>



