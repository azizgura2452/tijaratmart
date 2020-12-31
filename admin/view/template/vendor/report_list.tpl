<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
	<!--19 02 2020-->
	<div class="pull-right">		
		 <button type="submit" id="button-shipping" form="form-report" formaction="<?php echo $shipping; ?>" formtarget="_blank" data-toggle="tooltip" title="<?php echo $button_shipping_print; ?>" class="btn btn-info"><i class="fa fa-truck"></i></button>
		
		<button type="submit" id="button-invoice" form="form-report" formaction="<?php echo $invoice; ?>" formtarget="_blank" data-toggle="tooltip" title="<?php echo $button_invoice_print; ?>" class="btn btn-info"><i class="fa fa-print"></i></button>			
	</div>
	<!--19 02 2020-->  	  
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
		<div class="panel-body">
			<div class="well">
				<div class="row">
					<div class="col-sm-4">
						<div class="form-group">
							<label class="control-label" for="input-order-id"><?php echo $entry_order_id; ?></label>
							<input type="text" name="filter_order_id" value="<?php echo $filter_order_id ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" class="form-control" />
						</div>
						<div class="form-group">
							<label class="control-label" for="input-filter_name"><?php echo $column_seller; ?></label>
							<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $column_seller; ?>" id="input-filter_name" class="form-control"/>
							<input type="hidden" name="vendor_id" value="<?php echo $filter_vendor; ?>"/>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
						<label class="control-label" for="input-status"><?php echo $entry_status; ?></label>
							<select name="filter_status" id="input-filter_status" class="form-control">
								<option value="*"><?php echo $text_select; ?></option>
								<?php if ($filter_status == '0') { ?>
								<option value="0" selected="selected"><?php echo $text_missing; ?></option>
								<?php } else { ?>
								<option value="0"><?php echo $text_missing; ?></option>
								<?php } ?>
								<?php foreach ($order_statuses as $order_status) { ?>
								<?php if ($order_status['order_status_id'] == $filter_status) { ?>
								<option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
								<?php } ?>
								<?php } ?>
							</select>
						</div>
						<div class="form-group">
							  <label class="control-label" for="input-filter_customer"><?php echo $column_customer; ?></label>
							  <input type="text" name="filter_customer" value="<?php echo $filter_customer_name; ?>" placeholder="<?php echo $column_customer; ?>" id="input-filter_customer" class="form-control"/>
							  <input type="hidden" name="customer_id" value="<?php echo $filter_customer; ?>"/>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label class="control-label" for="input-date"><?php echo $entry_date; ?></label>
							<div class="input-group date">
							  <input type="text" name="filter_date" value="<?php echo $filter_date; ?>" placeholder="<?php echo $entry_date; ?>" data-date-format="YYYY-MM-DD" id="input-date" class="form-control" />
							  <span class="input-group-btn">
								<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
							  </span>
							</div>
						</div>
						<button type="button" id="button-filter" style="margin-top:12%;" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
					</div>
				</div>
			</div>	  
			<form action="" method="post" enctype="multipart/form-data" id="form-report">
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>  
								<!--19 02 2020-->
									<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
								<!--19 02 2020-->
								<td class="text-left"><?php if ($sort == 'o.order_id') { ?>
									<a href="<?php echo $sort_order_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_order_id; ?></a>
									<?php } else { ?>
									<a href="<?php echo $sort_order_id; ?>"><?php echo $column_order_id; ?></a>
									<?php } ?>
								</td>						
								<td class="text-left"><?php if ($sort == 'o.customer') { ?>
									<a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_customer; ?></a>
									<?php } else { ?>
									<a href="<?php echo $sort_customer; ?>"><?php echo $column_customer; ?></a>
									<?php } ?>
								</td>
								<td class="text-center"><?php echo $column_product; ?></td>
								<td class="text-left"><?php echo $column_total; ?></td>
								<td class="text-left"><?php if ($sort == 'o.status') { ?>
									<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_adminstatus; ?></a>
									<?php } else { ?>
									<a href="<?php echo $sort_status; ?>"><?php echo $column_adminstatus; ?></a>
									<?php } ?>
								</td>
								<td class="text-left"><?php if ($sort == 'vop.date') { ?>
									<a href="<?php echo $sort_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
									<?php } else { ?>
									<a href="<?php echo $sort_date; ?>"><?php echo $column_date; ?></a>
									<?php } ?>
								</td>
								<td class="text-right"><?php echo $column_action; ?></td>
							</tr>
						</thead>
						<?php if ($reports) { ?>
						<?php foreach ($reports as $report) { ?>
						<tr>
							<!--19-02-2020 -->
							<td class="text-center"><?php if (in_array($report['order_id'], $selected)) { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $report['order_id']; ?>" checked="checked" />
								<?php } else { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $report['order_id']; ?>" />
								<?php } ?>
								<input type="hidden" name="shipping_code[]" value="<?php echo $report['shipping_code']; ?>" /></td>
							<!--19-02-2020 -->
							<td class="text-left"><?php echo $report['order_id']; ?></td>					
							<td class="text-left"><?php echo $report['firstname']; ?></td>
							<td class="text-left">
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<td class="text-left"><?php echo $column_prouctname; ?></td>
											<td class="text-left"><?php echo $column_storename; ?></td>
											<td class="text-left"><?php echo $column_sellername; ?></td>
											<td class="text-left"><?php echo $column_status; ?></td>
										</tr>
									</thead>
									<tbody>	 
									   <?php foreach ($report['productname'] as $productnam) { ?>
									   <tr>
											<td class="text-left"><?php echo $productnam['productname']; ?></td>
											<td class="text-left"><?php 
											if(isset($productnam['storename'])){
											echo $productnam['storename'];
										}
											?></td>
											<td class="text-left"><?php echo $productnam['sellername']; ?></td>
											<td class="text-left">
											<span class="label<?php if ($productnam['vstatus']=='Pending') { ?>  label-danger <?php } elseif($productnam['vstatus']=='Complete') { ?> label-success <?php } else { ?> label-warning <?php } ?>">
											<?php echo $productnam['vstatus']; ?></span>
											</td>
									   </tr>
									   <?php } ?>
									</tbody>
								</table>
							</td>
							<!--03-10-2019-->
							<td class="text-left"><?php echo $report['total']; ?></td>
							<td class="text-left">
								<span style="font-size:12px;" class="label<?php if ($report['statusname']=='Pending') { ?>  label-danger <?php } elseif($report['statusname']=='Complete') { ?> label-success <?php } else { ?> label-warning <?php } ?>">
								<?php echo $report['statusname']; ?></span>
							</td>
							<td class="text-left"><span style="font-size:12px;" class="label btn-info"><i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo $report['date_added']; ?></span></td>
							<td class="text-right"><a href="<?php echo $report['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-primary"><i class="fa fa-eye"></i></a></td>
						</tr>
						<?php } ?> 
						<?php } else { ?>
						<tr>
						<td class="text-center" colspan="9"><?php echo $text_no_results; ?></td>
						</tr>
						<?php } ?>
					</table>
				</div>
			</form>
			<div class="row">
				<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
				<div class="col-sm-6 text-right"><?php echo $results; ?></div>
			</div>
		</div>
    </div>
	</div>
