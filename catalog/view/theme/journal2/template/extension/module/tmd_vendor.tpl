<!--- seller information -->
<?php if(!empty($vendor_ids)) { ?>
<div class="seller-info"> 
  <h2><?php echo $text_sellerinformation; ?></h2>
  <div class="seller-details">
   <div class="row">    
	  <div class="col-sm-12">
		<img class="img-responsive <?php echo $imgeborder; ?>" src="<?php echo $sellerimage; ?>" title="<?php echo $dname; ?>" alt="<?php echo $dname; ?>">	 
		<?php if ($vendor_hidevname) { ?>		
		<h3> <?php echo $text_seller; ?>: <?php echo $dname; ?></h3>	
		 <?php } ?>	
		<p><?php echo $text_from; ?> <i class="fa fa-home"></i> <b><?php echo $countryname; ?></b></p>
		<p><?php echo $text_totalproducts; ?>  <b><?php echo $totalproducts; ?></b></p>
		<div class="btn btn-primary contacbtn">
		<a href="<?php echo $href; ?>"> <?php echo $text_contactseller; ?></a> 
	    </div>
	  </div>
	</div>           
 </div>   
</div> 
<style>
.seller-info h2{background:<?php echo $headingbg; ?>!important;color:<?php echo $textcolor; ?>!important; }
.seller-info .seller-details .contacbtn{background:<?php echo $headingbg; ?>!important;}
.seller-info .seller-details .contacbtn a{color:<?php echo $textcolor; ?>!important;}
.seller-info .seller-details .contacbtn a{color:<?php echo $textcolor; ?>!important;}
</style>
<?php } ?>
<!--- seller information -->
