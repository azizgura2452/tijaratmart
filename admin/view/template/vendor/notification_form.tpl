<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-manufacturer" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-manufacturer" class="form-horizontal">

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-type"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
            <select type="text" name="type" id="dbType" class="form-control">
                <?php foreach ($notifications as $type){ ?>
                <?php if ($type == $type['value']){ ?>
                  <option value="<?php echo $type['value']; ?>" selected="selected"><?php echo $type['type']; ?></option> 
                <?php } else { ?>
                  <option value="<?php echo $type['value']; ?>"><?php echo $type['type']; ?></option> 
                <?php } ?>
                <?php } ?>
                </select>
            </div>
          </div>
			
			
         <div class="customer" id="Customer" <?php if($type == 'select_customer'){ ?> style="display:none" <?php } else { ?> style="display:block" <?php } ?>>
          
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-customer"><?php echo $entry_customer; ?></label>
				<div class="col-sm-10">
					<input type="text" name="customer" value="" placeholder="<?php echo $entry_customer; ?>" id="input-customer" class="form-control" />
					<div id="notify" class="well well-sm" style="height: 150px; overflow: auto;">
					<?php foreach ($notification_customers as $notification_customer) { ?>
						
						<div id="notify<?php echo $notification_customer['customer_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $notification_customer['firstname']; ?>
							<input type="hidden" name="notification_customer[]" value="<?php echo $notification_customer['customer_id']; ?>" />
						</div>
					<?php } ?>
					</div>
				</div>
			</div>
			
        </div>
		<div class="seller" id="Seller" <?php if($type == 'select_seller'){ ?> style="display:none" <?php } else { ?> style="display:block" <?php } ?>>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sellers"><?php echo $entry_seller; ?></label>
            <div class="col-sm-10">
              <input type="text" name="sellers" value="" placeholder="<?php echo $entry_seller; ?>" id="input-sellers" class="form-control" />
              <div id="vendor" class="well well-sm" style="height: 150px; overflow: auto;">
              <?php foreach ($notification_sellers as $notification_seller) { ?>
                <div id="vendor<?php echo $notification_seller['vendor_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $notification_seller['firstname']; ?>
                  <input type="hidden" name="notification_seller[]" value="<?php echo $notification_seller['vendor_id']; ?>" />
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
          </div>
			<div class="col-sm-12">
			<ul class="nav nav-tabs" id="language">
				<?php foreach ($languages as $language) { ?>
				<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
				<?php } ?>
		   </ul>
			<div class="tab-content">
			<?php foreach ($languages as $language) { ?>
			   <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
				<div class="form-group required">
					<label class="col-sm-2 control-label" for="input-message[<?php echo $language['language_id']; ?>]"><?php echo $entry_message; ?></label>
					<div class="col-sm-10">
						<textarea type="text" name="notification_message[<?php echo $language['language_id']; ?>][message]" value="<?php echo isset($vendor_review_field_description[$language['language_id']]) ? $vendor_review_field_description[$language['language_id']]['message'] : ''; ?>" id="input-message[<?php echo $language['language_id']; ?>]" placeholder="<?php echo $entry_message; ?>" class="form-control summernote" ><?php echo isset($notification_message[$language['language_id']]) ? $notification_message[$language['language_id']]['message'] : ''; ?></textarea>
						
						<?php if (isset($error_message[$language['language_id']])) { ?>
						<div class="text-danger"><?php echo $error_message[$language['language_id']]; ?></div>
							  <?php } ?>
					  </div>				 
					</div> 
				 </div>
           <?php } ?>                                      
		 </div> 
		 </div> 
		 
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-date-available"><?php echo $entry_date; ?></label>
            <div class="col-sm-4">
              <div class="input-group date">
                <input type="text" name="date" value="<?php echo $date; ?>" placeholder="<?php echo $entry_date; ?>" data-date-format="DD-MM-YYYY" id="input-date" class="form-control" />
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span>
              </div>
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>

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

<script>
$('#dbType').on('change',function(){

    if( $(this).val()==="select_customer"){
     $("#Customer").show()
	  $("#Seller").hide()
    }
    else{
    $("#Customer").hide()
	 $("#Seller").show()
	
    }
});
</script>

<script>
$('input[name=\'customer\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=vendor/notification/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['firstname'],
            value: item['customer_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'customer\']').val('');

    $('#notify' + item['value']).remove();

    $('#notify').append('<div id="notify' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="notification_customer[]" value="' + item['value'] + '" /></div>');
  }
});

$('#notify').delegate('.fa-minus-circle', 'click', function() {
  $(this).parent().remove();
});
</script>

<script>
$('input[name=\'sellers\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=vendor/vendor/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['firstname'],
            value: item['vendor_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'sellers\']').val('');

    $('#vendor' + item['value']).remove();

    $('#vendor').append('<div id="vendor' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="notification_seller[]" value="' + item['value'] + '" /></div>');
  }
});

$('#vendor').delegate('.fa-minus-circle', 'click', function() {
  $(this).parent().remove();
});
</script>
  <script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script>
<?php echo $footer; ?>