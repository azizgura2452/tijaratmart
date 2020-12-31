<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
	  <?php echo $content_top; ?>
      <div class="text-center">
		<h2><?php echo $name; ?></h2>
	  </div>
      <div class="row">
		<div class="col-sm-3">
			<div class="text-center">
				<img class="img-responsive" src="<?php echo $logos; ?>">
			</div>
			<?php if(isset($reviews)) { ?>
			<?php foreach($reviews as $review) { ?>
			<div class="rating">
			  <?php for ($i = 1; $i <= 5; $i++) { ?>
			  <?php if ($review['reviewvalue'] < $i) { ?>
			  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
			  <?php } else { ?>
			  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
			  <?php } ?>
			  <?php } ?>	
			</div>
			<?php } ?>
			<?php } ?>
			<div class="rating">
				<a href="#" target="_blank">Reviews (<?php echo $sellertotal; ?>)</a>
			</div>
			<h3><?php echo $display_name; ?></h3>
			<div class="phone"><i class="fa fa-phone" aria-hidden="true"></i> <?php echo $telephone; ?></div>
			<!--<ul class="list-unstyled">
				<li><a href="#" target="_blank">Return Policy</a></li>
				<li><a href="#" target="_blank">Shipping Policy</a></li>
				<li><a href="#" target="_blank">About Store</a></li>
				<li><a href="#" target="_blank">Contact Seller</a></li>
			</ul>-->
		 </div>
		 <div class="col-sm-9">
			<div class="banner">
				<img src="<?php echo $banners; ?>" alt="banner" title="<?php echo $name; ?>" class="img-responsive" />
			</div>
			<div class="row">
				<div class="col-md-4 col-xs-6">
				  <div class="form-group input-group input-group-sm">
					<label class="input-group-addon" for="input-sort">Sort By:</label>
					<select id="input-sort" class="form-control" onchange="location = this.value;">
						<?php foreach ($sorts as $sorts) { ?>
						<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
						<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
				  </div>
				</div>
				<div class="col-md-3 col-xs-6">
				  <div class="form-group input-group input-group-sm">
					<label class="input-group-addon" for="input-limit">Show:</label>
					<select id="input-limit" class="form-control" onchange="location = this.value;">
						<?php foreach ($limits as $limits) { ?>
						<?php if ($limits['value'] == $limit) { ?>
						<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
				  </div>
				</div>
				<div class="col-md-2 col-sm-6 hidden">
				  <div class="btn-group btn-group-sm">
					<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
					<button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
				  </div>
				</div>
				<div class="col-md-3 col-sm-6 hidden">
				  <div class="form-group">
					<a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
				  </div>
				</div>
			  </div>
			  <div class="row">
				<?php foreach ($products as $product) { ?>
				<div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
				  <div class="product-thumb">
					<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['pimage']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive"></a></div>
					<div>
					  <div class="caption">
						<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
						<!--<p><?php echo $product['description']; ?></p>-->
						<p class="price">
						  <span class="price-new"><?php echo $product['price']; ?></span>
						</p>
						<div class="rating hidden">
						  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
						  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
						  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
						  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
						  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
						</div>
					  </div>
					  <div class="button-group">
						<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md">Add to cart</span></button>
						<button type="button" data-toggle="tooltip" title="Add to wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
						<button type="button" data-toggle="tooltip" title="Compare this product" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
					  </div>
					</div>
				  </div>
				</div>
				<?php } ?>
			 </div>
			 <div class="row">
				<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
				<div class="col-sm-6 text-right"><?php echo $results; ?></div>
			  </div>
		  </div>				
	  </div>
	  <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
