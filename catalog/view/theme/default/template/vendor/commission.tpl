<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
      </div>
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        
        <form action="" method="post" enctype="multipart/form-data" id="form-review">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
				<thead>
				  <tr>
					<td class="text-left"><?php if ($sort == 'vendor') { ?>
						<a href="<?php echo $sort_vendor; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_vendor; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_vendor; ?>"><?php echo $column_vendor; ?></a>
					<?php } ?>
					</td>
					
					<td class="text-left"><?php if ($sort == 'name') { ?>
						<a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
					<?php } ?>
					</td>
					
					<td class="text-left"><?php if ($sort == 'model') { ?>
						<a href="<?php echo $sort_model; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_model; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_model; ?>"><?php echo $column_model; ?></a>
					<?php } ?>
					</td>
					
					<td class="text-left"><?php if ($sort == 'quantity') { ?>
						<a href="<?php echo $sort_quantity; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_quantity; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_quantity; ?>"><?php echo $column_quantity; ?></a>
					<?php } ?>
					</td>

					<td class="text-left"><?php if ($sort == 'price') { ?>
						<a href="<?php echo $sort_price; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_price; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_price; ?>"><?php echo $column_price; ?></a>
					<?php } ?>
					</td>

					<td class="text-left"><?php if ($sort == 'commission') { ?>
						<a href="<?php echo $sort_commission; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_commission; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_commission; ?>"><?php echo $column_commission; ?></a>
					<?php } ?>
					</td>
						
					<td class="text-left"><?php if ($sort == 'commissionfixed') { ?>
						<a href="<?php echo $sort_commissionfixed; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_commissionfixed; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_commissionfixed; ?>"><?php echo $column_commissionfixed; ?></a>
					<?php } ?>
					</td>

					<td class="text-left"><?php if ($sort == 'commissiontotal') { ?>
						<a href="<?php echo $sort_commissiontotal; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_commissiontotal; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_commissiontotal; ?>"><?php echo $column_commissiontotal; ?></a>
					<?php } ?>
					</td>

					<td class="text-left"><?php if ($sort == 'date') { ?>
						<a href="<?php echo $sort_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date; ?></a>
					<?php } else { ?>
						<a href="<?php echo $sort_date; ?>"><?php echo $column_date; ?></a>
					<?php } ?>
					</td>

				   </tr>
				</thead>
				<tbody>
					<?php if (isset($commissions)) { ?>
					<?php foreach ($commissions as $commission) { ?>
					<tr>
						<td class="text-left"><?php echo $commission['sellername'];?></td>
						<td class="text-left"><?php echo $commission['name'];?></td>
						<td class="text-left"><?php echo $commission['model'];?></td>
						<td class="text-left">
						<?php if ($commission['quantity']==1) { ?>					
						<span class="label label-warning"><?php echo $commission['quantity'];?></span>	
						<?php } else { ?>
							<span class="label label-success"><?php echo $commission['quantity'];?></span>	
						<?php } ?>
						</td>
						<td class="text-left"><?php echo $commission['price'];?></td>
						<td class="text-left"><?php echo $commission['commissionper'];?></td>
						<td class="text-left"><?php echo $commission['commissionfix'];?></td>
						<td class="text-left"><?php echo $commission['totalcommission'];?></td>
						<td class="text-left"><?php echo $commission['date_added'];?></td>
					</tr>
					<?php } ?> 
					<?php } else { ?>
					<tr>
						<td class="text-center" colspan="9"><?php echo $text_no_results; ?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
  
</div>
<?php echo $footer; ?>