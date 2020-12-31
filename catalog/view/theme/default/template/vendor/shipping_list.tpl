<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
			<a href="<?php echo $bulkshipping; ?>" data-toggle="tooltip" title="<?php echo $button_bulkupload; ?>" class="btn btn-primary"><?php echo $button_bulkupload; ?></a>
			<a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
			<button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-review').submit() : false;"><i class="fa fa-trash-o"></i></button>
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
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>
			<?php echo $error_warning; ?>
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
      <div class="well">
        <div class="row">
          <div class="col-sm-3">
            <div class="form-group hide">
              <label class="col-sm-4 control-label" for="input-filter_store_name"><?php echo $column_store;?> </label>
              <input type="text" name="filter_store_name" value="<?php echo $filter_store_name; ?>" placeholder="<?php echo $column_sellerstore; ?>" id="input-filter_store_name" class="form-control" />
              <input type="hidden" name="vendor_id" value=""/>
            </div>

            <div class="form-group">
              <label class="col-sm-4 control-label" for="input-filter_country"><?php echo $column_country;?> </label>
              <select name="filter_country" id="input-country" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($countries as $country) { ?>
                <?php if ($country['country_id'] == $filter_country) { ?>
                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>

            <div class="form-group">
              <label class="col-sm-4 control-label" for="input-filter_price"><?php echo $column_price;?> </label>
              <input type="text" name="filter_price" value="<?php echo $filter_price; ?>" placeholder="<?php echo $column_price; ?>" id="input-filter_price" class="form-control" />
            </div>

          </div>

          <div class="col-sm-3">
            <div class="form-group">
              <label class="control-label" for="input-filter_zipfrom"><?php echo $column_zipfrom;?> </label>
              <input type="text" name="filter_zipfrom" value="<?php echo $filter_zipfrom; ?>" placeholder="<?php echo $column_zipfrom; ?>" id="input-filter_zipfrom" class="form-control" />
            </div>

            <div class="form-group">
              <label class="control-label" for="input-filter_zipto"><?php echo $column_zipto;?> </label>
              <input type="text" name="filter_zipto" value="<?php echo $filter_zipto; ?>" placeholder="<?php echo $column_zipto; ?>" id="input-filter_zipto" class="form-control" />
            </div>
          </div>

          <div class="col-sm-3">
            <div class="form-group">
              <label class="control-label" for="input-filter_weightfrom"><?php echo $column_weightfrom;?> </label>
              <input type="text" name="filter_weightfrom" value="<?php echo $filter_weightfrom; ?>" placeholder="<?php echo $column_weightfrom; ?>" id="input-filter_weightfrom" class="form-control" />
            </div>

            <div class="form-group">
              <label class="control-label" for="input-filter_weightto"><?php echo $column_weightto;?> </label>
              <input type="text" name="filter_weightto" value="<?php echo $filter_weightto; ?>" placeholder="<?php echo $column_weightto; ?>" id="input-filter_weightto" class="form-control" />
            </div>
          </div>

          <div class="col-sm-3">
            
            <div class="text-center" style="margin-top:40px;">
              <button type="button" id="button-filter" class="btn btn-primary col-sm-12"><i class="fa fa-filter"></i> <?php echo $button_filter; ?></button>
            </div>
          </div>

        </div>
      </div>
          <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-review">
            <div class="tab-first" id="myElem"></div>
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                <td class="text-left"><?php if ($sort == 'store_name') { ?>
                  <a href="<?php echo $sort_store_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sellerstore; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_store_name; ?>"><?php echo $column_sellerstore; ?></a>
                  <?php } ?>
                </td>
                <td class="text-left"><?php if ($sort == 'country') { ?>
                  <a href="<?php echo $sort_country; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_country; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_country; ?>"><?php echo $column_country; ?></a>
                  <?php } ?>
                </td>
                <td class="text-left"><?php if ($sort == 'zipfrom') { ?>
                  <a href="<?php echo $sort_zipfrom; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_zipfrom; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_zipfrom; ?>"><?php echo $column_zipfrom; ?></a>
                  <?php } ?>
                </td>
                <td class="text-left"><?php if ($sort == 'zipto') { ?>
                  <a href="<?php echo $sort_zipto; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_zipto; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_zipto; ?>"><?php echo $column_zipto; ?></a>
                  <?php } ?>
                </td>
                <td class="text-left"><?php if ($sort == 'weightfrom') { ?>
                  <a href="<?php echo $sort_weightfrom; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_weightfrom; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_weightfrom; ?>"><?php echo $column_weightfrom; ?></a>
                  <?php } ?>
                </td>
                <td class="text-left"><?php if ($sort == 'weightto') { ?>
                  <a href="<?php echo $sort_weightto; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_weightto; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_weightto; ?>"><?php echo $column_weightto; ?></a>
                  <?php } ?>
                </td>
                <td class="text-left"><?php if ($sort == 'price') { ?>
                  <a href="<?php echo $sort_price; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_price; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sort_price; ?>"><?php echo $column_price; ?></a>
                  <?php } ?>
                </td>
                <td class="text-right"><?php echo $column_action; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php if ($shippings) { ?>
              <?php foreach ($shippings as $shipping) { ?>
              <tr>
                <td class="text-center"><?php if (in_array($shipping['shipping_id'], $selected)) { ?>
                  <input type="checkbox" name="selected[]" value="<?php echo $shipping['shipping_id']; ?>" checked="checked" />
                  <?php } else { ?>
                  <input type="checkbox" name="selected[]" value="<?php echo $shipping['shipping_id']; ?>" />
                  <?php } ?>
                </td>
                <td class="text-left"><?php echo $shipping['store_name']; ?></td>
                <td class="text-left"><?php echo $shipping['country_id']; ?></td>
                <td class="text-left"><?php echo $shipping['zip_from']; ?></td>
                <td class="text-left"><?php echo $shipping['zip_to']; ?></td>
                <td class="text-left"><?php echo $shipping['weight_from']; ?></td>
                <td class="text-left"><?php echo $shipping['weight_to']; ?></td>
                <td class="text-left"><?php echo $shipping['price']; ?></td>
                <td class="text-right"><button rel="<?php echo $shipping['shipping_id']; ?>" class="btn btn-danger docdelete"><i class="fa fa-trash-o"></i></button></td>
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
<script type="text/javascript">
$('#button-filter').on('click', function() {
  var url = 'index.php?route=vendor/shipping';
  
  var filter_store_name = $('input[name=\'vendor_id\']').val();

  if (filter_store_name) {
    url += '&filter_store_name=' + encodeURIComponent(filter_store_name);
  }
  
  var filter_country = $('select[name=\'filter_country\']').val();

  if (filter_country) {
    url += '&filter_country=' + encodeURIComponent(filter_country);
  }
  
  var filter_zipto = $('input[name=\'filter_zipto\']').val();

  if (filter_zipto) {
    url += '&filter_zipto=' + encodeURIComponent(filter_zipto);
  }
  
  var filter_zipfrom = $('input[name=\'filter_zipfrom\']').val();

  if (filter_zipfrom) {
    url += '&filter_zipfrom=' + encodeURIComponent(filter_zipfrom);
  }

  var filter_weightto = $('input[name=\'filter_weightto\']').val();

  if (filter_weightto) {
    url += '&filter_weightto=' + encodeURIComponent(filter_weightto);
  }

  var filter_weightfrom = $('input[name=\'filter_weightfrom\']').val();

  if (filter_weightfrom) {
    url += '&filter_weightfrom=' + encodeURIComponent(filter_weightfrom);
  }

  var filter_price = $('input[name=\'filter_price\']').val();

  if (filter_price) {
    url += '&filter_price=' + encodeURIComponent(filter_price);
  }
    
  location = url;
});
</script>

<script>
  $(document).on('click', '.docdelete',function(){
  var shipping_id = $(this).attr('rel');
  $.ajax({
  url: 'index.php?route=vendor/shipping/shippingdelete&shipping_id='+shipping_id,
  type:'post',
  dataType:'json',
  beforeSend: function() {
  },
  success: function(json) {
    if (json['success']) {
      $('.tab-first').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
      $('.payeehide'+shipping_id).remove();                 
    }
  }
});
});
  
</script>


<script type="text/javascript">
$('input[name=\'filter_store_name\']').autocomplete({
  'source': function(request, response) {
    $.ajax({
      url: 'index.php?route=vendor/shipping/autocomplete&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        json.unshift({
          vendor_id: 0,
          name:'<?php echo $text_none; ?>'
        });

        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['vendor_id']
          }
        }));
      }
    });
  },
  'select': function(item) {
    $('input[name=\'filter_store_name\']').val(item['label']);
    $('input[name=\'vendor_id\']').val(item['value']);
  }
});
</script>

<?php echo $footer; ?>