<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
          <div class="row">
            <?php foreach ($vendors as $vendor) { ?>
              <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="product-thumb transition allseller">
                  <div class="image">
                    <a href="<?php echo $vendor['href']; ?>"><img src="<?php echo $vendor['thumb']; ?>" alt="<?php echo $vendor['firstname']; ?>" title="<?php echo $vendor['firstname']; ?>" class="img-responsive" /></a>
				  <div class="smalimage">
					  <img src="<?php echo $vendor['smallthumb']; ?>" class="img-responsive" />
				  </div>
                  </div>
                  <div class="caption">
                   
                       <!--19 02 2020-->
						<p><?php echo $text_sellertotal; ?> <span class="label <?php if ($vendor['totalproduct']==0) { ?> label-danger <?php } else { ?>label-success <?php }?> countproduct"><?php echo $vendor['totalproduct']; ?></span>						
						</p>
						<!--19 02 2020-->
						
					  <h4><a href="<?php echo $vendor['href']; ?>"><i class="fa fa-home"></i>  <?php echo $vendor['storename']; ?></a></h4>
                    <ul class="list-unstyled user-links">
                      <?php if ($vendor_hidevname) { ?><li><i class="fa fa-user"></i> <?php echo $vendor['firstname']; ?></li> <?php } ?>
                       <?php if ($vendor_hidevemail) { ?><li><i class="fa fa-envelope"></i> <?php echo $vendor['email']; ?></li><?php } ?>
                       <?php if ($vendor_hidevponeno) { ?><li><i class="fa fa-phone"></i> <?php echo $vendor['telephone']; ?></li><?php } ?>
                    </ul>
					<?php if ($vendor_hidevsocialicon) { ?>
                    <ul class="list-inline social-icons">
                      <li><a href="<?php echo $vendor['facebookurl'];?>" target="new"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="<?php echo $vendor['googleurl'];?>" target="new"><i class="fa fa-google"></i></a></li>
                    </ul>
					<?php } ?>
                  </div>
                </div>
              </div>
            <?php } ?>
          </div> 

          <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>     
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>