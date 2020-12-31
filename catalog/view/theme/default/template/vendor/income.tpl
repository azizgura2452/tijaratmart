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
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i><?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i><?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
        <div class="pull-right">
          <h3 class="panel-title"><?php echo $entry_myblance; ?>: <?php echo $remaining_amount; ?></h3>
        </div>
      </div>
      <div class="panel-body">
        <div class="well">
          <div class="row">
            <div class="col-sm-5">
              <div class="form-group">
                <label class="control-label"><?php echo $column_date; ?></label>
                <div class="input-group">
                  <span class="input-group-addon">
                   <?php echo $entry_from;?>
                  </span>
                  <input type="text" name="filter_date_form" value="<?php echo $filter_date_form; ?>" class="form-control datefrom" placeholder="YYYY-MM-DD" data-date-format="YYYY-MM-DD" id="input-filter_date_added_form"/>
                  <span class="input-group-addon ">
                    <?php echo $entry_to;?>
                  </span>
                  <input type="text" name="filter_date_to" value="<?php echo $filter_date_to; ?>" class="form-control dateto" placeholder="YYYY-MM-DD" data-date-format="YYYY-MM-DD" id="input-filter_date_added_to"/>
                </div>
              </div>
            </div>
              <div class="col-sm-4 text-center">
                <button type="button" style="margin-top:12%;" id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
              </div>
          </div>
        </div>
      
        <form action="" method="post" enctype="multipart/form-data" id="form-review">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
				<thead>
				  	<tr>
						<td class="text-left"><?php echo $column_payment_method; ?></td>
            <td class="text-left"><?php echo $column_amount; ?></td>
						<td class="text-left"><?php echo $column_date; ?></td>
				   	</tr>
				</thead>
				<tbody>
					<?php if ($incomes) { ?>
					<?php foreach ($incomes as $income) { ?>
					<tr>
						<td class="text-left"><?php echo $income['payment_method'];?></td>
						<td class="text-left"><?php echo $income['amount'];?></td>
						<td class="text-left"><?php echo $income['date_added'];?></td>
					</tr>	
					<?php } ?> 
					<?php } else { ?>
					<tr>
						<td class="text-center" colspan="7"><?php echo $text_no_results; ?></td>
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

<script type="text/javascript">
$('#button-filter').on('click', function() {
  var url = 'index.php?route=vendor/income';
  
  var filter_date_form = $('input[name=\'filter_date_form\']').val();

  if (filter_date_form) {
    url += '&filter_date_form=' + encodeURIComponent(filter_date_form);
  }

  var filter_date_to = $('input[name=\'filter_date_to\']').val();

  if (filter_date_to) {
    url += '&filter_date_to=' + encodeURIComponent(filter_date_to);
  }

  location = url;
});

$('.datefrom').datetimepicker({
  pickTime: false
});
$('.dateto').datetimepicker({
  pickTime: false
}); 
//--></script>