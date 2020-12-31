<div class="row main-products product-grid" data-grid-classes="<?php echo $this->journal2->settings->get('product_grid_classes'); ?> xs-100 sm-50 md-33 lg-33 xl-33">
	<?php foreach ($products as $product) { ?>
		<!-- 26 06 2019 replace div-->
		<?php if($categories) { ?>
		<div class="product-grid-item <?php echo $this->journal2->settings->get('product_grid_classes'); ?> xs-100 sm-50 md-33 lg-33 xl-33">
		 <?php } else { ?>	
		<div class="product-grid-item <?php echo $this->journal2->settings->get('product_grid_classes'); ?> xs-100 sm-50 md-25 lg-25 xl-25">
		 <?php } ?>	
		<!-- 26 06 2019 replace div-->
		  <div class="product-thumb product-wrapper">
				<div class="image">
					<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['pimage']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive"></a>
				</div>
				<div class="product-details">
					<div class="caption">
						<h4 class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
						<p class="description"><?php echo $product['description']; ?></p>
						<?php if ($product['ratings']) { ?>
						<div class="rating">
							<?php for ($i = 1; $i <= 5; $i++) { ?>
							<?php if ($product['ratings'] < $i) { ?>
							<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } else { ?>
							<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } ?>
							<?php } ?>
						</div>
						<?php } ?>
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
					 <div class="button-group">
					   <div class="cart">
						 <a onclick="addToCart('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="button hint--top" data-hint="<?php echo $button_cart; ?>"><i class="button-left-icon"></i><span class="button-cart-text"><?php echo $button_cart; ?></span><i class="button-right-icon"></i></a>
					   </div>
					   <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_wishlist; ?>"><i class="wishlist-icon"></i><span class="button-wishlist-text"><?php echo $button_wishlist;?></span></a></div>
					   <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_compare; ?>"><i class="compare-icon"></i><span class="button-compare-text"><?php echo $button_compare;?></span></a></div> 
					 </div>
				 </div>
			</div>
		</div>
	<?php } ?>
	<div class="row pagination">
	<div class="col-sm-6 text-left links"><?php echo $pagination; ?></div>
	<div class="col-sm-6 text-right results"><?php echo $results; ?></div>
	</div>
</div>
