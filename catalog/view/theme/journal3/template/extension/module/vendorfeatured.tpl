<div class="vendorfeatured module-products-27">
<div class="title-wrapper"><h3><?php echo $heading_title; ?></h3><div class="title-divider"></div>
	</div>
<div class="product-grid">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout  has-zero-price has-extra-button">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="description"><?php echo $product['description']; ?></div>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <div class="rating-stars">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <div class="price">
		 <div>
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
		   </div>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <div class="sellerinfo">
         <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['sellerimage']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
         <div class="seller-detail">
            <h3><?php echo $product['storename']; ?></h3> 
            <?php if ($vendor_hidevname) { ?>
			<h4><a href="<?php echo $product['profile'];?>"><?php echo $product['sellername']; ?></a></h4>
			  <?php } ?>
             <p><?php echo $text_from; ?> <i class="fa fa-home"></i>  <?php echo $product['countryname'];?></p>
         </div>
      </div>
    <div class="buttons-wrapper">
      <div class="button-group">
        <div class="cart-group">
        <a class="btn btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="btn-text"><?php echo $button_cart; ?></span></a>
        </div>
        <div class="wish-group">
        <a class="btn btn-wishlist" data-toggle="tooltip" title="{{ button_wishlist }}" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span class="btn-text"><?php echo $button_wishlist; ?></span></a>
        <a class="btn btn-compare" data-toggle="tooltip" title="{{ button_compare }}" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span class="btn-text"><?php echo $button_compare; ?></span></a>
        </div>
      </div>
    </div>      
    </div>
  </div>
  <?php } ?>
</div>
</div>