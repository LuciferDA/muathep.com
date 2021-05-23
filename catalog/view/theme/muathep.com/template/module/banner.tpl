<div id="servicecmsblock">
   <div class="container">
      <div class="row">
         <div id="servicecmsinfo_block1">
            <div class="box-content-cms">
               <div class="inner-cms">
                  <div class="box-cms-content">
                    <?php if($banners){ ?> 
                    <?php $col=12/count($banners);?>
                    <?php foreach($banners as $banner){ ?> 
                     <div class="first-content main-content col-md-<?php echo $col ?>  col-sm-<?php echo $col ?> col-xs-6">
                        <div class="inner-content">
                           <div class="service-content">
                              <div class="col-md-3 col-sm-3 col-xs-3"><img alt="" src="<?php echo $banner['image'];?>">
                              </div>
                              <div class="service-right col-md-9 col-sm-9 col-xs-9">
                                 <div class="title"><?php echo $banner['title']; ?></div>
                              </div>
                           </div>
                        </div>
                     </div>
                         <?php } ?>
                     <?php } ?>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>



