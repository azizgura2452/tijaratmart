<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-manufacturer').submit() : false;"><i class="fa fa-trash-o"></i></button>
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
				<form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-manufacturer">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
							
									<td class="text-left"><?php if ($sort == 'name') { ?>
										 <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
										<?php } else { ?>
										 <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
										<?php } ?>
									</td>
									
									<td class="text-left"><?php if ($sort == 'vendorname') { ?>
										 <a href="<?php echo $sort_vendorname; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_vendorname; ?></a>
										<?php } else { ?>
										 <a href="<?php echo $sort_vendorname; ?>"><?php echo $column_vendorname; ?></a>
										<?php } ?>
									</td>
									
									<td class="text-left"><?php if ($sort == 'country') { ?>
										 <a href="<?php echo $sort_country; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_country; ?></a>
										<?php } else { ?>
										 <a href="<?php echo $sort_country; ?>"><?php echo $column_country; ?></a>
										<?php } ?>
									</td>
									
									<td class="text-left"><?php if ($sort == 'zone') { ?>
										 <a href="<?php echo $sort_zone; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_zone; ?></a>
										<?php } else { ?>
										 <a href="<?php echo $sort_zone; ?>"><?php echo $column_zone; ?></a>
										<?php } ?>
									</td>
									
								  <td class="text-right"><?php echo $column_action; ?></td>
								</tr>
							</thead>
							<tbody>
								<?php if ($stores) { ?>
								<?php foreach ($stores as $store) { ?>
								<tr>
								  <td class="text-center"><?php if (in_array($store['vs_id'], $selected)) { ?>
									<input type="checkbox" name="selected[]" value="<?php echo $store['vs_id']; ?>" checked="checked" />
									<?php } else { ?>
									<input type="checkbox" name="selected[]" value="<?php echo $store['vs_id']; ?>" />
									<?php } ?></td>
								  <td class="text-left"><?php echo $store['name']; ?></td>
								  <td class="text-left"><?php echo $store['vname']; ?></td>
								  <td class="text-left"><?php echo $store['mcountry']; ?></td>
								  <td class="text-left"><?php echo $store['mzone']; ?></td>
								  <td class="text-right"><a href="<?php echo $store['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
								</tr>
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
	var url = 'index.php?route=vendor/vendor&token=<?php echo $token; ?>';
	
	var filter_firstname = $('input[name=\'filter_firstname\']').val();

	if (filter_firstname) {
		url += '&filter_firstname=' + encodeURIComponent(filter_firstname);
	}
	
	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status) {
		url += '&filter_status=' + encodeURIComponent(filter_status);
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
<?php echo $footer; ?>