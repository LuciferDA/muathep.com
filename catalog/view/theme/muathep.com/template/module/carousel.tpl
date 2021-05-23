<div class="hometab box">
   <div class="container">
    <?php foreach ($banners as $banner) { ?>
      <div class="row">
         <div class="collection-right-banner">
            <img class="img-responsive" src="<?php echo $banner['image']; ?>" alt="bannerfirst">  
            <div class="image-title">
               <h3><?php echo $banner['title']; ?></h3>
            </div>
            <div class="image-button">
               <a href="<?php echo $banner['link']; ?>" class="banner-btn">Detail</a>
            </div>
         </div>
      </div>
    <?php } ?>
   </div>
</div>
