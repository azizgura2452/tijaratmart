<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-payment" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $payment_title; ?></h1>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-payment" class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-vendor"><?php echo $entry_seller; ?></label>
				<div class="col-sm-10">
					<input type="text" name="vendor" value="<?php echo $vendor; ?>" placeholder="<?php echo $entry_seller; ?>" id="input-vendor" class="form-control" />
					<input type="hidden" name="vendor_id" value="<?php echo $vendor_id; ?>"/>
				</div>
			</div>
			<!-- 09 06 2018 -->
			<div class="form-group payments">
				<label class="col-sm-2 control-label" for="input-payment"><?php echo $entry_payment; ?></label>
				<div class="col-sm-10">
                  <div class="radio">
                    <label>
                      <?php if ($payment_method == 'paypal') { ?>
                      <input type="radio" name="payment_method" value="paypal" checked="checked" />
                      <?php } else { ?>
                      <input type="radio" name="payment_method" value="paypal" />
                      <?php } ?>
                      <?php echo $text_paypal; ?></label>
                  </div>
                  <div class="radio">
                    <label>
                      <?php if ($payment_method == 'banktransfer') { ?>
                      <input type="radio" name="payment_method" value="banktransfer" checked="checked" />
                      <?php } else { ?>
                      <input type="radio" name="payment_method" value="banktransfer" />
                      <?php } ?>
                      <?php echo $text_bank; ?></label>
                  </div>
                </div>
			</div>
			<div class="payment" id="payment-paypal">	
				<div class="form-group" id="paypal">	
					<label class="col-sm-2 control-label" for="input-paypal"><?php echo $entry_Emailid; ?></label>
					<div class="col-sm-10">
						<input type="text" name="paypal" value="<?php echo $paypal?>" placeholder="<?php echo $entry_Emailid; ?>" id="input-paypal" class="form-control"/>
	                    
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="payment" id="payment-banktransfer">
				<div class="form-group required">
					<label class="col-sm-2 control-label" for="input-bankname"><?php echo $entry_bankname;?></label>
					<div class="col-sm-10">
						<input type="text" name="bank_name" value="<?php echo $bank_name; ?>" placeholder="<?php echo $entry_bankname;?>" id="input-bankname" class="form-control" />
					</div>
				</div>
				<div class="form-group required">
					<label class="col-sm-2 control-label" for="input-branch_number"><?php echo $entry_bnumber;?></label>
					<div class="col-sm-10">
						<input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" placeholder="<?php echo $entry_bnumber;?>" id="input-branch_number" class="form-control" />
					</div>
				</div>
				<div class="form-group required">
					<label class="col-sm-2 control-label" for="input-swift_code"><?php echo $entry_swiftcode;?></label>
					<div class="col-sm-10">
						<input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" placeholder="<?php echo $entry_swiftcode;?>" id="input-swift_code" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="input-package-title"><?php echo $entry_aname;?></label>
					<div class="col-sm-10">
						<input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" placeholder="<?php echo $entry_aname;?>" id="input-package-titl" class="form-control" />
						
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="input-account_number"><?php echo $entry_anumber;?></label>
					<div class="col-sm-10">
						<input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" placeholder="<?php echo $entry_anumber;?>" id="input-account_number" class="form-control" />
						
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-amount"><?php echo $entry_amount; ?></label>
				<div class="col-sm-10">
					<input type="text" name="amount" value="<?php echo $remaining_amount; ?>" placeholder="<?php echo $entry_amount; ?>" id="input-amount" class="form-control" />
					<input type="hidden" name="remaining_amount" value="<?php echo $remaining_amount; ?>"/>
					<?php if ($error_amount) { ?>
				  	<div class="text-danger"><?php echo $error_amount; ?></div>
				  	<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-comment"><?php echo $entry_comment; ?></label>
				<div class="col-sm-10">
					<textarea type="text" name="comment" value="" rows="5" placeholder="<?php echo $entry_comment; ?>" id="input-comment" class="form-control"><?php echo $comment; ?></textarea>
				</div>
			</div>
			<!-- 09 06 2018 -->
						
        </form>
      </div>
    </div>
  </div>
</div>

<!-- 09 06 2018 -->

<script type="text/javascript"><!--
$('input[name=\'payment_method\']').on('change', function() {
	$('.payment').hide();

	$('#payment-' + this.value).show();
});

$('input[name=\'payment_method\']:checked').trigger('change');
//--></script>

<!-- 09 06 2018 -->

<script type="text/javascript">
$('input[name=\'vendor\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=vendor/income/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				json.unshift({
					vendor_id: 0,
					firstname:'<?php echo $text_none; ?>'
				});

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
		$('.payments').load('index.php?route=vendor/income/getPaymentMethod&token=<?php echo $token; ?>&vendor_id=' +item['value']);
		
		$('input[name=\'vendor\']').val(item['label']);
		$('input[name=\'vendor_id\']').val(item['value']);
	}
});
</script>



<?php echo $footer; ?>