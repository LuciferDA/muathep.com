<?php echo $header; ?>
<div id="information-information" class="container">
 <ul class="breadcrumb">

      <?php $i=1; foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php if($i==1) { echo '<i class="fa fa-home"></i>'; }?> <?php echo $breadcrumb['text']; ?></a></li>
      <?php $i++; } ?>
   </ul>
 <div class="row">
    <?php echo $column_left; ?>
    <div id="content" class="col-sm-9">
       <h1 class="page-title"><?php echo $heading_title; ?></h1>
       <div class="aboutus">
          <?php echo $description; ?>
       </div>

    </div>
 </div>
 <?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>