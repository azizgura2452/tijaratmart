<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
   <?php if ($filedwarning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $filedwarning; ?>  <button type="button" class="close" data-dismiss="alert">&times;</button></div><br/>
  <?php } ?>
  
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row">
    <?php if ($column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
		<h1><?php echo $heading_title; ?></h1>
      	<p><?php echo $text_account_already; ?></p>
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
		<legend><?php echo $tab_seller; ?></legend>
        <div class="col-sm-12 col-xs-12">
			<div class="row">
				<div class="form-group required">        
					<div class="col-sm-4">
					   <label for="input-display_name"  class="control-label"><?php echo $entry_display_name; ?></label>
					   <input type="text" name="display_name" value="<?php echo $display_name; ?>" placeholder="<?php echo $entry_display_name; ?>" id="input-display_name" class="form-control" />
					   <?php if ($error_display_name) { ?>
						<div class="text-danger"><?php echo $error_display_name; ?></div>
						<?php } ?>
					</div>
					<div class="col-sm-4">
					   <label for="input-firstname" class="control-label"><?php echo $entry_firstname; ?></label>
					   <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
					   <?php if ($error_firstname) { ?>
						<div class="text-danger"><?php echo $error_firstname; ?></div>
						<?php } ?>
					</div>
					<div class="col-sm-4">
					   <label for="input-lastname"  class="control-label"><?php echo $entry_lastname; ?></label>
					   <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
						<?php if ($error_lastname) { ?>
						<div class="text-danger"><?php echo $error_lastname; ?></div>
						<?php } ?>
					</div>
				 </div>
			</div>
			
			<div class="row">
				<div class="form-group required">    
					<div class="col-sm-4">
						<label for="input-email"  class="control-label"><?php echo $entry_email; ?></label>
						<input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
						<?php if ($error_email) { ?>
						<div class="text-danger"><?php echo $error_email; ?></div>
						<?php } ?>
					</div>
					
					<div class="col-sm-4">
				    <label for="input-telephone" class="control-label"><?php echo $entry_telephone; ?></label>
				    <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
					<?php if ($error_telephone) { ?>
					<div class="text-danger"><?php echo $error_telephone; ?></div>
					<?php } ?>
				    </div>
					
				    <div class="col-sm-4">
					 <label for="input-fax" class="control-label"><?php echo $entry_fax; ?></label>
					  <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
				    </div>
				</div>
			</div>
					
			<div class="row">
				<div class="form-group required">        
				    <div class="col-sm-4">
					   <label for="input-company" class="control-label"><?php echo $entry_company; ?></label>
					   <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
				    </div>
					
				    <div class="col-sm-4">
						<label for="input-address-1" class="control-label"><?php echo $entry_address_1; ?></label>
						<input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
						<?php if ($error_address_1) { ?>
						  <div class="text-danger"><?php echo $error_address_1; ?></div>
						<?php } ?>
				    </div>
					
					<div class="col-sm-4">
					   <label for="input-address-2" class="control-label"><?php echo $entry_address_2; ?></label>
					   <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-address-2" class="form-control" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group required">			
				 
				
				</div>
			</div>
			
			<div class="row">
				<div class="form-group required">  
					<div class="col-sm-4">
					   <label for="input-city" class="control-label"><?php echo $entry_city; ?></label>
					   <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city" class="form-control" />
					   <?php if ($error_city) { ?>
					   <div class="text-danger"><?php echo $error_city; ?></div>
					   <?php } ?>
					</div>	
				
				<div class="col-sm-4">
				   <label for="input-country" class="control-label"><?php echo $entry_country; ?></label>
				   <select name="country_id" id="input-country" class="form-control">
					<option value=""><?php echo $text_select; ?></option>
					<?php foreach ($countries as $country) { ?>
					<?php if ($country['country_id'] == $country_id) { ?>
					<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
					<?php } ?>
					<?php } ?>
					</select>
					<?php if ($error_country) { ?>
					<div class="text-danger"><?php echo $error_country; ?></div>
					<?php } ?>
				 </div>
				 <div class="col-sm-4">
				   <label for="input-zone" class="control-label"><?php echo $entry_zone; ?></label>
				   <select name="zone_id" id="input-zone" class="form-control">
				   </select>
				   <?php if ($error_zone) { ?>
					<div class="text-danger"><?php echo $error_zone; ?></div>
					<?php } ?>
				  </div>
				</div>
			</div>
			
			<div class="row">
				<!--14-06-2019 start -->
				<div class="form-group">					
					 <div class="col-sm-4 <?php if ($chkpostcode==1) { ?>required <?php } ?>">
					   <label for="input-postcode" class="control-label"><?php echo $entry_postcode; ?></label>
					   <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />
						  <?php if ($chkpostcode==1) { ?>
							  <?php if ($error_postcode) { ?>
								<div class="text-danger"><?php echo $error_postcode; ?></div>
							  <?php } ?>
						 <?php } ?>
					 </div> 					
				</div>
				<!--14-06-2019 start -->
				
				<div class="form-group required">			
					 <div class="col-sm-4">
					   <label for="input-password" class="control-label"><?php echo $entry_password; ?></label>
					   <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
					   <?php if ($error_password) { ?>
						<div class="text-danger"><?php echo $error_password; ?></div>
					   <?php } ?>
					 </div>
					 <div class="col-sm-4">
					   <label for="input-confirm" class="control-label"><?php echo $entry_confirm; ?></label>
					   <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
						<?php if ($error_confirm) { ?>
						<div class="text-danger"><?php echo $error_confirm; ?></div>
						<?php } ?>
					  </div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group required">
				 <div class="col-sm-8">
				   <label for="input-about"><?php echo $entry_about; ?></label>
				   <textarea type="text" name="about" value="<?php echo $about;?>" placeholder="<?php echo $entry_about; ?>" id="input-about" class="form-control" ></textarea>
				 </div>
				 <div class="col-sm-4">
				   <label for="input-logo"><?php echo $entry_image;?></label>
				   <div class="imagebox">
					<span id="thumb-image"><img src="<?php echo $thumb; ?>" alt="" title="" height="120" width="120" class="thumb"/></span>				   
				   <button type="button" id="button-upload" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
				   <input type="hidden" name="image" value="<?php echo $image;?>" id="input-image" />
					</div>
				  </div>
				</div>
			</div>		
		
			<div class="row"><legend><?php echo $tab_generalstore; ?></legend>
				 <ul class="nav nav-tabs" id="language">
				 <?php foreach ($languages as $language) { ?>
				 <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
				 <?php } ?>
				</ul> 
				<div class="tab-content">
				<?php foreach ($languages as $language) { ?>
				 <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
					 <div class="form-group required">
						  <div class="col-sm-12 col-xs-12">
						   <label class="col-sm-2 control-label" for="input-name[<?php echo $language['language_id']; ?>]"><?php echo $entry_storename; ?></label>
								<div class="col-sm-10">
								 <input type="text" name="store_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_storename; ?>" id="input-name[<?php echo $language['language_id']; ?>]" class="form-control" />
								 <?php if(isset($error_name[$language['language_id']])) { ?>
								  <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
								  <?php } ?>
								 </div>
						   </div>
					   </div>
				   
				   <div class="row">
						<div class="form-group required">			
							<div class="col-sm-6">
							  <label for="input-description[<?php echo $language['language_id']; ?>]"><?php echo $entry_description; ?></label>
							  <textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][description]" value="" placeholder="" id="input-description[<?php echo $language['language_id']; ?>]" class="form-control summernote" style="height: 0px;padding: 0px;"><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['description'] : ''; ?></textarea>
							</div>
							<div class="col-sm-6">
							  <label for="input-shipping_policy[<?php echo $language['language_id']; ?>]"><?php echo $entry_shippingpolicy; ?></label>
								<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][shipping_policy]" value="" placeholder="<?php echo $entry_shippingpolicy; ?>" id="input-shipping_policy[<?php echo $language['language_id']; ?>]" class="form-control summernote" ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['shipping_policy'] : ''; ?></textarea>
							</div>
						</div>
				  </div>
				  
				  <div class="row">		  
					<div class="form-group required">			
						<div class="col-sm-6">
						  <label for="input-return_policy[<?php echo $language['language_id']; ?>]"><?php echo $entry_returnpolicy; ?></label>
						<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][return_policy]" value="" placeholder="<?php echo $entry_returnpolicy; ?>" id="input-return_policy[<?php echo $language['language_id']; ?>]" class="form-control summernote" ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['return_policy'] : ''; ?></textarea>
					  </div>
					  <div class="col-sm-6">
						<label for="input-meta_keyword[<?php echo $language['language_id']; ?>]"><?php echo $entry_metakeyword; ?></label>
						<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][meta_keyword]" value="" rows="3" placeholder="<?php echo $entry_metakeyword; ?>" id="input-meta_keyword[<?php echo $language['language_id']; ?>]" class="form-control summernote" ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
					  </div>
					  </div>
				</div>
				<div class="form-group">
				   <label class="col-sm-2 control-label" for="input-meta_description[<?php echo $language['language_id']; ?>]"><?php echo $entry_metadescription; ?></label>
				   <div class="col-sm-10">
					 <textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][meta_description]" value="" rows="3" placeholder="<?php echo $entry_metadescription; ?>" id="input-meta_description[<?php echo $language['language_id']; ?>]" class="form-control " ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
					 <?php if(isset($error_meta_description[$language['language_id']])) { ?>
										<div class="text-danger"><?php echo $error_meta_description[$language['language_id']]; ?></div>
									<?php } ?>
				  </div>
			   </div>
			  </div>
			  <?php } ?>
			  
			 <div class="row"><legend><?php echo $tab_datastore; ?></legend></div>
				<div class="row">
					<div class="form-group">     
					   <div class="col-sm-4">
						<label for="input-detail"><?php echo $entry_detail; ?></label>
						<textarea type="text" name="bank_detail" value="" placeholder="<?php echo $entry_detail; ?>" id="input-detail" class="form-control" ><?php echo $bank_detail; ?></textarea>
					   </div>
					   <div class="col-sm-4">
						<label for="input-store_about"><?php echo $entry_store_about; ?></label>
						<textarea type="text" name="store_about" value="<?php echo $store_about; ?>" placeholder="<?php echo $entry_store_about; ?>" id="input-store_about" class="form-control" ><?php echo $store_about; ?></textarea>
					   </div>
					   
						<div class="col-sm-4">
						 <label for="input-tax" class="control-label"><?php echo $entry_tax; ?></label>
						 <input type="text" name="tax_number" value="<?php echo $tax_number; ?>" placeholder="<?php echo $entry_tax; ?>" id="input-tax" class="form-control form1" />
					   </div>	
					</div>
				</div>
				<div class="row">
				  <div class="form-group">
				  
				   <div class="col-sm-4">
					 <label for="input-charges" class="control-label"><?php echo $entry_charges; ?></label>
					 <input type="text" name="shipping_charge" value="<?php echo $shipping_charge; ?>" placeholder="<?php echo $entry_charges; ?>" id="input-charges" class="form-control form1" />
				   </div>
				   
					<div class="col-sm-4">
					 <label for="input-keyword" class="control-label"><?php echo $entry_url; ?></label>
					 <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $entry_url; ?>" id="input-keyword" class="form-control form1" />
					</div>
					
				   <div class="col-sm-4">
					 <label for="input-map_url" class="control-label"><?php echo $entry_mapurl; ?>&nbsp;<a href="https://maps.google.com" target="_blank" data-toggle="tooltip" title="find your map location here"><i class="fa fa-globe" aria-hidden="true"></i></a></label>
					<textarea type="text" name="map_url" placeholder="<?php echo $entry_mapurl; ?>" id="input-mapurl" class="form-control form1" rows="6"> <?php echo $map_url; ?></textarea>
					
				  </div>
			 </div>
			
			 </div>
			 <div class="row">
			   <div class="form-group">      
				<div class="col-sm-4">
				<label class="control-label" for="input-logo"><?php echo $entry_logo;?></label>
				<div class="imagebox form1">
				  <span id="thumb-logo"><img src="<?php echo $thumb_logo; ?>" alt="" title="" height="120" width="120" class="thumb"/></span>
				  <button type="button" id="button-logo" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
				  <input type="hidden" name="logo" value="<?php echo $logo;?>" id="input-logo" />
				</div>
				</div>
			   
			   <div class="col-sm-5">
				 <label class="control-label" for="input-logo"><?php echo $entry_banner;?></label>
				<div class="imagebox form1">
				  <span id="thumb-banner"><img src="<?php echo $thumb_banner; ?>" alt="" title="" height="120" width="120" class="thumb"/></span>
				  <button type="button" id="upload-banner" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_banner; ?></button>
				  <input type="hidden" name="banner" value="<?php echo $banner;?>" id="input-banner" />
				</div>
			   </div>		   
			  </div>
			 </div>
			 <div class="row"><legend><?php echo $tab_payment; ?></legend></div>
			 
			 <div class="row">
				<div class="col-sm-4">
				   <label><?php echo $entry_method; ?></label>
				   <div>
					 <label class="radio-inline"><?php if ($payment_method == 'paypal') { ?><input type="radio" name="payment_method" value="paypal" checked="checked" />
					   <?php } else { ?>
					   <input type="radio" name="payment_method" value="paypal" />
					   <?php } ?>
					   <?php echo $text_paypal; ?>
					 </label>
					   <label class="radio-inline">
						<?php if ($payment_method == 'banktransfer') { ?>
						  <input type="radio" name="payment_method" value="banktransfer" checked="checked" />
						<?php } else { ?>
						   <input type="radio" name="payment_method" value="banktransfer" />
						 <?php } ?>
						  <?php echo $text_bank; ?>
						 </label>
					   </div>
					</div>
					
					<div class="payment" id="payment-paypal">	
					   <div id="paypal">			
							<div class="form-group required">    
								<div class="col-sm-4">						
									<label for="input-paypal" class="control-label"><?php echo $entry_Emailid; ?></label>
									<input type="text" name="paypal" value="<?php echo $paypal?>" placeholder="<?php echo $entry_Emailid; ?>" id="input-paypal" class="form-control"/>
									<?php if ($error_paypal) { ?>
									<div class="text-danger"><?php echo $error_paypal; ?></div>
									<?php } ?>						
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="payment" id="payment-banktransfer">
					<div class="col-sm-12 col-xs-12">
						<div class="form-group required">
							<div class="col-sm-4">
							   <label for="input-bankname" class="control-label"><?php echo $entry_bankname;?></label>
							   <input type="text" name="bank_name" value="<?php echo $bank_name; ?>" placeholder="<?php echo $entry_bankname;?>" id="input-bankname" class="form-control" />
							</div>
							<div class="col-sm-4">
							  <label for="input-branch_number" class="control-label"><?php echo $entry_bnumber;?></label>
							  <input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" placeholder="<?php echo $entry_bnumber;?>" id="input-branch_number" class="form-control" />
							</div>
							<div class="col-sm-4">	
							<label for="input-swift_code" class="control-label"><?php echo $entry_swiftcode; ?></label>
							  <input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" placeholder="<?php echo $entry_swiftcode;?>" id="input-swift_code" class="form-control" />
							</div>
						</div>
					  
					   <div class="row">
							<div class="form-group required">						
								<div class="col-sm-4">	
								  <label for="input-package-title" class="control-label"><?php echo $entry_aname;?></label>
								  <input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" placeholder="<?php echo $entry_aname;?>" id="input-package-titl" class="form-control" />
								  <?php if ($error_bank_account_name) { ?>
								  <div class="text-danger"><?php echo $error_bank_account_name; ?></div>
								  <?php } ?>
								</div>
								
								<div class="col-sm-4">	
								  <label for="input-account_number" class="control-label"><?php echo $entry_anumber;?></label>
								  <input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" placeholder="<?php echo $entry_anumber;?>" id="input-account_number" class="form-control" />
								  <?php if ($error_bank_account_number) { ?>
								  <div class="text-danger"><?php echo $error_bank_account_number; ?></div>
								  <?php } ?>
								</div>
						   </div>
					   </div>
					</div>
				</div>
			</div>
		</div>
		<!--10-04-2020-->
			<?php if ($vendor_vprivacy!=0) { ?>
				<?php if ($text_agree) { ?>
					<div class="buttons">
					  <div class="pull-right"><?php echo $text_agree; ?>
						<?php if ($agree) { ?>
						<input type="checkbox" name="agree" value="1" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="agree" value="1" />
							<?php } ?>
						&nbsp;
						<input type="submit" value="<?php echo $button_continue; ?>" class="btn-submit btn btn-primary" />
					  </div>
					</div>
					<?php } else { ?>
						<div class="buttons">
							<div class="pull-right">
								<input type="submit" value="<?php echo $button_continue; ?>" class="btn-submit btn btn-primary" />
							</div>
						</div>	
					<?php } ?>
				<?php } else { ?>
					<div class="buttons">
						<div class="pull-right">
							<input type="submit" value="<?php echo $button_continue; ?>" class="btn-submit btn btn-primary" />
						</div>
					</div>
				<?php } ?>
			<!--10-04-2020-->			
		</div>
	</form>
    <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript" src="catalog/view/javascript/vendor/summernote/summernote.js"></script>
  <link href="catalog/view/javascript/vendor/summernote/summernote.css" rel="stylesheet" />
  <script type="text/javascript" src="catalog/view/javascript/vendor/summernote/opencart.js"></script>
