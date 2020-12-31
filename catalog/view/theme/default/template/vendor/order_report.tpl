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
    <div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
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
						<input type="text" name="filter_order_id" value="<?php echo $filter_order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" class="form-control" />
					</div>
				</div>
				
				<div class="col-sm-4">
					<button type="button" id="button-filter" style="margin-top:12%;" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
				</div>
			</div>
		</div>	  
    <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-report">
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
				<thead>
					<tr>
						<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
						<td class="text-left"><?php if ($sort == 'o.order_id') { ?>
							<a href="<?php echo $sort_order_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_order_id; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_order_id; ?>"><?php echo $column_order_id; ?></a>
							<?php } ?>
						</td>
						<!--03 10 2019-->
						<td class="text-center"><?php echo $column_noofproduct; ?></td>
						<!--03 10 2019-->
						<td class="text-left"><?php if ($sort == 'o.customer') { ?>
							<a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_customer; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_customer; ?>"><?php echo $column_customer; ?></a>
							<?php } ?>
						</td>
										
						<td class="text-left"><?php if ($sort == 'o.status') { ?>
							<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
							<?php } ?>
						</td>
						
						<td class="text-left"><?php if ($sort == 'vop.date') { ?>
							<a href="<?php echo $sort_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
							<?php } else { ?>
							<a href="<?php echo $sort_date; ?>"><?php echo $column_date; ?></a>
							<?php } ?>
						</td>
						<td class="text-left"><?php echo $column_total; ?></td>	
						<td class="text-center"><?php echo $column_action; ?></td>
					</tr> 
				</thead>
				<?php if ($reports) { ?>
					<?php foreach ($reports as $report) { ?>
					<tr>
						<td class="text-center"><?php if (in_array($report['order_product_id'], $selected)) { ?>
							<input type="checkbox" name="selected[]" value="<?php echo $report['order_product_id']; ?>" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="selected[]" value="<?php echo $report['order_product_id']; ?>" />
							<?php } ?>
						</td>
						<td class="text-left"><?php echo $report['order_id']; ?></td>
						<!--03 10 2020-->
						<td class="text-center">
							<?php if ($report['noofproduct']==1) { ?>
								<span class="label label-info"><?php echo $report['noofproduct']; ?></span>
							<?php } else { ?>
								<span class="label label-success"><?php echo $report['noofproduct']; ?></span>
							<?php } ?>
						</td>
						<!--03 10 2020-->
						<td class="text-left"><?php echo $report['firstname']; ?></td>						
						<td class="text-left">
							<span class="label <?php if ($report['order_status_id']=='1') { ?> label-danger <?php } elseif ($report['order_status_id']=='5') { ?> label-success <?php } else { ?>label-warning <?php } ?>"><?php echo $report['statusname']; ?></span>
						</td>							
						<td class="text-left"><span style="font-size:12px;" class="label btn-info"><i class="fa fa-clock-o" aria-hidden="true"></i>  <?php echo $report['date_added']; ?></span></td>
						<td class="text-left"><?php echo $report['total']; ?></td>
						<td class="text-center"><a href="<?php echo $report['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-primary"><i class="fa fa-eye"></i></a></td>
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
<script type="text/javascript">
	$('#button-filter').on('click', function() {
		var url = 'index.php?route=vendor/order_report';
		
		var filter_order_id = $('input[name=\'filter_order_id\']').val();

		if (filter_order_id) {
			url += '&filter_order_id=' + encodeURIComponent(filter_order_id);
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
<?php echo $footer; ?>