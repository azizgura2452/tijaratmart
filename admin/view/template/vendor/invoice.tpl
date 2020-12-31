<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<link href="view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="all" />
<script type="text/javascript" src="view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="all" />
</head>
<body>
<div class="container">
  <div style="page-break-after: always;">
  <h1><?php echo $text_invoice; ?> #<?php echo $order_id; ?></h1>
  	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<td class="text-left" colspan="3"><?php echo $text_details; ?></td>
			 </tr>
		</thead>
		<tbody>
			<tr>
				<td class="text-left"><b><?php echo $text_order; ?></b>: #<?php echo $order_id; ?></td>
				<td class="text-left"><b><?php echo $text_Payment; ?></b>: <?php echo $payment_method; ?></td>
				<td class="text-left"><b><?php echo $text_telephone; ?></b>: <?php echo $telephone; ?></td>
			</tr>
			<tr>
				<td class="text-left"><b><?php echo $text_date; ?></b>: <?php echo $date_added; ?></td>
				<td class="text-left"><b><?php echo $text_shipping; ?></b>: <?php echo $shipping_method; ?></td>
				<td class="text-left"><b><?php echo $text_email; ?></b>: <?php echo $email; ?></td>
			</tr>
		</tbody>
	</table> 
    <table class="table table-bordered">
      <thead>
        <tr>
          <td style="width: 50%;"><b><?php echo $text_payment_address; ?></b></td>
          <td style="width: 50%;"><b><?php echo $text_shipping_address; ?></b></td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><address>
            <?php echo $payment_address; ?>
            </address></td>
          <td><address>
            <?php echo $shipping_address; ?>
            </address></td>
        </tr>
      </tbody>
    </table>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<td class="text-left"><?php echo $column_product; ?></td>
				<td class="text-left"><?php echo $column_model; ?></td>
				<td class="text-center"><?php echo $column_quantity; ?></td>
				<td class="text-center"><?php echo $column_orderstatus; ?></td>
				<td class="text-right hide"><?php echo $column_tracking; ?></td>
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
				<td class="text-left"><?php echo $product['name']; ?></td>
				<td class="text-left"><?php echo $product['model']; ?></td>
				<td class="text-right"><?php echo $product['quantity']; ?></td>
				<td class="text-center"><?php echo $product['statusname']; ?></td>
				<td class="text-center add hide"></td>
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
</div>
</body>
</html>