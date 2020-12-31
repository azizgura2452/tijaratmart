<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
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
						  <label class="control-label" for="input-filter_name"><?php echo $column_seller; ?></label>
						  <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $column_seller; ?>" id="input-filter_name" class="form-control"/>
						  <input type="hidden" name="vendor_id" value="<?php echo $filter_vendor; ?>"/>
					</div>
				</div>
				<!--02-june-2018-->
				<div class="col-sm-5">
			      <div class="form-group">
			        <label class="control-label"><?php echo $column_date; ?></label>
			        <div class="input-group ">
			          <span class="input-group-addon">
			            <?php echo $entry_from;?>
			          </span>
			          <input type="text" name="filter_from" value="<?php echo $filter_from;?>" class="form-control date" data-date-format="YYYY-MM-DD" id="input-filter_form"/>
			          <span class="input-group-addon ">
			            <?php echo $entry_to;?>
			          </span>
			          <input type="text" name="filter_to" value="<?php echo $filter_to;?>" class="form-control date" data-date-format="YYYY-MM-DD" id="input-filter_to"/>
			        </div>
			      </div>
			    </div>
			    <!--02-june-2018-->
				<div class="col-sm-4 text-center">
					<button type="button" style="margin-top:12%;" id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
				</div>
			</div>
		</div>	  
    <form action="" method="post" enctype="multipart/form-data" id="form-commission">
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
				<thead>
					<tr>
						<td class="text-left"><?php if ($sort == 'seller') { ?>
							<a href="<?php echo $sort_seller; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_seller; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_seller; ?>"><?php echo $column_seller; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'name') { ?>
							<a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'model') { ?>
							<a href="<?php echo $sort_model; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_model; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_model; ?>"><?php echo $column_model; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'qty') { ?>
							<a href="<?php echo $sort_qty; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_qty; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_qty; ?>"><?php echo $column_qty; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'price') { ?>
							<a href="<?php echo $sort_price; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_price; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_price; ?>"><?php echo $column_price; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'percentage') { ?>
							<a href="<?php echo $sort_percentage; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_percentage; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_percentage; ?>"><?php echo $column_percentage; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'fixed') { ?>
							<a href="<?php echo $sort_fixed; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_fixed; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_fixed; ?>"><?php echo $column_fixed; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php echo $column_total; ?></td>
						
						<td class="text-left"><?php if ($sort == 'date') { ?>
							<a href="<?php echo $sort_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_date; ?>"><?php echo $column_date; ?></a>
							<?php } ?>
						</td>
							
					</tr>
				</thead>
					<?php if ($commissionreports) { ?>
					<?php foreach ($commissionreports as $report) { ?>
					<tr>
						<td class="text-left"><?php echo $report['sellername']; ?></td>
						<td class="text-left"><?php echo $report['name']; ?></td>
						<td class="text-left"><?php echo $report['model']; ?></td>
						<td class="text-left"><?php echo $report['quantity']; ?></td>
						<td class="text-left"><?php echo $report['price']; ?></td>
						<td class="text-left"><?php echo $report['commissionper']; ?></td>
						<td class="text-left"><?php echo $report['commissionfix']; ?></td>
						<td class="text-left"><?php echo $report['totalcommission']; ?></td>
						<td class="text-left"><?php echo $report['date_added']; ?></td>
					</tr>
						<?php } ?> 
						<?php } else { ?>
					<tr>
						<td class="text-center" colspan="10"><?php echo $text_no_results; ?></td>
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
	var url = 'index.php?route=vendor/commission_report&token=<?php echo $token; ?>';
	
	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	/* 11 02 2020 */
	var filter_vendor = $('input[name=\'vendor_id\']').val();

	if (filter_vendor) {
		url += '&filter_vendor=' + encodeURIComponent(filter_vendor);
	}
	/* 11 02 2020 */	
	var filter_from = $('input[name=\'filter_from\']').val();

	if (filter_from) {
		url += '&filter_from=' + encodeURIComponent(filter_from);
	}
	
	var filter_to = $('input[name=\'filter_to\']').val();

	if (filter_to) {
		url += '&filter_to=' + encodeURIComponent(filter_to);
	}
	
		
  location = url;
});
</script>

<script type="text/javascript"><!--
/* 05 02 2020 update vendorname firstname pe */  	  
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
$('.date').datetimepicker({
	pickTime: false
});
//--></script>

<?php echo $footer; ?>