<?php echo $header; ?>
<script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script> 
<div id="container" class="container j-container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
	 <?php if ($error_warning) { ?>
  <div class="alert alert-danger warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?><?php echo $column_right; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> vendor_profile"><?php echo $content_top; ?>
		<div class="cover-main">
			<img src="<?php echo $banners; ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>" class="img-responsive" />
			<div class="xs-100 sm-100 md-100 lg-100 xl-100 profile">
			  <div class="image">
				<img src="<?php echo $images; ?>" class="img-responsive" alt="profile" title="profile" />
			  </div>
			  <div class="detail">	
				<?php if ($vendor_hidevname) { ?>
				<h4><?php echo $display_name; ?></h4>
				<?php } ?>
				<!--03 10 2019 -->
					<div class="rating">
						<?php for ($i = 1; $i <= 5; $i++) { ?>
							<?php if ($reviewvalue < $i ) { ?>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } else { ?>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } ?>	
						<?php } ?>	
					</div>
                <!--03 10 2019 -->
                <?php if($vendorcontact) { ?>     
				<ul class="list-inline">
					<?php if ($vendor_hidevponeno) { ?>
					<li><i class="fa fa-phone"></i> <?php echo $telephone; ?></li>
					<?php } ?>	
					<?php if ($vendor_hidevemail) { ?>
                    <li><i class="fa fa-envelope-o"></i> <a class="vendoremail" href="mailto:<?php echo $email; ?>" target="_top"><?php echo $email; ?></a></li>
					<?php } ?>	
				  </ul>
                <?php } ?>
				<?php if ($vendor_hidevsocialicon) { ?>		
					<ul class="list-unstyled btn-social">
						<li>
							<?php if($facebookurl) { ?>
							<a href="<?php echo $facebookurl; ?>" target="new"><i class="fa fa-facebook"></i></a>
							<?php } ?>
							<?php if($googleurl) { ?>
							<a href="<?php echo $googleurl; ?>" target="new"><i class="fa fa-google"></i></a>
							<?php } ?>
						
						 <?php if($vendorcontact) { ?>       
							<?php if($vendorfindme) { ?>
							<a href="<?php echo $vendorfindme?>" target="new"><i class="fa fa-map-marker" aria-hidden="true"></i></a>
							<?php } ?>
							<?php } ?>
						</li>
					</ul> 
				<?php } ?>
			   </div>
				<div class="onhover">
				<img src="<?php echo $logos; ?>" class="img-responsive" title="logo" alt="logo" />
				</div>
			 </div>
        </div>
        <div class="row">
            <div class="xs-100 sm-100 md-100 lg-100 xl-100">
                <ul id="tabs" class="nav nav-tabs htabs">
                    <li class="active">
                        <a href="#profiles" data-toggle="tab" aria-expanded="true"><span><i class="fa fa-user"></i></span><?php echo $text_profile; ?></a>
                    </li>
                    <li class="">
                        <a href="#about" data-toggle="tab" aria-expanded="false"><span><i class="fa fa-comment"></i></span><?php echo $text_about; ?></a>
                    </li>
                    <li class="">
                        <a href="#products" data-toggle="tab" aria-expanded="false"><span><i class="fa fa-copy"></i></span> <?php echo $text_products; ?> (<?php echo $totals; ?>)</a>
                    </li>
                    <li class="">
                        <a href="#review" data-toggle="tab" aria-expanded="false"><span><i class="fa fa-comment"></i></span><?php echo $text_reviews ?> <?php echo $sellertotal; ?></a>
                    </li>
                    <li class="">
                        <a href="#reviews" data-toggle="tab" aria-expanded="false"><span><i class="fa fa-archive"></i></span><?php echo $text_pro_reviews; ?> <?php echo $producttotal; ?></a>
                    </li>
                </ul>  
		<div class="tabs-content">
			<div class="tab-pane tab-content active" id="profiles">
				<div class="row"><p><?php echo $about; ?></p></div>
			</div>
            <!-- 29-1-2019 new code -->
			<div class="tab-pane tab-content" id="about">
				<div class="aboutmodule">
					<ul class="nav nav-tabs list-inline">
						<li class="active">
	                   		<a href="#aboutstore" data-toggle="tab" aria-expanded="true"><?php echo $text_aboutstore; ?></a>
	                   	</li>
						<?php if(!empty($storedescription)){ ?>
	                   	<li>
	                       	<a href="#storedesc" data-toggle="tab" aria-expanded="false"><?php echo $text_storedescrption; ?></a>
	                   	</li>
						<?php } ?> 
						<?php if(!empty($shipping_policy)){ ?>
	                   	<li>
	                       	<a href="#shippingpolicy" data-toggle="tab" aria-expanded="false"><?php echo $text_storeshipingpolicy; ?></a>
	                    </li>
						<?php } ?>
						<?php if(!empty($return_policy)){ ?>
	                    <li>
	                    	<a href="#returnpolicy" data-toggle="tab" aria-expanded="false"><?php echo $text_storereturnpolicy; ?></a>
	                    </li>
						<?php } ?>
	                </ul>
	                <div class="tabs-content">
	                	<div class="tab-pane tab-content active" id="aboutstore">
							<p><?php echo $store_about; ?></p>
						</div>
						<div class="tab-pane tab-content" id="storedesc">
							<p><?php echo $storedescription; ?></p>
						</div>
						<div class="tab-pane tab-content" id="shippingpolicy">
							<p><?php echo $shipping_policy; ?></p>
						</div>
						<div class="tab-pane tab-content" id="returnpolicy">
							<p><?php echo $return_policy; ?></p>
						</div>	
					</div>
				</div>
			</div>
			<!-- 29-1-2019 new code -->
			<div class="tab-pane tab-content" id="products">
             
              <div class="row paddleft">
                  <aside id="column-left" class="hidden-xs">		
                      <div class="list-group">				
						<ul class="treeview-list treeview">
							<?php if(isset($categories)) { ?>
							<?php foreach ($categories as $category) { ?>
							<?php if(!empty($category['category_id'])){ ?>
							<li class="active">
							 <?php if ($category['category_id'] == $category_id) { ?>
							<a style="cursor:pointer" rel="<?php echo $catevendor_id; ?>" class="active load-category" rel1="<?php echo $category['category_id']; ?>"><?php echo $category['categoryname']; ?> </a>
							 <?php } else { ?>
							 <a style="cursor:pointer" rel="<?php echo $catevendor_id; ?>"  class="active load-category" rel1="<?php echo $category['category_id']; ?>"><?php echo $category['categoryname']; ?> </a>
							  <?php } ?>
							<?php if ($category['children']) { ?>
								<ul>
								  <?php foreach ($category['children'] as $child) { ?>
								   <!-- 29-1-2020 new code-->
									  <li class="collapsable">
									  <!-- 29-1-2020 new code-->
										<?php if ($child['category_id'] == $child_id) { ?>
											<a style="cursor:pointer" class="active load-subcategory" rel="<?php 	echo $catevendor_id; ?>" subcatrel="<?php echo $child['category_id']; ?>" ><?php echo $child['name']; ?></a>
											<?php } else { ?>
												<a style="cursor:pointer" class="load-subcategory" rel="<?php echo $catevendor_id; ?>" subcatrel="<?php echo $child['category_id']; ?>"><?php echo $child['name']; ?></a>
											<?php } ?>												
											<?php if ($child['children1']) { ?>
												<ul class="sub3">
												  <?php foreach ($child['children1'] as $child1) { ?>
												  <li>
													<?php if ($child1['category_id']=='child_id1') { ?>		
													<a style="cursor:pointer" class="active load-subcategory" rel="<?php echo $catevendor_id; ?>" subcatrel="<?php echo $child1['category_id']; ?>" ><?php echo $child1['name']; ?></a>
													<?php } else { ?>
													<a style="cursor:pointer" class="load-subcategory" rel="<?php echo $catevendor_id; ?>" subcatrel="<?php echo $child1['category_id']; ?>"><?php echo $child1['name']; ?></a>
													<?php } ?>	
												  </li>
												 <?php } ?>	
												</ul>
											<?php } ?>	
										</li>	
								  <?php } ?>
								</ul>
								<?php } ?>
		
							<?php } } ?>							
							<?php }?>							
						</ul>	
                        </div>
					</aside>
                  <!-- 26 06 2019 replace div-->
					<?php if($categories) { ?>
					 <div id="content">
					<?php } else { ?>	
					 <div class="content" style="margin-left:0px;">
					<?php } ?>	
					<!-- 26 06 2019 -->
                 
                        <div class="product-filter">
                           <div class="display">
                           <a onclick="Journal.gridView()" class="grid-view"><?php echo $this->journal2->settings->get("category_grid_view_icon"); ?></a>
                            <a onclick="Journal.listView()" class="list-view"><?php echo $this->journal2->settings->get("category_list_view_icon"); ?></a>
                           </div>
                           <div class="sort"><b>Sort By:</b>
                            <select id="input-sort" name="sortorder">
                                <?php foreach ($sorts as $sorts) { ?>
                                <option value="<?php echo $sorts['value']; ?>"><?php echo $sorts['text']; ?></option>
                                <?php } ?>	
                            </select>
                          </div>
                           <div class="limit"><b>Show:</b>
                            <select id="input-limit" name="showlimit">
                                <?php foreach ($limits as $limits) { ?>	<option value="<?php echo $limits['value']; ?>"><?php echo $limits['text']; ?></option>	<?php } ?>
                            </select>
                          </div>
                        </div>
                        <div class="loadcate">
							<!-- 01-07-2019 remove and update code -->
							<div id="vendorproduct"></div>
							<!-- 01-07-2019 remove and update code -->
						</div>
					</div>
				</div>
			</div>
            
			<div class="tab-pane tab-content" id="review">
                <!-- update code 10-1-2019 -->
				<p><?php echo $text_loginplz; ?></p>
				<!-- update code 10-1-2019 -->
				<?php if($customerloggin) { ?>
				<div class="text-right" style="text-align:right">
					<?php if($customerloggin != $ids && $vendorids != $vids) { ?>
					<button class="button" type="button" data-toggle="modal" data-target="#myModal"><?php echo $text_write; ?></button>
					<?php } ?>
				</div>
				<?php } ?>

				<?php if(!empty($field_infos)) { ?>
				<?php foreach($field_infos as $field_info) { ?>
            <div class="review-box row">
              <div class="xs-100 sm-60 md-66 lg-66 xl-66">
				<ul class="list-inline link">
					<li><i class="fa fa-user"></i> <?php echo $field_info['cnames']; ?></li>
					<li><i class="fa fa-calendar"></i> <?php echo $field_info['date_added']; ?></li>
				</ul>
                 <p><?php echo $field_info['reviewtext']; ?></p>
              </div>
              <div class="xs-100 sm-40 md-33 lg-33 xl-33">
				<ul class="list-unstyled value">
					<li>
						<?php if(isset($field_info['ratings'])) { ?>
						<?php foreach($field_info['ratings'] as $sellerrating) { ?>
						<div class="rating">
							<?php echo $sellerrating['field_name']; ?> :
							<?php for ($i = 1; $i <= 5; $i++) { ?>
							<?php if ($sellerrating['value'] < $i) { ?>
							<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } else { ?>
							<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } ?>
							<?php } ?>
						</div>
						<?php } ?>
						<?php } ?>
					</li>
				</ul>
               	</div>		
              </div>		
			  <?php } ?>
			 <?php } ?>
			</div>
			<div class="tab-pane tab-content" id="reviews">
				<?php if(isset($sellerreviews)) { ?>
				<?php foreach($sellerreviews as $sellerreview) { ?>
            <div class="review-box row">
               <div class="xs-100 sm-60 md-66 lg-66 xl-66"> 
				<ul class="list-inline link">
					<li><i class="fa fa-user"></i> <?php echo $sellerreview['author']; ?></li>
					<li><i class="fa fa-calendar"></i> <?php echo $sellerreview['date_added']; ?></li>
				</ul>
                <h4><a href="<?php echo $sellerreview['href']; ?>"><?php echo $sellerreview['names']; ?></a></h4>
                <p><?php echo $sellerreview['text']; ?></p>
              </div>
             <div class="xs-100 sm-40 md-33 lg-33 xl-33">
				<ul class="list-unstyled value">
					<li>
						<div class="rating">
							<?php echo $text_rating; ?>
							<?php for ($i = 1; $i <= 5; $i++) { ?>
							<?php if ($sellerreview['rating'] < $i) { ?>
							<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } else { ?>
							<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } ?>
							<?php } ?>
						</div>
						
					</li>
				</ul>
                </div>
                </div>
				<?php } ?>
				<!-- update code 10-1-2019-->
				<?php } else { ?>
				<p><?php echo $text_proreview; ?></p>
				<?php } ?>

			</div>
		</div>		
		  </div>
		</div>		
      <?php echo $content_bottom; ?></div>
	 </div>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><?php echo $text_write; ?></h4>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" id="form-review">
		  <input type="hidden" value="<?php echo $customer_id; ?>" name="customer_id" class="form-control"/>
		  <input type="hidden" value="<?php echo $vendor_id; ?>" name="vendor_id" class="form-control"/>
			<div class="form-group required">
				<div class="col-sm-12">
					<label class="col-sm-2 control-label" for="input-name"><?php echo $text_name; ?></label>
                    <div class="col-sm-10">
					<input type="text" value="<?php echo $customername; ?>" disabled class="form-control"/>
                    </div>
				</div>
			</div>	
			<div class="form-group required">
				<div class="col-sm-12">
					<label class="col-sm-2 control-label" for="input-review"><?php echo $text_comment; ?></label>
                    <div class="col-sm-10">
					<textarea type="text" name="text" rows="4" id="input-review" class="form-control"></textarea>
					<div class="help-block">
						<span class="text-danger">Note:</span> HTML is not translated!</div>
                    </div>
				</div>
			</div>
			<?php if(isset($review_fields)){ ?>
			<?php foreach($review_fields as $field){ ?>
			<div class="form-group required">
				<div class="col-sm-12">
					<label class="col-sm-2 control-label"><?php echo $field['field_name']; ?>:</label>
					&nbsp;&nbsp;&nbsp; Bad&nbsp;
					<input name="reviewfield[<?php echo $field['rf_id']; ?>]" value="1" type="radio">
					&nbsp;
					<input name="reviewfield[<?php echo $field['rf_id']; ?>]" value="2" type="radio">
					&nbsp;
					<input name="reviewfield[<?php echo $field['rf_id']; ?>]" value="3" type="radio">
					&nbsp;
					<input name="reviewfield[<?php echo $field['rf_id']; ?>]" value="4" type="radio">
					&nbsp;
					<input name="reviewfield[<?php echo $field['rf_id']; ?>]" value="5" type="radio">
					&nbsp;Good
				</div>
			</div>
			<?php } ?>
			<?php } ?>
		  </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $button_close; ?></button>
		  <button type="button" class="btn btn-primary reviews" rel="<?php echo $vendor_id; ?>" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_send; ?></button>
        </div>
      </div>
      
    </div>
  </div>
 <input type="hidden" value="0" name="category_id" id="category_id">
<script>
	$('.reviews').click(function(){
			 var vendor_id = $(this).attr('rel');
		$.ajax({
		url: 'index.php?route=vendor/vendor_profile/review&vendor_id='+vendor_id,
		data: $('#form-review input[type=\'text\'], #form-review input[type=\'hidden\'], #form-review input[type=\'radio\']:checked, #form-review textarea'),
		type:'post',
		
		beforeSend: function() {
				$('.reviews').button('loading');
			},
			complete: function() {
				$('.reviews').button('reset');
			},
		
		success: function(json) {
			$('.alert, .text-danger1').remove();
			
			if (json['error']) {
				$('#input-review').after('<div class="alert text-danger1">' + json['error'] + '</div>');
						
			$('.warning').fadeIn('slow');
			}
				
			if (json['success']) {
				if (json['success']) {
					   setTimeout(function(e){ $('.close').trigger('click');location.reload();},1000);
					$('input[name=text]').val('');
					$('input[name=\'rating\']:checked').prop('checked', false);
				}
			}

			

		}
	});
	});

// Load category
	/* 01-07-2019 update path all code */	
	$(document).on('click', '.load-category',function(){
		category_id=$(this).attr('rel1');	
		vendor_id=$(this).attr('rel');	
		$('#category_id').val(category_id);
		$('.loadcate').load('index.php?route=vendor/vendor_profile/loadcategory&vendor_id='+vendor_id+'&category_id='+category_id);	
				
		});	
	$(document).on('click', '.load-subcategory',function(){
		category_id=$(this).attr('subcatrel');	
		vendor_id=$(this).attr('rel');	
		$('#category_id').val(category_id);
		$('.loadcate').load('index.php?route=vendor/vendor_profile/loadcategory&vendor_id='+vendor_id+'&category_id='+category_id);	
				
		});	
		
	// Load Sort Order	
	$('select[name=\'sortorder\']').on('change', function() {	
		sortrel=$('#input-sort').val();	
		relcate=$('#category_id').val();		
		$('.loadcate').load('index.php?route=vendor/vendor_profile/loadcategory&category_id='+relcate+'&'+sortrel);					
		});	
		
		
	// Load Show Limit
	$('select[name=\'showlimit\']').on('change', function() {	
		limitrel=$('#input-limit').val();	
		relcate=$('#category_id').val();		
		$('.loadcate').load('index.php?route=vendor/vendor_profile/loadcategory&category_id='+relcate+'&'+limitrel);					
	});	
	
	/* 01-07-2019 start */
		$('.loadcate').delegate('.pagination a', 'click', function(e) {
		e.preventDefault();

		$('.loadcate').fadeOut('slow');

		$('.loadcate').load(this.href);

		$('.loadcate').fadeIn('slow');
	});
	/* 01-07-2019 end */

	$('#follows').click(function(){
		$.ajax({
			url: 'index.php?route=vendor/vendor_profile/follow',
			type:'post',
			dataType:'json',
			data: $('.addfollow input[type=\'hidden\']'),
			beforeSend: function() {

			},
			success: function(json) {
				if (json['success']) {
					
				}
			setTimeout(function(e){ $('.close').trigger('click');location.reload();},500);
			}
		});
	});

	// img delete
	$('#delfollow').click(function(){
		var vendor_id = $(this).attr('rel');
		$.ajax({
		url: 'index.php?route=vendor/vendor_profile/delfollow&vendor_id='+vendor_id,
		type:'post',
		dataType:'json',
			beforeSend: function() {
		},
		success: function(json) {
			if (json['success']) {
										
			}
			setTimeout(function(e){ $('.close').trigger('click');location.reload();},500);
		}
	});
	});
	Journal.gridView1 = function () {
		var classes = $('.main-products').removeClass('product-list').addClass('product-grid').attr('data-grid-classes');
		$('.main-products .product-grid-item, .main-products .product-list-item').each(function () {
			$(this).attr('class','product-grid-item xs-100 sm-50 md-33 lg-33 xl-33');
		});
		$('.product-thumb').addClass('product-wrapper');
		if(!Journal.isFlexboxSupported) {
			Journal.equalHeight($(".product-thumb.product-wrapper"), '.description');
		}
		$('.display .grid-view').addClass('active');
		$('.display .list-view').removeClass('active');
		localStorage.setItem('display', 'grid');
	   
	};	
</script>

<!-- 01-07-2019 -->
<script type="text/javascript"><!--
	$('#vendorproduct').delegate('.pagination a', 'click', function(e) {
		e.preventDefault();

		$('#vendorproduct').fadeOut('slow');

		$('#vendorproduct').load(this.href);

		$('#vendorproduct').fadeIn('slow');
	});

	$('#vendorproduct').load('index.php?route=vendor/vendor_profile/vendorproduct&vendor_id=<?php echo $vendor_id; ?>');
//--></script> 
<!-- 01-07-2019 -->
<style>
.quickview-button{display: none !important;}
.hasCustomSelect{
    -moz-appearance: menulist !important;
    width: auto !important;
    position: relative !important;
    opacity: 1 !important;
    height: auto !important;
    font-size: 13px !important;
}
.customSelect{
    display: none !important;
}
.oc2 #myModal .form-horizontal .form-group label + div{
    width: 65%;
    float: left;
}
#form-review > div:nth-last-child(2) > div > *{margin:0 !important;}
</style>
<!--03-09-2019-->
<?php if(!empty($vendorchat_id)){ ?>
	<script type="text/javascript">
		var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
		(function(){
		var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
		s1.async=true;
		s1.src='https://embed.tawk.to/<?php echo $vendorchat_id; ?>/default';
		s1.charset='UTF-8';
		s1.setAttribute('crossorigin','*');
		s0.parentNode.insertBefore(s1,s0);
		})();
	</script>
<?php } ?>
<!--03-09--2019-->
<?php echo $footer; ?>