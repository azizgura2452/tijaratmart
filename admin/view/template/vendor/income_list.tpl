<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
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
						<div class="col-sm-4">
							<div class="form-group">
								<label class="control-label" for="input-filter_name"><?php echo $column_seller; ?></label>
								<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $column_seller; ?>" id="input-filter_name" class="form-control"/>
								<input type="hidden" name="vendor_id" value="<?php echo $filter_vendor; ?>"/>
							</div>
							<button type="button"  id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
						</div>
						
						
						<div class="col-sm-4 hide">
							<div class="form-group">
								<label class="control-label"><?php echo $entry_t_amount; ?></label>
								
								<div class="input-group date">
									<input type="text" name="filter_total_amount_from" value="<?php echo $filter_total_amount_from; ?>" data-date-format="YYYY-MM-DD" placeholder="YYYY-MM-DD" id="input-filter_date" class="form-control" />
									<span class="input-group-btn">
									<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
									</span>
								</div>
								  
								
							</div>
						</div>
						<div class="col-sm-4 hide">
							<div class="form-group">
								<label class="control-label"><?php echo $entry_a_amount; ?></label>
								<div class="input-group">
									<span class="input-group-addon">
										<?php echo $entry_from; ?></span>
									<input type="text" class="form-control" placeholder="<?php echo $entry_from; ?>" name="filter_admin_amount_from" value="<?php echo $filter_admin_amount_from; ?>" />
									<span class="input-group-addon">
										<?php echo $entry_to; ?></span>
									<input type="text" class="form-control" placeholder="<?php echo $entry_to; ?>" name="filter_admin_amount_to" value="<?php echo $filter_admin_amount_to; ?>" />
								</div>
							</div>
						</div>
						<div class="col-sm-4 hide">
							<div class="form-group">
								<label class="control-label"><?php echo $entry_s_amount; ?></label>
								<div class="input-group">
									<span class="input-group-addon">
										<?php echo $entry_from; ?>									</span>
									<input type="text" class="form-control" placeholder="<?php echo $entry_from; ?>" name="filter_seller_amount_from" value="<?php echo $filter_seller_amount_from; ?>" />
									<span class="input-group-addon">
										<?php echo $entry_to; ?>									</span>
									<input type="text" class="form-control" placeholder="To" name="filter_seller_amount_to" value="<?php echo $filter_seller_amount_to; ?>" />
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label class="control-label"><?php echo $column_date; ?></label>
								<div class="input-group datefrom">
									<input type="text" name="filter_date_added_from" value="<?php echo $filter_date_added_from; ?>" data-date-format="YYYY-MM-DD" placeholder="YYYY-MM-DD" id="input-filter_date_added_from" class="form-control" />
									
									<span class="input-group-btn">
									<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
									</span>
								</div><br/>
								
								<div class="input-group dateto">
									<input type="text" class="form-control filter_date_added_to" data-date-format="YYYY-MM-DD" placeholder="YYYY-MM-DD" name="filter_date_added_to" value="<?php echo $filter_date_added_to; ?>" />
									
									<span class="input-group-btn">
									<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
									</span>
								</div>
							</div>
						</div>	
						<div class="col-sm-4 example" >	
						<b>(Total Amount +  Tax) + <br/>Shipping Amount -	<br/>Admin Amount =	Seller Amount</b>
 						</div>
					</div>
				</div>
			 
				<form action="" method="post" enctype="multipart/form-data" id="form-income">
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
									
									<td class="text-left"><?php if ($sort == 'tamount') { ?>
										<a href="<?php echo $sort_tamount; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_tamount; ?></a>
										<?php } else { ?>
										<a href="<?php echo $sort_tamount; ?>"><?php echo $column_tamount; ?></a>
										<?php } ?>
									</td>

									<td class="text-left"><?php if ($sort == 'admin_amount') { ?>
										<a href="<?php echo $sort_admin_amount; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_admin_amount; ?></a>
										<?php } else { ?>
										<a href="<?php echo $sort_admin_amount; ?>"><?php echo $column_admin_amount; ?></a>
										<?php } ?>
									</td>
									<!-- 07 04 2020 -->	
									<td class="text-left"><?php echo $column_shipingamount; ?></td>
									<!-- 07 04 2020 -->	
									<td class="text-left"><?php if ($sort == 'samount') { ?>
										<a href="<?php echo $sort_samount; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_samount; ?></a>
										<?php } else { ?>
										<a href="<?php echo $sort_samount; ?>"><?php echo $column_samount; ?></a>
										<?php } ?>
									</td>					
									<td class="text-left"><?php echo $column_paid; ?></td>
									<td class="text-left"><?php echo $column_remaining; ?></td>
									
									<td class="text-left"><?php echo $column_date_added; ?></td>
									
									<td class="text-right"><?php echo $column_action; ?></td>	
								</tr>
							
							</thead>
							<?php if ($incomes) { ?>
								<?php foreach ($incomes as $income) { ?>
									<tr>
										
										<td class="text-left"><?php echo $income['sellername']; ?></td>
										
										<td class="text-left"><?php echo $income['total']; ?></td>				
										<td class="text-left"><?php echo $income['totalcommission']; ?></td>
										<!-- 07 04 2020 -->
										<td class="text-left"><?php echo $income['tmdshippingcost']; ?></td>
										<!-- 07 04 2020 -->
										<td class="text-left"><?php echo $income['totalamount']; ?></td>
										<td class="text-left"><?php echo $income['payamount']; ?></td>
										<td class="text-left"><?php echo $income['remaining_amount']; ?></td>
										
										<td class="text-left"><?php echo $income['date_added']; ?></td>
										
										<td class="text-right">
									
										<?php if ($income['remaining_amount']) { ?>					
											<a href="<?php echo $income['payment']; ?>" target="new" data-toggle="tooltip" title="<?php echo $button_pay; ?>"><button type="button" tagetnew class="btn btn-primary"> <?php echo $button_pay; ?> <?php echo $income['remaining_amount']; ?></button></a>
											<?php } ?>
									   
										</td>
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
<!-- 09 06 2018 -->
<script type="text/javascript">
$('#button-filter').on('click', function() {
	var url = 'index.php?route=vendor/income&token=<?php echo $token; ?>';
	
	
	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	var filter_vendor = $('input[name=\'vendor_id\']').val();

	if (filter_vendor) {
		url += '&filter_vendor=' + encodeURIComponent(filter_vendor);
	}
	
	
	var filter_date_added_from = $('input[name=\'filter_date_added_from\']').val();

	if (filter_date_added_from) {
		url += '&filter_date_added_from=' + encodeURIComponent(filter_date_added_from);
	}

	var filter_date_added_to = $('input[name=\'filter_date_added_to\']').val();

	if (filter_date_added_to) {
		url += '&filter_date_added_to=' + encodeURIComponent(filter_date_added_to);
	}
			
  location = url;
});
</script>


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
	$('.datefrom').datetimepicker({
		pickTime: false
	});
	$('.dateto').datetimepicker({
		pickTime: false
	}); 
//--></script>
<style>
.example{
	margin-top: 35px;
    background: #ddd;
    padding: 20px;
    text-align: center;}
</style>
<?php echo $footer; ?>