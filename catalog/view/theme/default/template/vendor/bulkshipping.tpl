<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      
      <h1><?php echo $heading_bulktitle; ?></h1>
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
			<h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_bulklist; ?></h3>
		</div>
		<div class="panel-body">
			<div class="well">
				<div class="row">
					<div class="col-sm-12" style="text-align:left;">
					<div>
						<label class="control-label col-form-label" for="input-name" style="  font-weight: normal; "><?php echo $entry_time_allowed;?></label><label style="font-weight: bold;"><?php echo $timeallowed;?></label>
					</div>
					<div>
						<label class="control-label col-form-label" for="input-name" style=" font-weight: normal "><?php echo $entry_file_size;?></label><label style="font-weight: bold;"><?php echo $filesize;?></label>
					</div>
				</div>
			</div>
		</div>
		<form action="<?php echo $export; ?>" method="post" enctype="multipart/form-data" id="export">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-download"></i><?php echo $entry_export; ?></h3>
			</div>
			<div class="well">
				<div class="form-group">
					<input type="submit" value="<?php echo $entry_export; ?>" class="btn btn-primary" class="button_add"  style=" padding: 8px 20px 8px 20px; " >
				</div>
			</div>
		</form>
		<form action="<?php echo $import; ?>" method="post" enctype="multipart/form-data" id="import">
			<div class="panel-heading">
				<h3 class="panel-title "><i class="fa fa-upload"></i> <?php echo $entry_upload; ?></h3>
			</div>
			<div class="well">
				<div class="form-group">
					<input type="file" style="height:35px; margin-top: 22px;"  name="import">
				</div>
				<div class="form-group">
					<button class="btn btn-primary"><?php echo $button_upload; ?></button>
				</div>
			</div>

		</form>
    </div>
  </div>
</div>



<?php echo $footer; ?>