<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="vendor-list">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <!--/* tmd vendor2 seler condtion  */-->
		<a href="<?php echo $setting; ?>" data-toggle="tooltip" title="<?php echo $button_setting; ?>" class="btn btn-default"><i class="fa fa-cog fa-fw"></i></a>
		<!--/* tmd vendor2 seler condtion  */-->  
        <a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-vendor').submit() : false;"><i class="fa fa-trash-o"></i></button>
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
							<!-- 05 02 2020 -->
							<label class=" control-label" for="input-filter_name"><?php echo $entry_selername;?> </label>
							<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $entry_selername; ?>" id="input-filter_name" class="form-control" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="input-filter_date"><?php echo $column_date; ?></label>
							<div class="input-group date">						
								<input type="text" name="filter_date" value="<?php echo $filter_date; ?>" placeholder="<?php echo $column_date; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
								<span class="input-group-btn">
								<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
								</span>
							</div>
						</div>
					<!-- 05 02 2020 --> 
					
					</div>
					
					<div class="col-sm-4">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-filter_approved"><?php echo $column_approve; ?> </label>
							<select name="filter_approved" id="input-filter_approved" class="form-control">
								<option value=""></option>      
								<?php if ($filter_approved == '1') { ?>    
								<option value="1" selected="selected"><?php echo $text_yes; ?></option>
								 <?php } else { ?>        
								<option value="1"><?php echo $text_yes; ?></option>
								  <?php } ?>
								  <?php if ($filter_approved == '0') { ?>    
								<option value="0" selected="selected"><?php echo $text_no; ?></option>
								<?php } else { ?>
								 <option value="0"><?php echo $text_no; ?></option>
								  <?php } ?>
							</select>
						</div>
						
						<div class="text-center" style="margin-top:40px;">
							<button type="button" id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
						</div>
					</div>
					
					
					<div class="col-sm-4">
						<div class="form-group">
							<label class="control-label" for="input-filter_status"><?php echo $entry_status;?> </label>
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
					</div>
				   
					
				</div>
			</div>
		  
			<form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-vendor">
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>		
								<td class="text-left"><?php if ($sort == 'image') { ?>
								<a href="<?php echo $sort_image; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_image; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_image; ?>"><?php echo $column_image; ?></a>
								<?php } ?></td>								
								<td class="text-left"><?php if ($sort == 'vendorname') { ?>
								<a href="<?php echo $sort_sellername; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_sellername; ?>"><?php echo $column_name; ?></a>
								<?php } ?></td>
								<td class="text-left"><?php echo $column_storename; ?></td>						
								<td class="text-left"><?php if ($sort == 'totalproduct') { ?>
								<a href="<?php echo $sort_totalproduct; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_totalproduct; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_totalproduct; ?>"><?php echo $column_totalproduct; ?></a>
								<?php } ?></td>
								
								<td class="text-left"><?php if ($sort == 'email') { ?>
								<a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_email; ?>"><?php echo $column_email; ?></a>
								<?php } ?></td>
								
								<!--17 02 2020-->
								<td class="text-left"><?php if ($sort == 'date_added') { ?>
								<a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_date_added; ?>"><?php echo $column_date; ?></a>
								<?php } ?></td>
								<!--17 02 2020-->
								<td class="text-left"><?php if ($sort == 'status') { ?>
								<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
								<?php } else { ?>
								<a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
								<?php } ?></td>
								
								<td class="text-right"><?php echo $column_approve; ?></td>
								<td class="text-right"><?php echo $column_action; ?></td>
							</tr>
						</thead>
						<tbody>
							<?php if ($vendors) { ?>
							<?php foreach ($vendors as $vendor) { ?>
							<tr>
							  <td class="text-center"><?php if (in_array($vendor['vendor_id'], $selected)) { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $vendor['vendor_id']; ?>" checked="checked" />
								<?php } else { ?>
								<input type="checkbox" name="selected[]" value="<?php echo $vendor['vendor_id']; ?>" />
								<?php } ?></td>
								<td class="text-center"><?php if ($vendor['image']) { ?>
								<img src="<?php echo $vendor['image']; ?>" alt="" class="img-thumbnail" />
								<?php } else { ?>
								<span class="img-thumbnail list"><i class="fa fa-camera fa-2x"></i></span>
								<?php } ?></td>
								<!--17 02 2020 -->
								<td class="text-left"><?php echo $vendor['sellername']; ?></td>
								<td class="text-left"><?php echo $vendor['vendorstorename']; ?></td>
								<td class="text-left">
									<span class="label <?php if ($vendor['totalproduct']==0) { ?> label-danger <?php } else { ?> label-success<?php } ?>">										
									<?php echo $vendor['totalproduct']; ?></span>
								</td>
								<!--17 02 2020 -->
								<td class="text-left"><?php echo $vendor['email']; ?></td>
								<td class="text-left"><span style="font-size:12px;" class="label btn-info"> <i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo $vendor['date_added']; ?></span></td>
								
								<td class="text-left">
								<span class="label <?php if ($vendor['status']=='Disable') { ?> label-danger <?php } elseif($vendor['status']=='Waiting for Approved') { ?> label-warning <?php } else { ?> label-success <?php } ?>">										
								<?php echo $vendor['status']; ?></span>
								</td>
								<td class="text-right">
									<?php if ($vendor['approve']) { ?>
									<a href="<?php echo $vendor['approve']; ?>" data-toggle="tooltip" title="<?php echo $button_approve; ?>" class="btn btn-success"><i class="fa fa-thumbs-o-up"></i></a>
									<?php } else { ?>
									<button type="button" class="btn btn-danger" disabled><i class="fa fa-thumbs-o-up"></i></button>
									<?php } ?>
									
									<?php if ($vendor['disapproved']) { ?>
									<a href="<?php echo $vendor['disapproved']; ?>" data-toggle="tooltip" title="<?php echo $button_desapprove; ?>" class="btn btn-success"><i class="fa fa-thumbs-o-down"></i></a>
									<?php } else { ?>
									<button type="button" class="btn btn-success" disabled><i class="fa fa-thumbs-o-down"></i></button>
									<?php } ?>
								</td>
							  <td class="text-right"><a href="<?php echo $vendor['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
							</tr>
							<?php } ?>
							<?php } else { ?>
							<tr>
							<td class="text-center" colspan="10"><?php echo $text_no_results; ?></td>
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
	/* 18 02 2020 */
	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}

	var filter_date = $('input[name=\'filter_date\']').val();

	if (filter_date) {
		url += '&filter_date=' + encodeURIComponent(filter_date);
	}
	
	
	var filter_approved = $('select[name=\'filter_approved\']').val();

	if (filter_approved !== '') {
		url += '&filter_approved=' + encodeURIComponent(filter_approved);
	}
	/* 18 02 2020 */
	
		
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
/* new code vendor filter */
/* 18 02 2020 update filter_firstname to filter_name and vendorname */
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
		$('input[name=\'rf_id\']').val(item['value']);
	}
});
/* new code vendor filter */
//--></script>
<!--18 02 2020-->
<style>
.vendor-list .label{font-size:12px;}
</style>
<!--18 02 2020-->
<?php echo $footer; ?>