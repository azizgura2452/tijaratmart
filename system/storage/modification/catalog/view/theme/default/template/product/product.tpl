<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
          <h1><?php echo $heading_title; ?></h1>
          <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>

			 <?php if($chkvendor_ids !=0) { ?>
			 <li><b><?php echo $text_vendorname; ?>:</b> <?php echo $vendorname; ?></li>
			 <?php } ?>
			
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>" rel="<?php echo $option_value['product_option_value_id']; ?>" <?php if (isset($option_value['tmdimage']['image2x']) && $option_value['tmdimage']['image2x']): ?>rel1="<?php echo $option_value['tmdimage']['image']; ?> 1x, <?php echo $option_value['tmdimage']['image2x']; ?> 2x"<?php endif; ?>   <?php if (isset($option_value['tmdimage']['thumb2x']) && $option_value['tmdimage']['thumb2x']): ?>thumbs="<?php echo $option_value['tmdimage']['thumb']; ?> 1x, <?php echo $option_value['tmdimage']['thumb2x']; ?> 2x"<?php endif; ?> class="tmddesc<?php echo $option_value['product_option_value_id']; ?>" <?php if ($option_value['tmddefault']==1 ){ ?> selected="selected" checked="checked"  <?php } ?>><?php echo $option_value['name']; ?><?php if ($option_value['price']) { ?>
        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
        <?php } ?>
        <?php if ($optionprosetting == 1) { ?>
          <?php if ($option_value['sku'] && $displaysku ==1) { ?>
          ,<b><?php echo $text_skulabel; ?></b> (<?php echo $option_value['sku']; ?>)
          <?php } ?>
          <?php if ($option_value['upc'] && $displayupc ==1) { ?>
          ,<b><?php echo $text_upclabel; ?></b> (<?php echo $option_value['upc']; ?>)
          <?php } ?>
          <?php if ($option_value['model'] && $displaymodel ==1) { ?>
          ,<b><?php echo $text_modellabel; ?></b> (<?php echo $option_value['model']; ?>)
          <?php } ?>
          <?php if ($option_value['ean'] && $displayean ==1) { ?>
          ,<b><?php echo $text_eanlabel; ?></b> (<?php echo $option_value['ean']; ?>)
          <?php } ?>
          <?php } ?>
        
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    
        <label class="optionimage" rel="<?php echo $option_value['product_option_value_id']; ?>" <?php if (isset($option_value['tmdimage']['image2x']) && $option_value['tmdimage']['image2x']): ?>rel1="<?php echo $option_value['tmdimage']['image']; ?> 1x, <?php echo $option_value['tmdimage']['image2x']; ?> 2x"<?php endif; ?>  <?php if (isset($option_value['tmdimage']['thumb2x']) && $option_value['tmdimage']['thumb2x']): ?>thumbs="<?php echo $option_value['tmdimage']['thumb']; ?> 1x, <?php echo $option_value['tmdimage']['thumb2x']; ?> 2x"<?php endif; ?>>
          <div class="row">
          <div class="col-sm-12 col-xs-12">
            <div class="pull-left img">
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" rel="<?php echo $option_value['product_option_value_id']; ?>" <?php if (isset($option_value['tmdimage']['image2x']) && $option_value['tmdimage']['image2x']): ?>rel1="<?php echo $option_value['tmdimage']['image']; ?> 1x, <?php echo $option_value['tmdimage']['image2x']; ?> 2x"<?php endif; ?>   <?php if (isset($option_value['tmdimage']['thumb2x']) && $option_value['tmdimage']['thumb2x']): ?>thumbs="<?php echo $option_value['tmdimage']['thumb']; ?> 1x, <?php echo $option_value['tmdimage']['thumb2x']; ?> 2x"<?php endif; ?> class="tmddesc<?php echo $option_value['product_option_value_id']; ?>" <?php if ($option_value['tmddefault']==1 ){ ?> selected="selected" checked="checked"  <?php } ?>/>
          
                    <?php if ($option_value['image']) { ?>
                    
          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>,<?php if ($optionprosetting == 1) { ?><?php echo $text_skulabel . ($option_value['sku'] && $displaysku ==1 ? ' ' . $option_value['sku'] : ''); ?>,<?php echo $text_upclabel . ($option_value['upc'] && $displayupc ==1 ? ' ' . $option_value['upc'] : ''); ?>,<?php echo $text_modellabel . ($option_value['model'] && $displaymodel ==1 ? ' ' . $option_value['model'] : ''); ?>,<?php echo $text_eanlabel . ($option_value['ean'] && $displayean ==1 ? ' ' . $option_value['ean'] : ''); ?><?php } ?>" class="img-thumbnail" />
          <?php } ?>
        </div>
          <div class="options">
            <?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            <b>(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)</b>
            <?php } ?>
          <?php if ($optionprosetting == 1) { ?>
            <?php if ($option_value['sku'] && $displaysku ==1) { ?>
            ,<b><?php echo $text_skulabel; ?></b> (<?php echo $option_value['sku']; ?>)
            <?php } ?>
            <?php if ($option_value['upc'] && $displayupc ==1) { ?>
            ,<b><?php echo $text_upclabel; ?></b> (<?php echo $option_value['upc']; ?>)
            <?php } ?>
            <?php if ($option_value['model'] && $displaymodel ==1) { ?>
            ,<b><?php echo $text_modellabel; ?></b> (<?php echo $option_value['model']; ?>)
            <?php } ?>
            <?php if ($option_value['ean'] && $displayean ==1) { ?>
            ,<b><?php echo $text_eanlabel; ?></b> (<?php echo $option_value['ean']; ?>)
            <?php } ?>
          <?php } ?>
          </div>
          </div>
          </div>
            <?php if ($option_value['description'] && $displaydescription ==1) { ?>
             <div class="col-sm-12 padd0<?php if($option['type'] == 'radio'){ ?> tmddesc <?php } ?>" <?php if($option_value['tmddefault']!=1){ ?> style="display: none;" <?php } ?> id="tmddesc<?php echo $option_value['product_option_value_id']; ?>">
          <b><?php echo $text_descriptionlabel; ?></b> (<?php echo $option_value['description']; ?>)
          </div>
            <?php } ?>
           
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    
        <label class="optionimage" rel="<?php echo $option_value['product_option_value_id']; ?>" <?php if (isset($option_value['tmdimage']['image2x']) && $option_value['tmdimage']['image2x']): ?>rel1="<?php echo $option_value['tmdimage']['image']; ?> 1x, <?php echo $option_value['tmdimage']['image2x']; ?> 2x"<?php endif; ?>  <?php if (isset($option_value['tmdimage']['thumb2x']) && $option_value['tmdimage']['thumb2x']): ?>thumbs="<?php echo $option_value['tmdimage']['thumb']; ?> 1x, <?php echo $option_value['tmdimage']['thumb2x']; ?> 2x"<?php endif; ?>>
          <div class="row">
          <div class="col-sm-12 col-xs-12">
            <div class="pull-left img">
              <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" rel="<?php echo $option_value['product_option_value_id']; ?>" <?php if (isset($option_value['tmdimage']['image2x']) && $option_value['tmdimage']['image2x']): ?>rel1="<?php echo $option_value['tmdimage']['image']; ?> 1x, <?php echo $option_value['tmdimage']['image2x']; ?> 2x"<?php endif; ?>   <?php if (isset($option_value['tmdimage']['thumb2x']) && $option_value['tmdimage']['thumb2x']): ?>thumbs="<?php echo $option_value['tmdimage']['thumb']; ?> 1x, <?php echo $option_value['tmdimage']['thumb2x']; ?> 2x"<?php endif; ?> class="tmddesc<?php echo $option_value['product_option_value_id']; ?>" <?php if ($option_value['tmddefault']==1 ){ ?> selected="selected" checked="checked"  <?php } ?>/>
          
                    <?php if ($option_value['image']) { ?>
                    
          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>,<?php if ($optionprosetting == 1) { ?><?php echo $text_skulabel . ($option_value['sku'] && $displaysku ==1 ? ' ' . $option_value['sku'] : ''); ?>,<?php echo $text_upclabel . ($option_value['upc'] && $displayupc ==1 ? ' ' . $option_value['upc'] : ''); ?>,<?php echo $text_modellabel . ($option_value['model'] && $displaymodel ==1 ? ' ' . $option_value['model'] : ''); ?>,<?php echo $text_eanlabel . ($option_value['ean'] && $displayean ==1 ? ' ' . $option_value['ean'] : ''); ?><?php } ?>" class="img-thumbnail" />
          <?php } ?>
        </div>
          <div class="options">
            <?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            <b>(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)</b>
            <?php } ?>
          <?php if ($optionprosetting == 1) { ?>
            <?php if ($option_value['sku'] && $displaysku ==1) { ?>
            ,<b><?php echo $text_skulabel; ?></b> (<?php echo $option_value['sku']; ?>)
            <?php } ?>
            <?php if ($option_value['upc'] && $displayupc ==1) { ?>
            ,<b><?php echo $text_upclabel; ?></b> (<?php echo $option_value['upc']; ?>)
            <?php } ?>
            <?php if ($option_value['model'] && $displaymodel ==1) { ?>
            ,<b><?php echo $text_modellabel; ?></b> (<?php echo $option_value['model']; ?>)
            <?php } ?>
            <?php if ($option_value['ean'] && $displayean ==1) { ?>
            ,<b><?php echo $text_eanlabel; ?></b> (<?php echo $option_value['ean']; ?>)
            <?php } ?>
          <?php } ?>
          </div>
          </div>
          </div>
            <?php if ($option_value['description'] && $displaydescription ==1) { ?>
             <div class="col-sm-12 padd0<?php if($option['type'] == 'radio'){ ?> tmddesc <?php } ?>" <?php if($option_value['tmddefault']!=1){ ?> style="display: none;" <?php } ?> id="tmddesc<?php echo $option_value['product_option_value_id']; ?>">
          <b><?php echo $text_descriptionlabel; ?></b> (<?php echo $option_value['description']; ?>)
          </div>
            <?php } ?>
           
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
        	<?php echo $option['name']; ?>
          <?php if(!empty($option['name'])){ ?>
              <?php if($option['option_style'] == 1 ){ ?>
                <a class="btn btn-primary" style="color:<?php echo $option['text_color']; ?>;background:<?php echo $option['background_color'] ?>;border:1px solid <?php echo $option['background_color'] ?>; " title="<?php echo $option['button_text']; ?>" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 2 ){ ?>
                <a title="<?php echo $option['button_text']; ?>" style="color:<?php echo $option['text_color']; ?>;" data-toggle="modal" data-target="#myModal<?php echo $option['product_option_id'] ?>"><?php echo $option['button_text']; ?></a>
              <?php } ?>
              <?php if($option['option_style'] == 3 ){ ?>
                <span data-toggle="tooltip" title="<?php echo $option['option_description']; ?>" style="color:<?php echo $option['text_color']; ?>;"><i class="fa fa-question-circle"></i></span>
              <?php } ?>
                <div class="modal fade" id="myModal<?php echo $option['product_option_id'] ?>">
                  <div class="modal-dialog modal-xl">
                    <div class="modal-content">

                      <!-- Modal Header -->
                      <div class="modal-header">
                        <h4 class="modal-title"><?php echo $option['button_text']; ?></h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                      </div>

                      <!-- Modal body -->
                      <div class="modal-body">
                        <?php echo $option['option_description']; ?>
                      </div>

                      <!-- Modal footer -->
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      </div>

                    </div>
                  </div>
                </div>
            <?php } ?>
            </label>
          
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
<?php echo $column_inpro; ?>
        </div>
      </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-xs-8 col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-xs-6 col-md-4'; ?>
        <?php } else { ?>
        <?php $class = 'col-xs-6 col-sm-3'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($j = 1; $j <= 5; $j++) { ?>
                <?php if ($product['rating'] < $j) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif (($i+1) % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>

			<!--08-03-2019-->
			<?php if(!empty($vendorchat_id)){ ?>
				<script type="text/javascript">
					var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
					(function(){
					var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
					s1.async=true;
					s1.src='https://embed.tawk.to/<?php echo $vendorchat_id; ?>/default';
					s1.charset='UTF-8';
					s1.setAttribute('crossorigin','*');
					s0.parentNode.insertBefore(s1,s0);
					})();
				</script>
			<?php } ?>
			<!--08-03-2019-->

          <style>#product .optionimage{padding-left:0px;} .img{margin-right:10px;}.product-options .btn{padding:5px 5px !important;margin-left:5px;}.padd0{padding:0px;}</style>
<script type="text/javascript">
  $('input[type=radio]').click(function(){
       rel=$(this).attr('rel');
        $('.tmddesc').hide();
         value=$('.tmddesc'+rel).prop("checked");
        if(value) {
          $('#tmddesc'+rel).show();
        }else{
            $('#tmddesc'+rel).hide();
        }
      });
     $('input[type=checkbox]').click(function(){
       rel=$(this).attr('rel');
         value=$('.tmddesc'+rel).prop("checked");
        if(value) {
          $('#tmddesc'+rel).show();
        }else{
            $('#tmddesc'+rel).hide();
        }
      });
</script>
      <?php if ($displayimage == 1 && $optionprosetting ==1 ){ ?>
  <script type="text/javascript"><!--
  $(document).ready(function(){
      var rel   = $('select :selected').attr("rel");
      var rel1  = $('select :selected').attr("rel1");
      var thumb_rel = $('select :selected').attr('thumbs');
      if(rel1){
        tmdImage(rel,rel1,thumb_rel);
      }
      var rel3 = $("input:checked").attr("rel");
      var rel4 = $("input:checked").attr("rel1");
      var rel5 = $("input:checked").attr("thumbs");
      if(rel4){
        tmdImage(rel3,rel4,rel5);
      }
    });

    $(document).on('click', '.optionimage',function(){
      rel=$(this).attr('rel');
      rel1=$(this).attr('rel1');
      thumb_rel=$(this).attr('thumbs');
      tmdImage(rel,rel1,thumb_rel);
    });
    $(document).on('change', 'select',function(){
      rel=$(this).find(':selected').attr('rel');
      rel1=$(this).find(':selected').attr('rel1');
      thumb_rel=$(this).find(':selected').attr('thumbs');
      tmdImage(rel,rel1,thumb_rel);
    });

    function tmdImage(rel,rel1,thumb_rel){
    if(rel1){
      large_img = rel1.split(",");
      img1 = large_img[0].replace(' 1x','').trim();
      img2 = large_img[1].replace(' 2x','').trim();

      thumb_img = thumb_rel.split(",");
      thumb_img1 = thumb_img[0].replace(' 1x','').trim();
      thumb_img2 = thumb_img[1].replace(' 2x','').trim();

      $('.product-image .swiper-slide-active').find('img:first').attr('srcset',rel1);
      $('.product-image .main-image.swiper-slide-active').find('img:first').attr('src',img1);
      $('.product-image .main-image.swiper-slide-active').find('img:first').data('largeimg',img2);

      //thumbs
      $('.product-image .additional-image .swiper-slide-active').find('img:first').attr('src',thumb_img1);
      $('.product-image .additional-image .swiper-slide-active').find('img:first').attr('srcset',thumb_rel);

      $('.product-image .main-image .swiper-slide-active').find('img:first').ImageZoom({
            type: Journal['isPopup'] ? Journal['quickviewPageStyleCloudZoomPosition'] : Journal['productPageStyleCloudZoomPosition'],
            showDescription: false,
            offset: [0, 0],
            zoomSize: [$('.product-image .swiper-slide-active').find('img:first').width(), $('.product-image .swiper-slide-active').find('img:first').height()],
            bigImageSrc: img2,
        });
    }
    
   }
  </script>
<?php } ?>

      <!-- tmd -->
                   <script type="text/javascript"><!--
                    if($('input[type=radio],input[type=checkbox]').is(":checked")) {
                      lodprice();
                    }

                    if($('select option').is(":selected")) {
                      lodprice();
                    }

                  $('input[type=radio],input[type=checkbox]').click(function(){
                  lodprice();
                  })

                  $('select').change(function(){
                   lodprice();
                    })


                  function lodprice()
                 {
                   $.ajax({
                   url: 'index.php?route=extension/loadprice',
                  type: 'post',
                   data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
                   dataType: 'json',
                   success: function(json) {
               if(json['special'])
               {
             $('li h2').html(json['special']);
             $('.price-new').html(json['special']);
             $('.price-old').html(json['price']);
            }
          else
          {
            $('li h2').html(json['price']);
            $('.product-price').html(json['price']);
          }
             if(json['tax'])
             {
           $('.tax').html(json['tax']);
            }
           }
       });
    }

       //--></script>

          
<?php echo $footer; ?>
