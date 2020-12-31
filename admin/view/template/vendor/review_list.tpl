<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-review').submit() : false;"><i class="fa fa-trash-o"></i></button>
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
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-filter_name"><?php echo $column_seller; ?></label>
							<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $column_seller; ?>" id="input-filter_name" class="form-control" />
							<input type="hidden" name="vendor_id" value="<?php echo $filter_vendor; ?>" />
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-filter_customer"><?php echo $column_customer; ?></label>
							<input type="text" name="filter_customer" value="<?php echo $filter_customer_name; ?>" placeholder="<?php echo $column_customer; ?>" id="input-filter_customer" class="form-control" />
							<input type="hidden" name="customer_id" value="<?php echo $filter_customer; ?>"/>
						</div>
						
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-filter_status"><?php echo $entry_status;?> </label>
							<select name="filter_status" id="input-status" class="form-control">
						  <option value="*"></option>
						  <?php if ($filter_status) { ?>
						  <option value="1" selected="selected"><?php echo $text_enable; ?></option>
						  <?php } else { ?>
						  <option value="1"><?php echo $text_enable; ?></option>
						  <?php } ?>
						  <?php if (!$filter_status && !is_null($filter_status)) { ?>
						  <option value="0" selected="selected"><?php echo $text_disable; ?></option>
						  <?php } else { ?>
						  <option value="0"><?php echo $text_disable; ?></option>
						  <?php } ?>
						</select>
						</div>
						<div class="form-group">
							<label class="control-label" for="input-filter_date"><?php echo $column_date; ?></label>
							<div class="input-group date">
								<input type="text" name="filter_date" value="<?php echo $filter_date; ?>" data-date-format="YYYY-MM-DD" placeholder="YYYY-MM-DD" id="input-filter_date" class="form-control" />
								<span class="input-group-btn">
								<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
								</span>
							</div>
						</div>
						<button type="button" id="button-filter" class="btn btn-primary  col-sm-12 "><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
					</div>
				</div>
			</div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-review">
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
							<td class="text-left"><?php echo $column_reviewinfo; ?></td>	
							
							<td class="text-left"><?php if ($sort == 'date') { ?>
								<a href="<?php echo $sort_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_date; ?>"><?php echo $column_date; ?></a>
								<?php } ?>
							</td>
							
							<td class="text-left"><?php if ($sort == 'status') { ?>
								<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
								<?php } ?>
							</td>
							
							<td class="text-right"><?php echo $column_action; ?></td>
						</tr>
					</thead>
					<tbody>
						<?php if ($reviews) { ?>
						<?php foreach ($reviews as $review) { ?>
						<tr>
							<td class="text-center"><?php if (in_array($review['review_id'], $selected)) { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $review['review_id']; ?>" checked="checked" />
								<?php } else { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $review['review_id']; ?>" />
								<?php } ?>
							</td>
							<td class="text-left"><?php echo $review['sname']; ?></td>
							<td class="text-left">
								<!--18-02-2020 start-->
								<p><b><?php echo $review['cname']; ?></b></p>
								<p><?php echo $review['text']; ?></p>
								<!--18-02-2020 start-->
							</td>
							<td class="text-left"><span class="label btn-info"><i class="fa fa-clock-o" aria-hidden="true"></i><?php echo $review['date_added']; ?></td>
							
							<td class="text-left"><span class="label <?php if ($review['status']=='Disable') { ?>label-danger <?php } else { ?> label-success <?php } ?>"> <?php echo $review['status']; ?></td>
							
							<td class="text-right"><a href="<?php echo $review['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
							</td>
						</tr>
						
						<!--18-02-2020 start-->
						<div class="modal fade" id="viewfullreview<?php echo $review['review_id']; ?>" role="dialog">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header col-sm-12">
									 <h4 class="modal-title col-sm-6"><?php echo $review['cname']; ?></h4>
										<div class="rating col-sm-6 text-right">
											<ul class="list-unstyled value">
												<li>
													<?php foreach ($review['reviewvalue'] as $sellerrating) { ?>
													
														<div class="rating">
														  <span class="filedrating"><?php echo $sellerrating['field_name']; ?>:</span>
															<?php for ($i = 1; $i <= 5; $i++) { ?>
																<?php if ($sellerrating['value'] < $i ) { ?>
																
																<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
																<?php } else { ?>
																<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																<?php } ?>
															 <?php } ?>
														</div>
													 <?php } ?>
												</li>
											</ul>
										</div>
									</div><div class="clearfix"></div>
									<div class="modal-body">
									  <?php echo $review['fulltext']; ?>
									</div>
									<div class="modal-footer">
									  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					<!--18-02-2020 end-->
					
						<?php } ?>
						<?php } else { ?>
						<tr>
							<td class="text-center" colspan="6"><?php echo $text_no_results; ?></td>
						</tr>
						<?php } ?>
					</tbody>
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
	var url = 'index.php?route=vendor/review&token=<?php echo $token; ?>';
	
	
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


	var filter_customer = $('input[name=\'customer_id\']').val();

	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
	
	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}
	/* 11 02 2020 */
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
//--></script>

<script type="text/javascript">
$('input[name=\'filter_customer\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/review/autocomplete&token=<?php echo $token; ?>&filter_customer=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					customer_id: 0,
					name:'<?php echo $text_none; ?>'
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
<script type="text/javascript">
$('input[name=\'filter_name\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/vendor/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					vendorname:'<?php echo $text_none; ?>'
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

<!--18 02 2020-->
<style>
.label{font-size:12px;}
.modal-content .rating .fa {
    color: #EE7439;
    font-size: 15px;
    margin: 0px;
    height: 20px;
    width: 20px;
}
.readmore{cursor:pointer;font-weight:bold;}
</style>
<!--18 02 2020-->
<?php echo $footer; ?>