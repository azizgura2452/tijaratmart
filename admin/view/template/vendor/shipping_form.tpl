<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-review" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-review" class="form-horizontal">
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-customer"><?php echo $entry_storename; ?></label>
				<div class="col-sm-10">
					<input type="text" name="store" value="" placeholder="<?php echo $entry_storename; ?>" id="input-customer" class="form-control" />
					<input type="hidden" name ="vendor_id" value="<?php echo $vendor_id;?>" />
					<?php if ($error_vendor_id) { ?>
						<div class="text-danger"><?php echo $error_vendor_id; ?></div>
					<?php } ?>
				</div>
			</div>

			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-vendor"><?php echo $entry_country; ?></label>
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
				<label class="col-sm-2 control-label" for="input-vendor"><?php echo $entry_zipfrom; ?></label>
				<div class="col-sm-10">
					<input type="text" name="zip_from" value="" placeholder="<?php echo $entry_zipfrom; ?>" id="input-vendor" class="form-control" />
					<?php if ($error_zip_from) { ?>
						<div class="text-danger"><?php echo $error_zip_from; ?></div>
					<?php } ?>
				</div>
			</div>

			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-vendor"><?php echo $entry_zipto; ?></label>
				<div class="col-sm-10">
					<input type="text" name="zip_to" value="" placeholder="<?php echo $entry_zipto; ?>" id="input-vendor" class="form-control" />
					<?php if ($error_zip_to) { ?>
						<div class="text-danger"><?php echo $error_zip_to; ?></div>
					<?php } ?>
				</div>
			</div>

			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-vendor"><span data-toggle="tooltip" title="<?php echo $help_weightfrom; ?>"><?php echo $entry_weightfrom; ?></span></label>
				<div class="col-sm-10">
					<input type="text" name="weight_from" value="" placeholder="<?php echo $entry_weightfrom; ?>" id="input-vendor" class="form-control" />
					<?php if ($error_weight_from) { ?>
						<div class="text-danger"><?php echo $error_weight_from; ?></div>
					<?php } ?>
				</div>
			</div>

			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-vendor"><span data-toggle="tooltip" title="<?php echo $help_weightfrom; ?>"><?php echo $entry_weightto; ?></span></label>
				<div class="col-sm-10">
					<input type="text" name="weight_to" value="" placeholder="<?php echo $entry_weightto; ?>" id="input-vendor" class="form-control" />
					<?php if ($error_weight_to) { ?>
						<div class="text-danger"><?php echo $error_weight_to; ?></div>
					<?php } ?>
				</div>
			</div>
			
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-vendor"><?php echo $entry_price; ?></label>
				<div class="col-sm-10">
					<input type="text" name="price" value="" placeholder="<?php echo $entry_price; ?>" id="input-vendor" class="form-control" />
					<?php if ($error_price) { ?>
						<div class="text-danger"><?php echo $error_price; ?></div>
					<?php } ?>
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

<script type="text/javascript">
$('input[name=\'store\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/shipping/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					name:'<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['vendor_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'store\']').val(item['label']);
		$('input[name=\'vendor_id\']').val(item['value']);
	}
});
</script>

<?php echo $footer; ?>