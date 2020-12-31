<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-field').submit() : false;"><i class="fa fa-trash-o"></i></button>
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
						<label class="col-sm-2 control-label" for="input-filter_name"><?php echo $entry_name;?> </label>
						<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-filter_name" class="form-control" />
					</div>
				</div>
				<div class="col-sm-4">
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
				</div>
				<div class="col-sm-4 text-center">
					<button type="button" style="margin-top:40px;" id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
				</div>
			</div>
		</div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-field">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
				<thead>
					<tr>
						<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
						<td class="text-left"><?php if ($sort == 'field_name') { ?>
						<a href="<?php echo $sort_field_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
						<?php } else { ?>
						<a href="<?php echo $sort_field_name; ?>"><?php echo $column_name; ?></a>
						<?php } ?></td>
							<td class="text-left"><?php if ($sort == 'sort_order') { ?>
						<a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sort_order; ?></a>
							<?php } else { ?>
						<a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
						<?php } ?></td>
						<td class="text-left"><?php if ($sort == 'status') { ?>
						<a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
						<?php } else { ?>
						<a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
						<?php } ?></td>
						<td class="text-right"><?php echo $column_action; ?></td>
					</tr>
				</thead>
              <tbody>
				<?php if ($review_fields) { ?>
                <?php foreach ($review_fields as $review_field) { ?>
				<tr>
					<td class="text-center"><?php if (in_array($review_field['rf_id'], $selected)) { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $review_field['rf_id']; ?>" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="selected[]" value="<?php echo $review_field['rf_id']; ?>" />
						<?php } ?>
					</td>
					<td class="text-left"><?php echo $review_field['field_name']; ?></td>
					<td class="text-left"><?php echo $review_field['sort_order']; ?></td>
					<td class="text-left"><?php echo $review_field['status']; ?></td>
					<td class="text-right"><a href="<?php echo $review_field['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="5"><?php echo $text_no_results; ?></td>
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
	var url = 'index.php?route=vendor/review_field&token=<?php echo $token; ?>';
	
	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}
		
	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
  location = url;
});
/* new code vendor filter */

$('input[name=\'filter_name\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/review_field/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					rf_id: 0,
					field_name: '<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['field_name'],
						value: item['rf_id']
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
</script>

<?php echo $footer; ?>