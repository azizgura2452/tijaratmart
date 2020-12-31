<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-left">
      <h1><?php echo $heading_title; ?></h1>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-oldpassword"><?php echo $entry_oldpassword; ?></label>
				<div class="col-sm-10">
					<input type="password" name="oldpassword" value="<?php echo $oldpassword; ?>" placeholder="<?php echo $entry_oldpassword; ?>" id="input-oldpassword" class="form-control" />
				</div>
			</div>
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
				<div class="col-sm-10">
					<input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
					<?php if ($error_password) { ?>
						<div class="text-danger"><?php echo $error_password; ?></div>
					<?php } ?>
				</div>
			</div>
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
				<div class="col-sm-10">
					<input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
					<?php if ($error_confirm) { ?>
						<div class="text-danger"><?php echo $error_confirm; ?></div>
					<?php } ?>
				</div>
			</div>
			<div class="buttons">
				<div class="pull-right">
					<input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
				</div>
			</div>

		</form>
      </div>
    </div>
  </div>
	
<?php echo $footer; ?>
