<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<a href="<?php echo $invoice; ?>" target="_blank" data-toggle="tooltip" title="<?php echo $button_invoice_print; ?>" class="btn btn-info"><i class="fa fa-print"></i></a>
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
								<!-- 07 04 2020 -->	
								<?php if ($chkshipcost==1) { ?>
								<td class="text-center"><?php echo $column_shipingamount; ?></td>
								<?php } ?>
								<!-- 07 04 2020 -->	 
								<td class="text-center"><?php echo $column_price; ?></td>
								<td class="text-center"><?php echo $column_total; ?></td>
							</tr>
						</thead>
						<tbody>
							<?php foreach($products as $product) { ?>								
								<tr>
									<td class="text-left" >
									<input type="hidden" name="vname" value="<?php echo $product['name']; ?>">
									<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>							
									<?php if($product['sellername']){ 
										echo $text_byseller;
									} ?>								
									<a href="<?php echo $product['sellerhref']; ?>"><?php echo $product['sellername']; ?></a>
									
									  <?php foreach ($product['option'] as $option) { ?>
										<br />
										&nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
										<?php } ?>
										
									</td>
									<td class="text-left"><?php echo $product['model']; ?></td>
									<td class="text-center"><?php echo $product['quantity']; ?></td>
									
									<td class="text-center <?php echo $trackingcode; ?>">
										<span class="track"><?php echo $product['tracking'];?></span>
									</td>
									<!-- 07 04 2020 -->
									<?php if ($chkshipcost==1) { ?>
									<td class="text-center"><?php echo $product['tmdshippingcost']; ?></td>
									<?php } ?>
									<!-- 07 04 2020 -->
									<td class="text-center"><?php echo $product['price']; ?></td>
									<td class="text-center"><?php echo $product['total']; ?></td>
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
									
									<td class="text-left"><?php echo $column_productname; ?></td>
									<td class="text-left"><?php echo $column_updatedstatus; ?></td>
									<td class="text-left"><?php echo $column_comment; ?></td>
									
								</tr>
							</thead>
							<tbody>
							<?php if ($histories) { ?>
							<?php foreach($histories as $history) { ?>
							  <tr>
								<td class="text-left"><?php echo $history['date_added']; ?></td>
								<td class="text-left"><?php echo $history['status']; ?></td>
								
								<td class="text-left"><?php echo $history['productname']; ?></td>
								<td class="text-left"><?php echo $history['updatedstatus']; ?></td>
								<td class="text-left"><?php echo $history['comment']; ?></td>
								
							  </tr>
							<?php } } else { ?>				     
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
			</div>
		</div>
	</div>
</div>

<?php echo $footer; ?>