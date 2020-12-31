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
    <?php if($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <div class="well">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label class="control-label" for="input-author"><?php echo $entry_name; ?></label>
					<!-- /* 12 02 2020 */ change name filter_enqname-->
                <input type="text" name="filter_enqname" value="<?php echo $filter_enqname; ?>" placeholder="<?php echo $entry_name; ?>" id="input-author" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-name"><?php echo $entry_product; ?></label>
                <input type="text" name="filter_product" value="<?php echo $filter_product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-name" class="form-control" />
               <input type="hidden" name="product_id" value="<?php echo $filter_productvalue; ?>" />
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label class="control-label" for="input-status"><?php echo $entry_status; ?></label>
					<select name="filter_status" id="input-status" class="form-control">
					  <option value="*"></option>
					  <?php if ($filter_status) { ?>
					  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
					  <?php } else { ?>
					  <option value="1"><?php echo $text_enabled; ?></option>
					  <?php } ?>
					  <?php if (!$filter_status && !is_null($filter_status)) { ?>
					  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
					  <?php } else { ?>
					  <option value="0"><?php echo $text_disabled; ?></option>
					  <?php } ?>
					</select>
              </div>
                <div class="form-group">
					<label class="control-label" for="input-date-added"><?php echo $entry_date_added; ?></label>
					<div class="input-group date">
					   <input type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $entry_date_added; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
					  <span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					  </span>
					</div>
                </div>
            <button style="margin-top:8%;"  type="button" id="button-filter" class="btn btn-primary pull-right col-sm-12"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
            </div>
          </div>
        </div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-review">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                  <td class="text-left"><?php if($sort == 'name') { ?>
                    <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                    <?php } ?></td>
                  <td class="text-left"><?php if($sort == 'email') { ?>
                    <a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_email; ?>"><?php echo $column_email; ?></a>
                    <?php } ?></td>
                  <td class="text-left"><?php if($sort == 'product') { ?>
                    <a href="<?php echo $sort_product; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_product; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_product; ?>"><?php echo $column_product; ?></a>
                    <?php } ?></td>
                  <!--  tmd vendor2 customer condtion  -->
				<?php if($vendor2customer==1) { ?>
                  <td class="text-left"><?php if($sort == 'customer') { ?>
                    <a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_customer; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_customer; ?>"><?php echo $column_customer; ?></a>
                    <?php } ?></td>
				<?php } ?>
					<!--  tmd vendor2 customer condtion  -->
                  <td class="text-left"><?php if($sort == 'status') { ?>
                    <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                    <?php } ?></td>
					<td class="text-left"><?php echo $column_description; ?> </td>
                  <td class="text-left"><?php if($sort == 'date_added') { ?>
                    <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                    <?php } ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if($enquires) { ?>
                  <?php foreach ($enquires as $enquiry) { ?>
                <tr>
                  <td class="text-center"><?php if (in_array($enquiry['inquiry_id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $enquiry['inquiry_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $enquiry['inquiry_id']; ?>" />
                    <?php } ?></td>
                  <td class="text-left"><?php echo $enquiry['name']; ?></td>
                  <td class="text-left"><?php echo $enquiry['email']; ?></td>
                  <td class="text-left"><a href="<?php echo $enquiry['producturl']; ?>" target="_blank"><?php echo $enquiry['pname']; ?></a></td>
				  <?php if($vendor2customer==1) { ?>
                  <td class="text-left"><?php echo $enquiry['cname']; ?></td>
				  <?php } ?>
                  <td class="text-left"><?php echo $enquiry['status']; ?></td>
                  <td class="text-left"><?php echo $enquiry['description']; ?></td>
                  <td class="text-left"><span style="font-size:12px;" class="label btn-info"><i class="fa fa-clock-o" aria-hidden="true"></i>  <?php echo $enquiry['date_added']; ?></span></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="8"><?php echo $text_no_results; ?></td>
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
  <script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	url = 'index.php?route=vendor/enquiry';
	
	/* 12 02 2020 */
	var filter_product = $('input[name=\'filter_product\']').val();
	
	if (filter_product) {
		url += '&filter_product=' + encodeURIComponent(filter_product);
	}
	
	
	var filter_productvalue = $('input[name=\'product_id\']').val();
	
	if (filter_productvalue) {
		url += '&filter_productvalue=' + encodeURIComponent(filter_productvalue);
	}

	
	var filter_enqname = $('input[name=\'filter_enqname\']').val();
	
	if (filter_enqname) {
		url += '&filter_enqname=' + encodeURIComponent(filter_enqname);
	}
	
	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}
	/* 12 02 2020 */		
	var filter_date_added = $('input[name=\'filter_date_added\']').val();
	
	if (filter_date_added) {
		url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
	}

	location = url;
});
//--></script> 
  <script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});
//--></script>
 <script type="text/javascript"><!--
$('input[name=\'filter_product\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=vendor/product/autocomplete&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['product_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'filter_product\']').val(item['label']);
    $('input[name=\'product_id\']').val(item['value']);
  }
});

/* add new function 12 02 2020 */
//Enquirer Name
$('input[name=\'filter_enqname\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=vendor/enquiry/autocomplete&filter_enqname=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['inquiry_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'filter_enqname\']').val(item['label']);
    $('input[name=\'inquiry_id\']').val(item['value']);
  }
});
/* add new function 12 02 2020 */
</script></div>
<?php echo $footer; ?>