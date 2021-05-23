<?php echo $header; ?>
<div id="information-information" class="container">
 <ul class="breadcrumb">

      <?php $i=1; foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php if($i==1) { echo '<i class="fa fa-home"></i>'; }?> <?php echo $breadcrumb['text']; ?></a></li>
      <?php $i++; } ?>
   </ul>
 <div class="row">
    <?php echo $column_left; ?>
    <div id="information-contact">
       <div id="content" class="col-sm-12">
          <div class="contact-form-design container">
             <div class="left">
                <div class="address-detail"><img src="<?php echo $logo; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
                <div class="address-detail1">
                   <div class="image"></div>
                   <strong><?php echo $store; ?></strong>
                   <address>
                      <?php echo $address; ?>
                   </address>
                   <?php if ($geocode) { ?>
                    <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                    <?php } ?>
                </div>
                <div class="telephone">
                   <div class="image"></div>
                   <strong><?php echo $text_telephone; ?> </strong>
                   <address><?php echo $telephone; ?>  </address>
                </div>
                <div class="time">
                   <div class="image"></div>
                   <?php if ($open) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $open; ?><br />
                  <br />
                  <?php } ?>
                </div>
                <div class="comment">
                   <div class="image"></div>
                   <?php if ($comment) { ?>
                    <strong><?php echo $text_comment; ?></strong><br />
                    <address><?php echo $comment; ?></address>
                    <?php } ?>
                </div>
             </div>
             <div class="contact-form">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                   <fieldset>
                      <legend><?php echo $text_contact; ?></legend>
                      <div class="form-group required">
                         <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>

                         <div class="col-sm-10">
                            <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                            <?php if ($error_name) { ?>
                          <div class="text-danger"><?php echo $error_name; ?></div>
                          <?php } ?>
                         </div>
                      </div>
                      <div class="form-group required">
                         <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                         <div class="col-sm-10">
                            <input type="text" name="email" value="" id="input-email" class="form-control" />
                            <?php if ($error_email) { ?>
                            <div class="text-danger"><?php echo $error_email; ?></div>
                            <?php } ?>
                         </div>
                      </div>
                      <div class="form-group required">
                         <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                         <div class="col-sm-10">
                            <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                            <?php if ($error_enquiry) { ?>
                            <div class="text-danger"><?php echo $error_enquiry; ?></div>
                            <?php } ?>
                         </div>
                      </div>
                   </fieldset>
                   <div class="buttons">
                      <div class="pull-right">
                         <input class="btn btn-primary captcha-btn" type="submit" value="<?php echo $button_submit; ?>" />
                      </div>
                   </div>
                </form>
             </div>
             <div class="map_button" title="See Map"><i class="fa fa-map-marker"></i></div>
          </div>
          <div class="panel panel-default">
             <div class="panel-body">
                <div class="row contact-info">
                   <div class="right">
                      <div class="map">
                         <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyAOgKBG0SbQowaKmm0GqdJPYsuuDlamDxM'></script>
                         <div id='gmap_canvas' style='height:500px;'></div>
                         <script type = 'text/javascript' >
                            function init_map() {
                              var t='19.166681%2C73.257838'; 
                              var urlString = t.split("%2C");
                                var x,y;
                                x=urlString[0]; y=urlString[1];
                                var myOptions = {
                                  zoom: 12,
                                  center: new google.maps.LatLng(x,y),
                                  mapTypeId: google.maps.MapTypeId.ROADMAP
                              };
                                  map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
                                  marker = new google.maps.Marker({
                                  map: map,
                                  position: new google.maps.LatLng(x,y)
                            });
                                  infowindow = new google.maps.InfoWindow({
                                  content: '<strong>Kartpul Store</strong>'
                            });
                                  google.maps.event.addListener(marker, 'click', function() {
                                  infowindow.open(map, marker);
                            });
                                  infowindow.open(map, marker);
                            }
                                google.maps.event.addDomListener(window, 'load', init_map); 
                         </script>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
      </div>
 </div>
 <?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>

