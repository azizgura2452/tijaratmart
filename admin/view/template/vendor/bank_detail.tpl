<div class="panel-body">
	<form action="" method="post" enctype="multipart/form-data" id="form-payment" class="form-horizontal">
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

			
    </form>
</div>