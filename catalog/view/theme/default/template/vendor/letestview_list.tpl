<?php echo $header; ?><?php echo $column_left; ?>
<!-- update order_product_id to order_id 03 10 2019-->
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
		  <div class="pull-right">
			<a href="<?php echo $invoice; ?>" target="_blank" data-toggle="tooltip" title="<?php echo $button_invoice_print; ?>" class="btn btn-info"><i class="fa fa-print"></i></a>
			
			<a href="<?php echo $shipping; ?>" target="_blank" data-toggle="tooltip" title="<?php echo $button_shipping_print; ?>" class="btn btn-info"><i class="fa fa-truck"></i></a>	
			
		  </div>
		  <h1><?php echo $heading_view; ?></h1>
		  <ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		  </ul>
		</div>
	</div>
	<div class="container-fluid">
		<div class="panel panel-default">
		   <div class="panel-heading">
			<h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_view; ?>(#<?php echo $order_id; ?>)</h3>
		   </div>
			<div class="panel-body">
				<form action="" method="post" enctype="multipart/form-data" id="form-information">
					<div  id="wait" class="loader hide">
					<img src="image/loader.gif" alt="loading" title="loading"/>
					</div>
					<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<td class="text-left" colspan="2"><?php echo $text_details; ?></td>
							 </tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-left"><b><?php echo $text_order; ?></b>: #<?php echo $order_id; ?></td>
								<td class="text-left"><b><?php echo $text_Payment; ?></b>: <?php echo $payment_method; ?></td>
							</tr>
							<tr>
								<td class="text-left"><b><?php echo $text_date; ?></b>: <?php echo $date_added; ?></td>
								<td class="text-left"><b><?php echo $text_shipping; ?></b>: <?php echo $shipping_method; ?></td>
							</tr>
						</tbody>
					</table>
					</div>
					<?php if($customer2vendor==1) { ?>
					<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr>
								<td style="width: 50%;" class="text-left"><?php echo $text_payment_address; ?></td>
								<?php if ($shipping_method) { ?>
								<td style="width: 50%;" class="text-left"><?php echo $text_shipping_address; ?>
								<?php } ?></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-left"><?php echo $payment_address; ?></td>
								<?php if ($shipping_method) { ?>
								<td class="text-left"><?php echo $shipping_address; ?></td>
								<?php } ?>
							</tr>
						</tbody>
					</table>
					</div>
					<?php } ?>
					<br/>
				<br/>
				<div class="clearfix"></div>
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<td class="text-left"><?php echo $column_product; ?></td>
								<td class="text-left"><?php echo $column_model; ?></td>
								<td class="text-center"><?php echo $column_quantity; ?></td>
								
								<td class="text-center <?php echo $trackingcode; ?>" ><?php echo $column_tracking; ?></td>
								<?php if ($chkshipcost==1) { ?>
								<td class="text-center"><?php echo $column_shipingamount; ?></td>
								<?php } ?>
								<td class="text-center"><?php echo $column_price; ?></td>
														
								
							
								<td class="text-center"><?php echo $column_total; ?></td>
							</tr>
						</thead>
						<tbody>
						<?php foreach($products as $product) { ?>
							<tr>
								<td class="text-left">
								<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a> <?php echo $text_byseller; ?> <a href="<?php echo $product['sellerhref']; ?>"><?php echo $product['sellername']; ?> </a>
								  <!--28 02 2020-->
									<?php foreach ($product['option'] as $option) { ?>
										<br />
										&nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
									<?php } ?>
									<!--28 02 2020-->
								</td>
								<td class="text-left"><?php echo $product['model']; ?></td>
								<td class="text-center"><?php echo $product['quantity']; ?></td>
								<!-- 03 10 2019 remove code of status and also from script -->
								<td class="text-center <?php echo $trackingcode; ?>">
									<span class="track"><?php echo $product['tracking'];?></span>
								</td>
								<?php if ($chkshipcost==1) { ?>
								<td class="text-center"><?php echo $product['tmdshippingcost']; ?></td>
								<?php } ?>
								<td class="text-center"><?php echo $product['price']; ?></td>
								<td class="text-center"><?php echo $product['total']; ?>
								
								</td>
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>
			</form>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-comment-o"></i> <?php echo $text_history; ?></h3>
				</div>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<td class="text-left"><?php echo $column_date; ?></td>
									<td class="text-left"><?php echo $column_status; ?></td>
									<!--03 10 2019-->
									<td class="text-left"><?php echo $column_productname; ?></td>
									<td class="text-left"><?php echo $column_updatedstatus; ?></td>
									<td class="text-left"><?php echo $column_comment; ?></td>
									<!--03 10 2019-->
								</tr>
							</thead>
							<tbody>
							  <?php if($histories) { ?>
							  <?php foreach($histories as $history) { ?>
							  <tr>
								<td class="text-left"><?php echo $history['date_added']; ?></td>
								<td class="text-left"><?php echo $history['status']; ?></td>
								<!--03 10 2019-->
								<td class="text-left"><?php echo $history['productname']; ?></td>
								<td class="text-left"><?php echo $history['updatedstatus']; ?></td>
								<td class="text-left"><?php echo $history['comment']; ?></td>
								<!--03 10 2019-->
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
				</div>
			<div class="row">
			<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
			<div class="col-sm-6 text-right"><?php echo $results; ?></div>
				</div>
				<!--/* 03-10-2019 add new*/-->

				<div class="tab-pane " id="tab-history">
					<div id="history"></div>
					<br/>
					<fieldset>
						<legend><?php echo $text_history_add; ?></legend>
						<form class="form-horizontal vendorhistory">
							<div class="form-group">
							  <label class="col-sm-2 control-label" for="input-tracking"><span data-toggle="tooltip" title="<?php echo $help_trackingcode; ?>"> <?php echo $column_tracking; ?></label>
								<div class="col-sm-10">
								<input type="text" name="tracking" id="input-tracking" value="<?php echo $tracking; ?>" class="form-control"/>
								</div>
							</div>

							<div class="form-group">
							  <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
							   <div class="col-sm-10">
								<select name="order_status_id" id="input-order-status" class="form-control">
								  <?php foreach ($order_statuses as $order_statuses) { ?>
								  <?php if ($order_statuses['order_status_id'] == $order_status_id) { ?>
								  <option value="<?php echo $order_statuses['order_status_id']; ?>" selected="selected"><?php echo $order_statuses['name']; ?></option>
								  <?php } else { ?>
								  <option value="<?php echo $order_statuses['order_status_id']; ?>"><?php echo $order_statuses['name']; ?></option>
								  <?php } ?>
								  <?php } ?>
								</select>
							  </div>
							</div>

							<div class="form-group">
							  <label class="col-sm-2 control-label" for="input-comment"><?php echo $entry_comment; ?></label>
							  <div class="col-sm-10">
								<textarea name="comment" rows="8" id="input-comment" class="form-control"></textarea>
							  </div>
							</div>
						</form>
					</fieldset>
					<div class="text-right">
						<button id="button-history" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i> <?php echo $button_history_add; ?></button>
					</div>
				</div>
				<!--/* 03-10-2019 add new*/-->
			</div>
		</div>
	</div>
</div>
<!--// 03 10 2019 //-->
<script>
	$('#button-history').on('click', function() {
	$.ajax({
		url: 'index.php?route=vendor/latestorder/addorderstatusview&order_id=<?php echo $order_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $('.vendorhistory input[name=\'tracking\'],.vendorhistory select[name=\'order_status_id\'],  .vendorhistory  input[type=\'checkbox\']:checked, .vendorhistory textarea'),

		beforeSend: function() {
			$('#button-history').button('loading');
			$('.loader').removeClass('hide');
		},
		complete: function() {
			$('#button-history').button('reset');
		},
		success: function(json) {
			$('.alert').remove();
			if (json['error']) {

			}
			if (json['success']) {
				setTimeout(function(){location.reload()}, 2000);
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});
</script>
<!--// 03 10 2019 //-->
<?php echo $footer; ?>
