<?php echo $header; ?>
<!-- breadcrumb start here -->
<div class="bread-crumb">
		<img src="catalog/view/theme/lacasanoua/image/top-bg.jpg" class="img-responsive" alt="banner-top" title="banner-top" />
		<div class="container">
			<div class="matter">
				<ul class="list-inline">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			  </ul>
			<h2><?php echo $heading_title; ?></h2>
			</div>
		</div>
</div>
<!-- breadcrumb end here -->
<div class="account">
	<div class="container">
		<?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
		<div class="row profile"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?> "><?php echo $content_top; ?>
			<div class="col-sm-12 package">
				<h5><?php echo $text_mypro; ?></h5>
			</div>
			<div class="col-sm-12 myproperty">
				<div class="row">
					<?php if(isset($wishlists)) { ?>
				<?php foreach ($wishlists as $wishlist) { ?>
					<div class="col-sm-12 col-xs-12 propert-box" id="removewishlist<?php echo $wishlist['wishlist_id']; ?>">
						<div class="product-thumb">
							<div class="image categorybox">
								<div class="onhover">
									<ul class="list-inline">
										<li><i class="social_youtube" aria-hidden="true"></i></li>
										<li><i class="icon_camera" aria-hidden="true"></i> <?php echo $wishlist['photostotal']; ?></li>
									</ul>
								</div>
								<img src="<?php echo $wishlist['propertyimage']; ?>" class="img-responsive" title="image" alt="image"/>
								<div class="location">
									<i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $wishlist['locations']; ?>
								</div>
							</div>
							<div class="caption des captionbox">
								<div class="topbar1">
									<h5><?php echo $wishlist['pnames']; ?></h5> 
								
									<!--<div class="user pull-left">
										<i class="fa fa-user"></i> <?php echo $agentinfo['fname']; ?> <?php echo $agentinfo['lname']; ?>
									</div>-->
								</div>
								
								<p class="paddleftbox"><?php echo $wishlist['pdescri']; ?></p>
								<div class="price paddleftbox">
									<?php echo $wishlist['pprices']; ?>
								</div>
								<div class="bottom">
									<!--<ul class="list-inline pull-left">
										<li>
										<div class="addthis_toolbox addthis_default_style sharelink" data-url="<?php echo $share; ?>"> <a class="addthis_counter addthis_pill_style"></a></div>
								
										<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
										</li>
										<li><a href="javascript:;" id="wst" onClick="wishlist.add('<?php echo $wishlist['product_id']; ?>')"><i class="icon_heart" aria-hidden="true"></i></a></li>
									</ul>-->
									<div class="pull-right">
										<a href="<?php echo $wishlist['href']; ?>"><button type="button" class="btn btn-primary"><?php echo $text_detailview; ?></button></a>
											<button type="button" rel="<?php echo $wishlist['wishlist_id']; ?>" rel1="removewishlist<?php echo $wishlist['wishlist_id']; ?>"  class="btn btn-danger dltwishlist"><i class="fa fa-trash-o"></i></button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<?php } ?>
			<?php } ?>
				</div>
				<div class="row">
					<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
					<div class="col-sm-6 text-right"><?php echo $results; ?></div>
				</div>
			</div>
	<?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<script>
$('.collapse').on('shown.bs.collapse', function(){
	$(this).parent().find(".fa-angle-down").removeClass("fa-angle-down").addClass("fa-angle-up");
	}).on('hidden.bs.collapse', function(){
	$(this).parent().find(".fa-angle-up").removeClass("fa-angle-plus").addClass("fa-angle-down");
	});
</script>

<script>
	var wstdlt ="<?php echo $wstdlt ?>";
</script>

<script>
$('.dltwishlist').click(function(){
	var wishlist_id = $(this).attr('rel');
	var rel1 = $(this).attr('rel1');
	$.ajax({
	//url:'index.php?route=account/wishlist/deletewst+'&wishlist_id='+wishlist_id,
	url:wstdlt+'&wishlist_id='+wishlist_id,	
	type:'post',
	dataType:'json',
		beforeSend: function() {
	},
	success: function(json) {
		if (json['success']) {
			$('#'+rel1).remove();
		}
	}
});
});	
</script>

<?php echo $footer; ?>
