<nav id="column-left">
	<ul id="menu">
	     <li id="dashboard"><a href="<?php echo $dashboard; ?>"><i data-toggle="tooltip" title="<?php echo $text_dashboard; ?>" class="fa fa-dashboard fa-fw"></i> <span><?php echo $text_dashboard; ?></span></a></li>
		
		<li id="accountsetting"><a class="parent"><i class="fa fa-cog fw"></i> <span><?php echo $text_accountsetting; ?></span></a>
			<ul>
			  <li><a href="<?php echo $edit_seller; ?>"><?php echo $text_manageseller; ?></a></li>
			  <li><a href="<?php echo $change; ?>"><?php echo $text_change; ?></a></li>
			  <li><a href="<?php echo $store_info; ?>"><?php echo $text_store; ?></a></li>
			</ul>
		</li>
		
		<li  id="orders"><a href="<?php echo $orders; ?>"><i data-toggle="tooltip" title="<?php echo $text_orders; ?>" class="fa fa-shopping-cart" aria-hidden="true"></i><span><?php echo $text_orders; ?></span></a></li>		
		
		 
		<li id="catalog"><a class="parent"><i class="fa fa-tags fw"></i> <span><?php echo $text_catalog; ?></span></a>
			<ul>
			  <li><a href="<?php echo $product; ?>"> <?php echo $text_product; ?></a></li>
			  <li><a href="<?php echo $download; ?>"> <?php echo $text_download; ?></a></li>
			  <li><a href="<?php echo $review; ?>"> <?php echo $text_review; ?></a></li>
			  <li><a href="<?php echo $manufacturer; ?>"> <?php echo $text_manufacturer; ?></a></li>
			  <li><a href="<?php echo $option; ?>"> <?php echo $text_option; ?></a></li>
			  <li><a href="<?php echo $recurring; ?>"> <?php echo $text_recurring; ?></a></li>
			</ul>
		</li>
		
		
		
		<li id="mypayment"><a class="parent"><i class="fa fa-credit-card"></i> <span><?php echo $text_mypayment; ?></span></a>
			<ul>
			  <li><a href="<?php echo $seller_income; ?>"> <?php echo $text_income; ?></a></li>
			  <li><a href="<?php echo $seller_commission; ?>"> <?php echo $text_commission; ?></a></li>
			  <li><a href="<?php echo $shippingrate; ?>"> <?php echo $text_shippingrate; ?></a></li>
			</ul>
		</li>
		
		<li id="attribute"><a class="parent"><i class="fa fa-puzzle-piece fa-fw"></i> <span><?php echo $text_attribute; ?></span></a>
			<ul>
			  <li><a href="<?php echo $attribute; ?>"> <?php echo $text_attribute; ?></a></li>
			  <li><a href="<?php echo $attribute_group; ?>"> <?php echo $text_attribute_group; ?></a></li>
			</ul>
		</li>
		
		<li  id="enquiry"><a href="<?php echo $enquiry; ?>"><i data-toggle="tooltip" title="<?php echo $text_enquiry; ?>" class="fa fa-envelope" aria-hidden="true"></i><span><?php echo $text_enquiry; ?></span></a></li>		
		
		<li id="importexport"><a class="parent"><i class="fa fa-file-excel-o"></i> <span><?php echo $text_importexport; ?></span></a>
			<ul>
			  <li><a href="<?php echo $import; ?>"><?php echo $text_import; ?></a></li>
			  <li><a href="<?php echo $export; ?>"><?php echo $text_export; ?></a></li>
			</ul>
		</li>
	</ul>
</nav>