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
    <div id="content" class="<?php echo $class; ?> findme"><?php echo $content_top; ?>
      <h3><?php echo $heading_title; ?></h3>
      <div class="findlogo">
		<img src="<?php echo $logos; ?>" class="img-responsive" title="logo" alt="logo" />
	  </div>
      <ul class="list-unstyled">
        <?php if(isset($company)) { ?>
        <li><div class="label"><?php echo $text_companyname; ?></div>  <?php echo $company; ?> </li>
        <?php } ?>
        
        <li><div class="label"><?php echo $text_rating; ?></div>
          <?php foreach($reviews as $review) { ?>
          <span class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($review['rating_avg'] < $i ) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>  
          </span>
        <?php } ?>
        </li>
			<?php if ($vendor_hidevname) { ?>
			  <?php if(isset($display_name)) { ?>
				<li><div class="label"><?php echo $text_contactname; ?></div>  <?php echo $display_name; ?> </li>
			  <?php } ?>
          <?php } ?>
			<?php if ($vendor_hidevponeno) { ?>
			  <?php if(isset($telephone)) { ?>
			  <li><div class="label"><?php echo $text_telephone; ?></div>  <?php echo $telephone; ?> </li>
			  <?php } ?>
          <?php } ?>
          <?php if(isset($fax)) { ?>
          <li><div class="label"><?php echo $text_fax; ?></div>  <?php echo $fax; ?> </li>
          <?php } ?>
         
          
          <li><div class="label"><?php echo $text_location; ?></div>  <?php echo $country; ?> (<?php echo $city; ?>)</li>
       
        <?php if ($vendor_hidevemail) { ?>
			  <?php if(isset($email)) { ?>
			  <li><div class="label"><?php echo $text_email; ?></div>  <?php echo $email; ?> </li>
			  <?php } ?>
        <?php } ?>
          
          <?php if(isset($address)) { ?>
          <li><div class="label"><?php echo $text_address; ?></div>  <?php echo $address; ?> </li>
          <?php } ?>
           <?php if(isset($city)) { ?>
          <li><div class="label"><?php echo $text_city; ?></div>  <?php echo $city; ?> </li>
          <?php } ?>
          
          <?php if(isset($country)) { ?>
          <li><div class="label"><?php echo $text_country; ?></div>  <?php echo $country; ?> </li>
          <?php } ?>
          
          <?php if(isset($zone)) { ?>
          <li><div class="label"><?php echo $text_zone; ?></div>  <?php echo $zone; ?> </li>
          <?php } ?>
          
          
          <?php if(isset($postcode)) { ?>
          <li><div class="label"><?php echo $text_postcode; ?></div>  <?php echo $postcode; ?> </li>
          <?php } ?>
      </ul> 
        
        <div class="map">
			  <?php if($map_url) { ?>
				<?php echo $map_url; ?>
              <?php } else { ?>
               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d219104.85983086875!2d75.71658808151895!3d30.90026973769041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a837462345a7d%3A0x681102348ec60610!2sLudhiana%2C+Punjab!5e0!3m2!1sen!2sin!4v1482266274532"></iframe>
			  <?php } ?> 
       </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
