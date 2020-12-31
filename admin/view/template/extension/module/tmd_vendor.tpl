<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-tmd_vendor" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-tmd_vendor" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-6">
              <select name="tmd_vendor_status" id="input-status" class="form-control">
                <?php if ($tmd_vendor_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-bgcolor"><?php echo $entry_bgcolor; ?></label>
            <div class="col-sm-6">
              <input type="text" name="tmd_vendor_bgcolor" value="<?php echo $tmd_vendor_bgcolor; ?>" placeholder="<?php echo $entry_bgcolor; ?>" id="input-bgcolor" class="form-control demo" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-textcolor"><?php echo $entry_textcolor; ?></label>
            <div class="col-sm-6">
              <input type="text" name="tmd_vendor_textcolor" value="<?php echo $tmd_vendor_textcolor; ?>" placeholder="<?php echo $entry_textcolor; ?>" id="input-textcolor" class="form-control demo" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-imgsize"><?php echo $entry_imgsize; ?></label>
            <div class="col-sm-3">
              <input type="text" name="tmd_vendor_imgwidth" value="<?php echo $tmd_vendor_imgwidth; ?>" placeholder="<?php echo $entry_imgwidth; ?>" id="input-imgsize" class="form-control" />
            </div>
            <div class="col-sm-3">
              <input type="text" name="tmd_vendor_imgheight" value="<?php echo $tmd_vendor_imgheight; ?>" placeholder="<?php echo $entry_imgheight; ?>" id="input-imgsize" class="form-control" />
            </div>
          </div>
		  
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-imagetype"><?php echo $entry_imgbotrder; ?></label>
            <div class="col-sm-6">
              <select name="tmd_vendor_imagetype" id="input-imagetype" class="form-control">
                <?php if ($tmd_vendor_imagetype=='round') { ?>
                <option value="round" selected="selected"><?php echo $entry_round; ?></option>
                <option value="rect"><?php echo $entry_squre; ?></option>
                <?php } else { ?>
                <option value="round"><?php echo $entry_round; ?></option>
                <option value="rect" selected="selected"><?php echo $entry_squre; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  
		  
        </form>
      </div>
    </div>
  </div>
</div>
<script src="view/javascript/colorbox/jquery.minicolors.js"></script>
<link rel="stylesheet" href="view/javascript/colorbox/jquery.minicolors.css">
<script type="text/javascript"><!--
$(document).ready( function() {
    $('.demo').each( function() {
      $(this).minicolors({
    control: $(this).attr('data-control') || 'hue',
    defaultValue: $(this).attr('data-defaultValue') || '',
    inline: $(this).attr('data-inline') === 'true',
    letterCase: $(this).attr('data-letterCase') || 'lowercase',
    opacity: $(this).attr('data-opacity'),
    position: $(this).attr('data-position') || 'bottom left',
    change: function(hex, opacity) {
    if( !hex ) return;
    if( opacity ) hex += ', ' + opacity;
      try {
        console.log(hex);
      } catch(e) {}
    },
    theme: 'bootstrap'
    });
    });
});
//--></script>
<?php echo $footer; ?>