</div>
<!--19 02 2020-->
 <script type="text/javascript"><!--
$('input[name^=\'selected\']').on('change', function() {
	$('#button-shipping, #button-invoice').prop('disabled', true);

	var selected = $('input[name^=\'selected\']:checked');

	if (selected.length) {
		$('#button-invoice').prop('disabled', false);
	}

	for (i = 0; i < selected.length; i++) {
		if ($(selected[i]).parent().find('input[name^=\'shipping_code\']').val()) {
			$('#button-shipping').prop('disabled', false);

			break;
		}
	}
});

$('#button-shipping, #button-invoice').prop('disabled', true);

$('input[name^=\'selected\']:first').trigger('change');

// IE and Edge fix!
$('#button-shipping, #button-invoice').on('click', function(e) {
	$('#form-report').attr('action', this.getAttribute('formAction'));
});
//--></script> 
<!--19 02 2020-->
<script type="text/javascript">
$('#button-filter').on('click', function() {
	var url = 'index.php?route=vendor/report&token=<?php echo $token; ?>';
	
	var filter_order_id = $('input[name=\'filter_order_id\']').val();

	if (filter_order_id) {
		url += '&filter_order_id=' + encodeURIComponent(filter_order_id);
	}
	
	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	/* 11 02 2020 */
	var filter_vendor = $('input[name=\'vendor_id\']').val();

	if (filter_vendor) {
		url += '&filter_vendor=' + encodeURIComponent(filter_vendor);
	}
	
	
	var filter_customer_name = $('input[name=\'filter_customer\']').val();

	if (filter_customer_name) {
		url += '&filter_customer_name=' + encodeURIComponent(filter_customer_name);
	}

	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}
 
	/* 11 02 2020 */
	var filter_customer = $('input[name=\'customer_id\']').val();

	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
	
	var filter_date = $('input[name=\'filter_date\']').val();

	if (filter_date) {
		url += '&filter_date=' + encodeURIComponent(filter_date);
	}
	
		
  location = url;
});
</script>


<script type="text/javascript"><!--
	$('.date').datetimepicker({
		pickTime: false
	});

	$('.time').datetimepicker({
		pickDate: false
	});

	$('.datetime').datetimepicker({
		pickDate: true,
		pickTime: true
	});
//--></script>

<script type="text/javascript"><!--
	  
// Seller
$('input[name=\'filter_name\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/vendor/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					vendorname: '<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['vendorname'],
						value: item['vendor_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_name\']').val(item['label']);
		$('input[name=\'vendor_id\']').val(item['value']);
	}
});
</script>

<script type="text/javascript"><!--
	  
// Seller
$('input[name=\'filter_customer\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=customer/customer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					name: '<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['customer_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_customer\']').val(item['label']);
		$('input[name=\'customer_id\']').val(item['value']);
	}
});
</script>
<?php echo $footer; ?>