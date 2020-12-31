<h3><?php echo $heading_title; ?></h3>
<div class="row latest-seller">
  <?php foreach ($vendors as $vendor) { ?>
		<div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="product-thumb transition allseller">
			  <div class="image">
				<a href="<?php echo $vendor['href']; ?>"><img src="<?php echo $vendor['thumb']; ?>" alt="<?php echo $vendor['firstname']; ?>" title="<?php echo $vendor['firstname']; ?>" class="img-responsive" /></a>
				<div class="smalimage hide">
				  <img src="<?php echo $vendor['smallthumb']; ?>" class="img-responsive" />
				</div>
			  </div>
			  <div class="caption">
				<h4><i class="fa fa-home"></i> <?php echo $vendor['storename']; ?></h4>
				<ul class="list-unstyled user-links">
					<?php if ($vendor_hidevname) { ?>
						<li><i class="fa fa-user"></i> <?php echo $vendor['firstname']; ?></li>
				   <?php } ?>	
				   <?php if ($vendor_hidevemail) { ?>
						<li><i class="fa fa-envelope"></i> <?php echo $vendor['email']; ?></li>
				    <?php } ?>	
					<?php if ($vendor_hidevponeno) { ?>
						<li><i class="fa fa-phone"></i> <?php echo $vendor['telephone']; ?></li>
					<?php } ?>	
				</ul>
				<div class="total">
				<?php if ($vendor_hidevsocialicon) { ?>
				  <ul class="list-inline social-icons pull-left">
					<li><a href="<?php echo $vendor['facebookurl'];?>" target="new"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<?php echo $vendor['googleurl'];?>" target="new"><i class="fa fa-google"></i></a></li>
				  </ul>
				<?php } ?>	 
				
				<p><?php echo $text_sellertotal; ?> <span class="label <?php if ($vendor['totalproduct']==0) { ?> label-danger <?php } else { ?>label-success <?php }?> countproduct"><?php echo $vendor['totalproduct']; ?></span>						
				</p>
				</div>
			  </div>
			</div>
		</div>
	<?php } ?>
</div>