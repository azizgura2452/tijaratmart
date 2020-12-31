<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-commission" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
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
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-commission" class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-category"><?php echo $entry_category; ?></label>
				<div class="col-sm-10">
					<select name="category_id" id="input-category" class="form-control">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($categories as $category) { ?>
						<?php if ($category['category_id'] == $category_id) { ?>
						<option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
					<!--update /* 21 02 2019 */ -->
					<?php if ($error_category_id) { ?>
						<div class="text-danger"><?php echo $error_category_id; ?></div>
					<?php } ?>
					<!--update /* 21 02 2019 */ -->
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-commission"><span data-toggle="tooltip" title="<?php echo $help_commission; ?>"><?php echo $entry_commission; ?></span></label>
				<div class="col-sm-10">
				<!--update /* 21 02 2019 */ -->
					<div class="input-group">                
						<input type="text" class="form-control" name="fixed" value="<?php echo $fixed; ?>" />
						<span class="input-group-addon"> <b>Fixed</b> </span>
					</div>
					&nbsp; &nbsp; +  &nbsp; &nbsp; 
					<div class="input-group">
						<input type="text" class="form-control" name="percentage" value="<?php echo $percentage; ?>" />
						<span class="input-group-addon"> <b>%</b> </span>
					</div>
					<!--update /* 21 02 2019 */ -->
				</div>
			</div>  
				
			<!--<div class="form-group">
                <label class="col-sm-2 control-label" for="input-commission"><span data-toggle="tooltip" title="<?php echo $help_commission; ?>"><?php echo $entry_commission; ?></span></label>
                <div class="col-sm-10">
					<div class="input-group">
						<input type="text" name="commission" value="0" id="input-fixed" class="form-control" />
						<span class="input-group-btn">
							<button type="button" class="btn btn-default">Fixed</button>
						</span>
						
					</div>
					+
					<div class="form-group">
						<div class="col-sm-12">
						<div class="input-group">
							
							<input type="text" name="commission" value="0" id="input-percentage" class="form-control" />
							<span class="input-group-btn">
								<button type="button" class="btn btn-default">%</button>
							</span>
							</div>
						</div>
					</div>
                </div>
				
            </div>-->
			
        </form>
      </div>
    </div>
  </div>
</div>

<?php echo $footer; ?>