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
        
        <form action="" method="post" enctype="multipart/form-data" id="form-review">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
				<thead>
				  <tr>
					<td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
					
					<td class="text-left"><?php if ($sort == 'vendor') { ?>
						<a href="<?php echo $sort_vendor; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_vendor; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_vendor; ?>"><?php echo $column_vendor; ?></a>
					<?php } ?>
					</td>
					
					<td class="text-left"><?php if ($sort == 'name') { ?>
						<a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
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
					<?php if (isset($stores)) { ?>
						<?php foreach ($stores as $store) { ?>
					<tr>
						 <td class="text-center"><?php if (in_array($store['vendor_id'], $selected)) { ?>
									<input type="checkbox" name="selected[]" value="<?php echo $store['vendor_id']; ?>" checked="checked" />
									<?php } else { ?>
									<input type="checkbox" name="selected[]" value="<?php echo $store['vendor_id']; ?>" />
									<?php } ?></td>
						
						<td class="text-left"><?php echo $store['display_name']; ?></td>
						<td class="text-left"><?php echo $store['name']; ?></td>
						<td class="text-left"><?php echo $store['cnames']; ?></td>
						<td class="text-left"><?php echo $store['znames']; ?></td>
						<td class="text-right">
						<a href="<?php echo $store['view']; ?>" title="<?php echo $button_view; ?>" class="btn btn-default"><i class="fa fa-eye"></i></a></td>
					</tr>
					<?php } ?> 
					<?php } else { ?>
					<tr>
						<td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
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
<?php echo $footer; ?>