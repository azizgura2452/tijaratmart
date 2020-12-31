<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
		  <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-commission').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
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
				<div class="col-sm-3">
					<div class="form-group">
						<label class="control-label" for="input-filter_seller"><?php echo $column_seller; ?></label>
						<input type="text" name="filter_seller" value="" placeholder="<?php echo $column_seller; ?>" id="input-filter_seller" class="form-control"/>
						<input type="hidden" name="vendor_id" value=""/>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						  <label class="control-label" for="input-filter_customer"><?php echo $column_customer; ?></label>
						  <input type="text" name="filter_customer" value="" placeholder="<?php echo $column_customer; ?>" id="input-filter_customer" class="form-control"/>
						  <input type="hidden" name="customer_id" value=""/>
					</div>
				</div>
				<div class="col-sm-3 text-center">
					<button type="button" id="button-filter" style="margin-top:10%;" class="btn btn-primary"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
				</div>
			</div>
		</div>
	    <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-commission">
	        <div class="table-responsive">
	            <table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
							<td class="text-left"><?php if ($sort == 'seller') { ?>
								<a href="<?php echo $sort_seller; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_seller; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_seller; ?>"><?php echo $column_seller; ?></a>
								<?php } ?>
							</td>
							<td class="text-left"><?php if ($sort == 'customer') { ?>
								<a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_customer; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_customer; ?>"><?php echo $column_customer; ?></a>
								<?php } ?>
							</td>
							<td class="text-left"><?php if ($sort == 'rating') { ?>
								<a href="<?php echo $sort_rating; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_rating; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_rating; ?>"><?php echo $column_rating; ?></a>
								<?php } ?>
							</td>
							<td class="text-left"><?php if ($sort == 'status') { ?>
								<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
								<?php } ?>
							</td>
							<td class="text-left"><?php if ($sort == 'date') { ?>
								<a href="<?php echo $sort_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_date; ?>"><?php echo $column_date; ?></a>
								<?php } ?>
							</td>
						</tr>
					</thead>
						<?php if ($reviewreports) { ?>
						<?php foreach ($reviewreports as $report) { ?>
						<tr>
							<td class="text-center"><?php if (in_array($report['review_id'], $selected)) { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $report['review_id']; ?>" checked="checked" />
								<?php } else { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $report['review_id']; ?>" />
								<?php } ?>
							</td>
							
							<td class="text-left"><?php echo $report['sellername'];?></td>
							<td class="text-left"><?php echo $report['customername'];?></td>
							
							<td class="text-left">
							<?php if(isset($report['ratings'])) { ?>
							<?php foreach($report['ratings'] as $rating) { ?> 
							<div class="rating">
								<?php echo $rating['field_name']; ?> :
								<?php for ($i = 1; $i <= 5; $i++) { ?>
								<?php if ($rating['value'] < $i) { ?>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
								<?php } else { ?>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
								<?php } ?>
								<?php } ?>
							</div>
								<?php } ?>
							<?php } ?>
							</td>
							
							<td class="text-left"><?php echo $report['status'];?></td>
							<td class="text-left"><?php echo $report['date_added'];?></td>
						</tr>
							<?php } ?> 
							<?php } else { ?>
						<tr>
							<td class="text-center" colspan="6"><?php echo $text_no_results; ?></td>
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

<script type="text/javascript">
$('#button-filter').on('click', function() {
	var url = 'index.php?route=vendor/review_report&token=<?php echo $token; ?>';
	
	var filter_seller = $('input[name=\'vendor_id\']').val();

	if (filter_seller) {
		url += '&filter_seller=' + encodeURIComponent(filter_seller);
	}

	var filter_customer = $('input[name=\'customer_id\']').val();

	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
		
  location = url;
});
</script>

<script type="text/javascript"><!--
	  
// Seller
$('input[name=\'filter_seller\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/vendor/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					firstname: '<?php echo $text_none; ?>'
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
		$('input[name=\'filter_seller\']').val(item['label']);
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
					firstname: '<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['firstname'],
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