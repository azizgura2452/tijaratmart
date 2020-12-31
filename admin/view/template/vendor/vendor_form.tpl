<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
			<button type="submit" form="form-vendor" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
				<h1><?php echo $heading_title; ?></h1>
				<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
			</div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-vendor" class="form-horizontal">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab-seller" data-toggle="tab"><?php echo $tab_seller; ?></a></li>
						<li><a href="#tab-generalstore" data-toggle="tab"><?php echo $tab_generalstore; ?></a></li>
						<li><a href="#tab-datastore" data-toggle="tab"><?php echo $tab_datastore; ?></a></li>
						<li><a href="#tab-commission" data-toggle="tab"><?php echo $tab_commission; ?></a></li>
						
						<li><a href="#tab-chat" data-toggle="tab"><?php echo $tab_chat; ?></a></li>
						
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab-seller">
							
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-display_name"><?php echo $entry_display_name; ?></label>
								<div class="col-sm-10">
									<input type="text" name="display_name" value="<?php echo $display_name; ?>" placeholder="<?php echo $entry_display_name; ?>" id="input-display_name" class="form-control" />
									<?php if ($error_display_name) { ?>
										<div class="text-danger"><?php echo $error_display_name; ?></div>
									<?php } ?>
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
								<div class="col-sm-10">
									<input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
									<?php if ($error_firstname) { ?>
										<div class="text-danger"><?php echo $error_firstname; ?></div>
									<?php } ?>
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
								  <?php if ($error_lastname) { ?>
								  <div class="text-danger"><?php echo $error_lastname; ?></div>
								  <?php } ?>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
								<div class="col-sm-10">
							
								  <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
								  <?php if ($error_email) { ?>
								  <div class="text-danger"><?php echo $error_email; ?></div>
								  <?php } ?>
								</div>
							</div>
							
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-telephone"><?php echo $entry_telephone; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
								  <?php if ($error_telephone) { ?>
								  <div class="text-danger"><?php echo $error_telephone; ?></div>
								  <?php } ?>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-fax"><?php echo $entry_fax; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
								  <?php if ($error_fax) { ?>
								  <div class="text-danger"><?php echo $error_fax; ?></div>
								  <?php } ?>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-company"><?php echo $entry_company; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
								  <?php if ($error_company) { ?>
								  <div class="text-danger"><?php echo $error_company; ?></div>
								  <?php } ?>
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-address_1"><?php echo $entry_address_1; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address_1" class="form-control" />
								  <?php if ($error_address_1) { ?>
								  <div class="text-danger"><?php echo $error_address_1; ?></div>
								  <?php } ?>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-address_2"><?php echo $entry_address_2; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-address_2" class="form-control" />
								  <?php if ($error_address_2) { ?>
								  <div class="text-danger"><?php echo $error_address_2; ?></div>
								  <?php } ?>
								</div>
							</div>
							<div class="form-group ">
								<label class="col-sm-2 control-label" for="input-status1"><?php echo $entry_status; ?></label>
								<div class="col-sm-10">
									<select name="status" id="input-status1" class="form-control">
										<?php if ($status) { ?>
										<option value="1" selected="selected"><?php echo $text_enable; ?></option>
										<option value="0"><?php echo $text_disable; ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_enable; ?></option>
										<option value="0" selected="selected"><?php echo $text_disable; ?></option>
										<?php } ?>
									</select>
								</div>
							</div>
							<div class="form-group ">
								<label class="col-sm-2 control-label" for="input-product_status"><?php echo $entry_productstatus; ?></label>
								<div class="col-sm-10">
									<select name="product_status" id="input-product_status" class="form-control">
										<?php if ($product_status) { ?>
										<option value="1" selected="selected"><?php echo $text_autoapprove; ?></option>
										<option value="0"><?php echo $text_pending; ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_autoapprove; ?></option>
										<option value="0" selected="selected"><?php echo $text_pending; ?></option>
										<?php } ?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-about"><?php echo $entry_about; ?></label>
								<div class="col-sm-10">
								  <textarea type="text" name="about" rows="3" placeholder="<?php echo $entry_about; ?>" id="input-about" class="form-control"><?php echo $about; ?></textarea>
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-city"><?php echo $entry_city; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city" class="form-control" />
								  <?php if ($error_city) { ?>
								  <div class="text-danger"><?php echo $error_city; ?></div>
								  <?php } ?>
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-country"><?php echo $entry_country; ?></label>
								<div class="col-sm-10">
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
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-zone"><?php echo $entry_zone; ?></label>
								<div class="col-sm-10">
									<select type="text" name="zone_id" value="<?php echo $zone_id;?>" placeholder="<?php echo $entry_zone; ?>" id="input-zone" class="form-control" >

									</select>
									<?php if ($error_zone) { ?>
									<div class="text-danger"><?php echo $error_zone; ?></div>
								<?php } ?>
								</div>
							</div>

							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
								<div class="col-sm-10">
								  <input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
								  
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-confirmpassword"><?php echo $entry_confirmpassword; ?></label>
								<div class="col-sm-10">
								  <input type="password" name="confirmpassword" value="" placeholder="<?php echo $entry_confirmpassword; ?>" id="input-confirmpassword" class="form-control" />
								  
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_image; ?></label>
								<div class="col-sm-10"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab-generalstore">
							
							<ul class="nav nav-tabs" id="language">
								<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
								<?php } ?>
							</ul>
							<div class="tab-content">
								<?php foreach ($languages as $language) { ?>
								<div class="tab-pane active" id="language<?php echo $language['language_id']; ?>">
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="input-name[<?php echo $language['language_id']; ?>]"><?php echo $entry_name; ?></label>
											<div class="col-sm-10">
												<input type="text" name="store_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name[<?php echo $language['language_id']; ?>]" class="form-control" />
												<?php if(isset($error_name[$language['language_id']])) { ?>
												<div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
												<?php } ?>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-description[<?php echo $language['language_id']; ?>]"><?php echo $entry_description; ?></label>
											<div class="col-sm-10">
												<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][description]" value="" placeholder="<?php echo $entry_description; ?>" id="input-description[<?php echo $language['language_id']; ?>]" class="form-control summernote"><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['description'] : ''; ?></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-shipping_policy[<?php echo $language['language_id']; ?>]"><?php echo $entry_shipping_policy; ?></label>
											<div class="col-sm-10">
												<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][shipping_policy]" value="" placeholder="<?php echo $entry_shipping_policy; ?>" id="input-shipping_policy[<?php echo $language['language_id']; ?>]" class="form-control summernote"><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['shipping_policy'] : ''; ?></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-return_policy[<?php echo $language['language_id']; ?>]"><?php echo $entry_return_policy; ?></label>
											<div class="col-sm-10">
												<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][return_policy]" value="" placeholder="<?php echo $entry_return_policy; ?>" id="input-return_policy[<?php echo $language['language_id']; ?>]" class="form-control summernote"><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['return_policy'] : ''; ?></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-meta_keyword[<?php echo $language['language_id']; ?>]"><?php echo $entry_meta_keyword; ?></label>
											<div class="col-sm-10">
												<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][meta_keyword]" value="" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta_keyword[<?php echo $language['language_id']; ?>]" class="form-control " ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-meta_description[<?php echo $language['language_id']; ?>]"><?php echo $entry_meta_description; ?></label>
											<div class="col-sm-10">
												<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][meta_description]" value="" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta_description[<?php echo $language['language_id']; ?>]" class="form-control"><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
											</div>
										</div>
								  </div>
								  <?php } ?>
							</div>
							
						</div>	
						
						<div class="tab-pane" id="tab-datastore">
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-tax_number"><?php echo $entry_tax_number; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="tax_number" value="<?php echo $tax_number; ?>" placeholder="<?php echo $entry_tax_number; ?>" id="input-tax_number" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-shipping_charge"><?php echo $entry_shipping_charge; ?></label>
								<div class="col-sm-10">
								  <input type="text" name="shipping_charge" value="<?php echo $shipping_charge; ?>" placeholder="<?php echo $entry_shipping_charge; ?>" id="input-shipping_charge" class="form-control" />
								</div>
							</div>
							<!-- 09 06 2018 -->
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-url"><?php echo $entry_url; ?></label>
								<div class="col-sm-10">
									<input type="text" name="keyword" value="<?php echo $keyword;?>" placeholder="<?php echo $entry_url; ?>" id="input-url" class="form-control" />
									<?php if ($error_keyword) { ?>
				                    <div class="text-danger"><?php echo $error_keyword; ?></div>
				                    <?php } ?>
								</div>
							</div>
							<!-- 09 06 2018 -->
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-google_url"><?php echo $entry_mapurl; ?></label>
								<div class="col-sm-10">
									<textarea type="text" name="map_url" placeholder="<?php echo $entry_mapurl; ?>" id="input-map" class="form-control summernote"  data-toggle="summernote" data-lang="<?php  echo $summernote; ?>"><?php echo $map_url;?></textarea>
									
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-facebook_url"><?php echo $entry_facebook_url; ?></label>
								<div class="col-sm-10">
									<input type="text" name="facebook_url" value="<?php echo $facebook_url;?>" placeholder="<?php echo $entry_facebook_url; ?>" id="input-facebook_url" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-google_url"><?php echo $entry_google_url; ?></label>
								<div class="col-sm-10">
									<input type="text" name="google_url" value="<?php echo $google_url;?>" placeholder="<?php echo $entry_google_url; ?>" id="input-google_url" class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_banner; ?></label>
								<div class="col-sm-10"><a href="" id="thumb-banner" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb_banner; ?>" alt="" title="" data-placeholder="<?php echo $banner_placeholder; ?>" /></a>
								  <input type="hidden" name="banner" value="<?php echo $banner; ?>" id="input-banner" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $entry_logo; ?></label>
								<div class="col-sm-10"><a href="" id="thumb-logo" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb_logo; ?>" alt="" title="" data-placeholder="<?php echo $logo_placeholder; ?>" /></a>
								  <input type="hidden" name="logo" value="<?php echo $logo; ?>" id="input-logo" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-store_about"><?php echo $entry_about; ?></label>
								<div class="col-sm-10">
								  <textarea type="text" name="store_about" rows="3" placeholder="<?php echo $entry_about; ?>" id="input-store_about" class="form-control"><?php echo $store_about; ?></textarea>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab-commission">
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-commission"><?php echo $entry_commission; ?></label>
								<div class="col-sm-10">
									<input type="text" name="commission" value="<?php echo $commission; ?>" placeholder="<?php echo $entry_commission; ?>" id="input-commission" class="form-control" />
								</div>
							</div>
							<div class="form-group">
				                <label class="col-sm-2 control-label"><?php echo $entry_method; ?></label>
				                <div class="col-sm-10">
				                  <div class="radio">
				                    <label>
				                      <?php if ($payment_method == 'paypal') { ?>
				                      <input type="radio" name="payment_method" value="paypal" checked="checked" />
				                      <?php } else { ?>
				                      <input type="radio" name="payment_method" value="paypal" />
				                      <?php } ?>
				                      <?php echo $text_paypal; ?></label>
				                  </div>
				                  <div class="radio">
				                    <label>
				                      <?php if ($payment_method == 'banktransfer') { ?>
				                      <input type="radio" name="payment_method" value="banktransfer" checked="checked" />
				                      <?php } else { ?>
				                      <input type="radio" name="payment_method" value="banktransfer" />
				                      <?php } ?>
				                      <?php echo $text_bank; ?></label>
				                  </div>
				            
				                  <!--9 5 2019 start-->
				                  <!--<div class="radio">
				                    <label>
				                      <?php if ($payment_method == 'alipay') { ?>
				                      <input type="radio" name="payment_method" value="alipay" checked="checked" />
				                      <?php } else { ?>
				                      <input type="radio" name="payment_method" value="alipay" />
				                      <?php } ?>
				                       <?php echo $text_alipay; ?></label>
				                  </div>
				                  <div class="radio">
				                    <label>
				                      <?php if ($payment_method == 'wechatpay') { ?>
				                      <input type="radio" name="payment_method" value="wechatpay" checked="checked" />
				                      <?php } else { ?>
				                      <input type="radio" name="payment_method" value="wechatpay" />
				                      <?php } ?>
				                       <?php echo $text_wechatpay; ?></label>
				                  </div>-->
				                  <!--9 5 2019 end-->
				            
				                </div>
				            </div>

				             <!--9 5 2019 start-->
				            	<!--<div class="payment" id="payment-alipay">	
								<div class="form-group" id="alipay">	
									<label class="col-sm-2 control-label" for="input-alipay"><?php echo $entry_alipay; ?></label>
									<div class="col-sm-10">
										<input type="text" name="alipay" value="<?php echo $alipay; ?>" placeholder="<?php echo $entry_alipay_email; ?>" id="input-alipay" class="form-control"/>
					                    <?php if ($error_alipay) { ?>
					                    <div class="text-danger"><?php echo $error_alipay; ?></div>
					                    <?php } ?>
									</div>
								</div>
							</div>
							<div class="payment" id="payment-wechatpay">	
								<div class="form-group" id="wechatpay">	
									<label class="col-sm-2 control-label" for="input-wechatpay"><?php echo $entry_wechatpay; ?></label>
									<div class="col-sm-10">
										<input type="text" name="wechatpay" value="<?php echo $wechatpay; ?>" placeholder="<?php echo $entry_wechatpay_email; ?>" id="input-wechatpay" class="form-control"/>
					                    <?php if ($error_wechatpay) { ?>
					                    <div class="text-danger"><?php echo $error_wechatpay; ?></div>
					                    <?php } ?>
									</div>
								</div>
							</div>-->
							 <!--9 5 2019 end-->

							<div class="payment" id="payment-paypal">	
								<div class="form-group" id="paypal">	
									<label class="col-sm-2 control-label" for="input-paypal"><?php echo $entry_Emailid; ?></label>
									<div class="col-sm-10">
										<input type="text" name="paypal" value="<?php echo $paypal?>" placeholder="<?php echo $entry_Emailid; ?>" id="input-paypal" class="form-control"/>
					                    <?php if ($error_paypal) { ?>
					                    <div class="text-danger"><?php echo $error_paypal; ?></div>
					                    <?php } ?>
									</div>
								</div>
							</div>
						
							<div class="clearfix"></div>
							<div class="payment" id="payment-banktransfer">
								<div class="form-group required">
									<label class="col-sm-2 control-label" for="input-bankname"><?php echo $entry_bankname;?></label>
									<div class="col-sm-10">
										<input type="text" name="bank_name" value="<?php echo $bank_name; ?>" placeholder="<?php echo $entry_bankname;?>" id="input-bankname" class="form-control" />
									</div>
								</div>
								<div class="form-group required">
									<label class="col-sm-2 control-label" for="input-branch_number"><?php echo $entry_bnumber;?></label>
									<div class="col-sm-10">
										<input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" placeholder="<?php echo $entry_bnumber;?>" id="input-branch_number" class="form-control" />
									</div>
								</div>
								<div class="form-group required">
									<label class="col-sm-2 control-label" for="input-swift_code"><?php echo $entry_swiftcode;?></label>
									<div class="col-sm-10">
										<input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" placeholder="<?php echo $entry_swiftcode;?>" id="input-swift_code" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="input-package-title"><?php echo $entry_aname;?></label>
									<div class="col-sm-10">
										<input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" placeholder="<?php echo $entry_aname;?>" id="input-package-titl" class="form-control" />
										<?php if ($error_bank_account_name) { ?>
					                    <div class="text-danger"><?php echo $error_bank_account_name; ?></div>
					                    <?php } ?>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="input-account_number"><?php echo $entry_anumber;?></label>
									<div class="col-sm-10">
										<input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" placeholder="<?php echo $entry_anumber;?>" id="input-account_number" class="form-control" />
										 <?php if ($error_bank_account_number) { ?>
					                    <div class="text-danger"><?php echo $error_bank_account_number; ?></div>
					                    <?php } ?>
									</div>
								</div>
							</div>


						</div>
						
					
				
					<div class="tab-pane" id="tab-chat">
						<div class="msgsend">
							<div class="form-group ">	
								<label class="col-sm-2 control-label" for="input-package-title"><?php echo $entry_status;?></label>
								<div class="col-sm-10">
									<select name="chatstatus" id="statuss" class="form-control">
										<?php if ($chatstatus) { ?>
							            <option value="1" selected="selected"><?php echo $text_yes; ?></option>
							            <option value="0"><?php echo $text_no; ?></option>
							            <?php } else { ?>
							            <option value="1"><?php echo $text_yes; ?></option>
							            <option value="0" selected="selected"><?php echo $text_no; ?></option>
							            <?php } ?>
									</select>
								</div>
							</div>
							
							<div class="form-group" >
								<label class="col-sm-2 control-label" for="input-package-title"></label>
								<div class="col-sm-10">
									<div class="controls chatsystem">
										
												<input type="text" name="message" value="<?php echo $message; ?>" placeholder="Enter the text" id="responsetext" class="form-control" />
										
									</div>
								</div>
							</div>
							
							<input type="hidden" name="vendor_id" value="<?php echo $vendor_id; ?>">
						</div>
					</div>
				
				

					</div>
				</form>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	$(document).ready(function(){
		$flag = $('#statuss').val();
		if($flag==1){
			$(".chatsystem").show();
		}else{
			$(".chatsystem").hide();
		}
		$("select[name='chatstatus']").on('change', function() {
	    $flagg = $(this).val();
	    if($flagg==1){
			$(".chatsystem").show();
		}else{
			$(".chatsystem").hide();
		}
	    $(".chatsystem").toggle(flag);
  })

	})
</script>


<script type="text/javascript"><!--
$('input[name=\'payment_method\']').on('change', function() {
	$('.payment').hide();

	$('#payment-' + this.value).show();
});

$('input[name=\'payment_method\']:checked').trigger('change');
//--></script> 
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
  <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
  <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>
<script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=vendor/vendor/country&token=<?php echo $token; ?>&country_id=' + this.value,
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



<?php echo $footer; ?>