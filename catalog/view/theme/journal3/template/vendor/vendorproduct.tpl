<div class="main-products product-<?php echo $j3->settings->get('globalProductView'); ?>">
	<?php foreach ($products as $product) { ?>
		<div class="product-layout">
			<div class="product-thumb">
				<div class="image">
					<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['pimage']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive"></a>
				</div>
				<div class="caption">
					<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
					<div class="description"><?php echo $product['description']; ?></div>
					<div class="rating">
						 <div class="rating-stars">
						<?php for ($i = 1; $i <= 5; $i++) { ?>
						<?php if ($product['ratings'] < $i) { ?>
						<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
						<?php } else { ?>
						<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
						<?php } ?>
						<?php } ?>
					</div>
				</div>
				<?php if ($product['price']) { ?>
				<p class="price">
				  <?php if (!$product['special']) { ?>
				  <?php echo $product['price']; ?>
				  <?php } else { ?>
				  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
				  <?php } ?>
				  <?php if ($product['tax']) { ?>
				  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
				  <?php } ?>
				</p>
				<?php } ?>
				 </div>
				<div class="buttons-wrapper">
				 <div class="button-group">
					 <div class="cart-group">
						<a class="btn btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="btn-text"><?php echo $button_cart; ?></span></a>
					  </div>
					 <div class="wish-group">
						<a class="btn btn-wishlist" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="btn-text"><?php echo $button_wishlist; ?></span></a>
						<a class="btn btn-compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="btn-text"><?php echo $button_compare; ?></span></a>
					  </div>
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