<script type="text/javascript"><!--
$('input[name=\'payment_method\']').on('change', function() {
	$('.payment').hide();

	$('#payment-' + this.value).show();
});

$('input[name=\'payment_method\']:checked').trigger('change');
//--></script>

<script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script>

<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>

<script type="text/javascript"><!--
$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
         	$.ajax({
				url: 'index.php?route=vendor/vendor/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						var imageurl="<?php echo str_replace('http:','',HTTP_SERVER)?>";
						$("#thumb-image").html('<img src="'+imageurl+"image/"+json['location1']+'" alt="" title="" width="100" class="thumb"/>');
						$("#input-image").val(json['location1']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});

		
		}
	}, 500);
});
//--></script>

<script type="text/javascript"><!--
$('button[id^=\'button-logo\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
         	$.ajax({
				url: 'index.php?route=vendor/vendor/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						var imageurl="<?php echo str_replace('http:','',HTTP_SERVER)?>";
						$("#thumb-logo").html('<img src="'+imageurl+"image/"+json['location1']+'" alt="" title="" width="100" class="thumb"/>');
						$("#input-logo").val(json['location1']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});

		
		}
	}, 500);
});
//--></script>

<script type="text/javascript"><!--
$('button[id^=\'upload-banner\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
         	$.ajax({
				url: 'index.php?route=vendor/vendor/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						var imageurl="<?php echo str_replace('http:','',HTTP_SERVER)?>";
						$("#thumb-banner").html('<img src="'+imageurl+"image/"+json['location1']+'" alt="" title="" width="100" class="thumb"/>');
						$("#input-banner").val(json['location1']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});

		
		}
	}, 500);
});
//--></script>


<style>
	.btn-submit{padding: 10px 25px;font-size: 16px;text-transform: uppercase;}
	.checkbox-inline, .radio-inline{display: inline-block;}
	.imagebox .thumb{border:solid 2px #62CBF2;padding:5px;}
	.thumb{padding:5px;}
	.form-group{margin-bottom: 10px !important;}
	.text-danger {color: #DD0E1C !important;}
	.has-error .form-control {border-color: #a94442 !important;}
	.form-group label{max-width: 150px !important;width: 100% !important;}
	select.form-control{width: 61% !important;}
	#input-about{width: 81% !important;}
	#input-description1{height:0 !important;}
	.form1{width: 100% !important;max-width:100% !important;}
	.nav-tabs > li.active{
	border-top: solid 1px #ccc;
    margin-bottom: 10px;
    border-left: solid 1px #ccc;
    border-right: solid 1px #ccc;}
</style>
<script type="text/javascript"><!--
$('#language a:first').tab('show');
$("#language1:first").addClass("active");
//--></script>
<?php echo $footer; ?>