<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
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
				<div class="col-sm-4">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-filter_id"><?php echo $column_id;?> </label>
						<input type="text" name="filter_id" value="<?php echo $filter_id; ?>" placeholder="<?php echo $column_id; ?>" id="input-filter_id" class="form-control" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-filter_category"><?php echo $column_category;?> </label>
						<input type="text" name="filter_category" value="<?php echo $filter_category; ?>" placeholder="<?php echo $column_category; ?>" id="input-filter_category" class="form-control" />
						<input type="hidden" name="category_id" value="<?php echo $filter_categoryname; ?>"/>
					</div>
				</div>
				<div class="col-sm-4 text-center">
					<button type="button" style="margin-top:11%;" id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
				</div>
			</div>
		</div>
		  
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-commission">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
					
					<td class="text-left"><?php if ($sort == 'id') { ?>
						<a href="<?php echo $sort_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_id; ?></a>
						<?php } else { ?>
						<a href="<?php echo $sort_id; ?>"><?php echo $column_id; ?></a>
						<?php } ?>
					</td>
					<td class="text-left"><?php if ($sort == 'category') { ?>
						<a href="<?php echo $sort_category; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_category; ?></a>
						<?php } else { ?>
						<a href="<?php echo $sort_category; ?>"><?php echo $column_category; ?></a>
						<?php } ?>
					</td>
					<td class="text-left"><?php if ($sort == 'commission') { ?>
						<a href="<?php echo $sort_commission; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_commission; ?></a>
						<?php } else { ?>
						<a href="<?php echo $sort_commission; ?>"><?php echo $column_commission; ?></a>
						<?php } ?>
					</td>
					<td class="text-right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($categories) { ?>
                <?php foreach ($categories as $category) { ?>
                <tr>
                  <td class="text-center"><?php if (in_array($category['commission_id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $category['commission_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $category['commission_id']; ?>" />
                    <?php } ?></td>
                  <td class="text-left"><?php echo $category['commission_id']; ?></td>
                  <td class="text-left"><?php echo $category['catnames']; ?></td>
                  <td class="text-left">Fixed - <?php echo $category['fixed']; ?> + Percentage <?php echo $category['percentage']; ?> - %</td>
                  <td class="text-right"><a href="<?php echo $category['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
					
				  </td>
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
	var url = 'index.php?route=vendor/commission&token=<?php echo $token; ?>';
	
	/* 17 02 2020 */
	var filter_category = $('input[name=\'filter_category\']').val();

	if (filter_category) {
		url += '&filter_category=' + encodeURIComponent(filter_category);
	}
		
	var filter_categoryname = $('input[name=\'category_id\']').val();

	if (filter_categoryname) {
		url += '&filter_categoryname=' + encodeURIComponent(filter_categoryname);
	}
	/* 17 02 2020 */
	
	var filter_id = $('input[name=\'filter_id\']').val();

	if (filter_id) {
		url += '&filter_id=' + encodeURIComponent(filter_id);
	}
			
  location = url;
});
</script>

<script type="text/javascript">
$('input[name=\'filter_category\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					category_id: 0,
					name:'<?php echo $text_none; ?>'
				});

				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['category_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_category\']').val(item['label']);
		$('input[name=\'category_id\']').val(item['value']);
	}
});
</script>

<?php echo $footer; ?>