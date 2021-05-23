<div class="blog-mainhead">
   <div class="container">
      <div class="row">
         <div class="box megnorblog">
            <div class="box-heading"><?php echo $heading_title; ?></div>
            <div class="box-content">
               <div class="box-product  owl-carousel blogcarousel " id="blog-carousel">
                  <?php 
                     if($all_news){


                  }

                  foreach ($all_news as $news) { ?>
                  <div class="blog-item">
                     <div class="product-block">
                        <div class="blog-left">
                           <div class="blog-image">
                              <img src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>" title="<?php echo $news['title']; ?>" class="img-thumbnail" />
                              <p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="<?php echo $news['image']; ?>" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a></p>
                           </div>
                        </div>
                        <div class="blog-right">
                           <h4><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a> </h4>
                           <div class="date-time"> <i class="fa fa-calendar"></i><?php echo $news['date_added']; ?></div>
                           <div class="blog-desc"> <?php echo $news['description']; ?></div>
                           <div class="read-more"> <a href="<?php echo $news['view']; ?>">Chi Tiết</a> </div>
                        </div>
                     </div>
                  </div>
                  <?php } ?>
               </div>
            </div>
         </div>
         <span class="blog_default_width" style="display:none; visibility:hidden"></span>
      </div>
   </div>
</div>

<script type="text/javascript"><!--
   $(document).ready(function(){
   $('.blogcarousel').owlCarousel({
      items: 2,
      autoPlay: false,
      singleItem: false,
      navigation: true,
      navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
      pagination: true,
      itemsDesktop : [980,2],
      itemsDesktopSmall:[979,1],
      itemsTablet : [479,1]
    });
   });  

</script>