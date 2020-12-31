<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-manufacturer" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-manufacturer" class="form-horizontal">
				
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
					<li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
					<li><a href="#tab-commission" data-toggle="tab"><?php echo $tab_commission; ?></a></li>
				</ul>
				
				<div class="tab-content">
					<div class="tab-pane active" id="tab-general">
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

									<div class="form-group required">
										<label class="col-sm-2 control-label" for="input-description[<?php echo $language['language_id']; ?>]"><?php echo $entry_description; ?></label>
										<div class="col-sm-10">
											<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][description]" value="" placeholder="<?php echo $entry_description; ?>" id="input-description[<?php echo $language['language_id']; ?>]" class="form-control summernote" /><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['description'] : ''; ?></textarea>
										</div>
									</div>

									<div class="form-group required">
										<label class="col-sm-2 control-label" for="input-shipping_policy[<?php echo $language['language_id']; ?>]"><?php echo $entry_shipping_policy; ?></label>
										<div class="col-sm-10">
											<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][shipping_policy]" value="" placeholder="<?php echo $entry_shipping_policy; ?>" id="input-shipping_policy[<?php echo $language['language_id']; ?>]" class="form-control summernote" /><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['shipping_policy'] : ''; ?></textarea>
										</div>
									</div>

									<div class="form-group required">
										<label class="col-sm-2 control-label" for="input-return_policy[<?php echo $language['language_id']; ?>]"><?php echo $entry_return_policy; ?></label>
										<div class="col-sm-10">
											<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][return_policy]" value="" placeholder="<?php echo $entry_return_policy; ?>" id="input-return_policy[<?php echo $language['language_id']; ?>]" class="form-control summernote" /><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['return_policy'] : ''; ?></textarea>
										</div>
									</div>

									<div class="form-group required">
										<label class="col-sm-2 control-label" for="input-meta_keyword[<?php echo $language['language_id']; ?>]"><?php echo $entry_meta_keyword; ?></label>
										<div class="col-sm-10">
											<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][meta_keyword]" value="" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta_keyword[<?php echo $language['language_id']; ?>]" class="form-control " ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
										</div>
									</div>

									<div class="form-group required">
										<label class="col-sm-2 control-label" for="input-meta_description[<?php echo $language['language_id']; ?>]"><?php echo $entry_meta_description; ?></label>
										<div class="col-sm-10">
											<textarea type="text" name="store_description[<?php echo $language['language_id']; ?>][meta_description]" value="" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta_description[<?php echo $language['language_id']; ?>]" class="form-control " ><?php echo isset($store_description[$language['language_id']]) ? $store_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
										</div>
									</div>

							  </div>
							  <?php } ?>
						</div>
					</div>
					
					<div class="tab-pane" id="tab-data">

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-vendorname"><?php echo $entry_vendorname; ?></label>
							<div class="col-sm-10">
								<input type="text" name="vendor" value="<?php echo $vendor; ?>" placeholder="<?php echo $entry_vendorname; ?>" id="input-vendorname" class="form-control" />
								<input type="hidden" name="vendor_id" value="<?php echo $vendor_id; ?>"/>
							</div>
						</div>

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
							</div>
						 </div>

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-phone"><?php echo $entry_phone; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $entry_phone; ?>" id="input-phone" class="form-control" />
							  <?php if ($error_phone) { ?>
							  <div class="text-danger"><?php echo $error_phone; ?></div>
							  <?php } ?>
							</div>
						</div>

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-address"><?php echo $entry_address; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="address" value="<?php echo $address; ?>" placeholder="<?php echo $entry_address; ?>" id="input-address" class="form-control" />
							  <?php if ($error_address) { ?>
							  <div class="text-danger"><?php echo $error_address; ?></div>
							  <?php } ?>
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
							<label class="col-sm-2 control-label" for="input-bank_detail"><?php echo $entry_bank_detail; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="bank_detail" value="<?php echo $bank_detail; ?>" placeholder="<?php echo $entry_bank_detail; ?>" id="input-bank_detail" class="form-control" />
							</div>
						</div>

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-tax_number"><?php echo $entry_tax_number; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="tax_number" value="<?php echo $tax_number; ?>" placeholder="<?php echo $entry_tax_number; ?>" id="input-tax_number" class="form-control" />
							</div>
						</div>

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-shipping_charge"><?php echo $entry_shipping_charge; ?></label>
							<div class="col-sm-10">
							  <input type="text" name="shipping_charge" value="<?php echo $shipping_charge; ?>" placeholder="<?php echo $entry_shipping_charge; ?>" id="input-shipping_charge" class="form-control" />
							</div>
						</div>

						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-url"><?php echo $entry_url; ?></label>
							<div class="col-sm-10">
								<input type="text" name="url" value="<?php echo $url;?>" placeholder="<?php echo $entry_url; ?>" id="input-url" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"><?php echo $entry_banner; ?></label>
							<div class="col-sm-10"><a href="" id="thumb-banner" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb_banner; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
							  <input type="hidden" name="banner" value="<?php echo $banner; ?>" id="input-banner" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"><?php echo $entry_logo; ?></label>
							<div class="col-sm-10"><a href="" id="thumb-logo" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb_logo; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
							  <input type="hidden" name="logo" value="<?php echo $logo; ?>" id="input-logo" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-about"><?php echo $entry_about; ?></label>
							<div class="col-sm-10">
							  <textarea type="text" name="store_about" rows="3" placeholder="<?php echo $entry_about; ?>" id="input-about" class="form-control"><?php echo $store_about; ?></textarea>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab-commission">
						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-commission"><?php echo $entry_commission; ?></label>
							<div class="col-sm-10">
								<input type="text" name="commission" value="<?php echo $commission; ?>" placeholder="<?php echo $entry_commission; ?>" id="input-commission" class="form-control" />
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
    </div>
  </div>
</div>

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
<script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script></div>

  <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
  <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
  <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>  

	
	<script type="text/javascript">
$('input[name=\'vendor\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/store/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					firstname:'<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['firstname'],
						value: item['vendor_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'vendor\']').val(item['label']);
		$('input[name=\'vendor_id\']').val(item['value']);
	}
});
</script>

<?php echo $footer; ?>