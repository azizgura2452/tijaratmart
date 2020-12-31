<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right hide"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
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
        <div class="well hide">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label class="control-label" for="input-product"><?php echo $entry_product; ?></label>
                <input type="text" name="filter_product" value="<?php echo $filter_product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-author"><?php echo $entry_author; ?></label>
                <input type="text" name="filter_author" value="<?php echo $filter_author; ?>" placeholder="<?php echo $entry_author; ?>" id="input-author" class="form-control" />
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label class="control-label" for="input-status"><?php echo $entry_status; ?></label>
                <select type="text" name="filter_status" value="" placeholder="<?php echo $entry_status; ?>" id="input-filter_status" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php if ($filter_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
              </div>
              <div class="form-group">
                <label class="control-label" for="input-date-added"><?php echo $entry_date_added; ?></label>
                <div class="input-group date">
                  <input type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" placeholder="<?php echo $entry_date_added; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
                  <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
              </div>
              <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
            </div>
          </div>
        </div>
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-review">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                <!--  tmd vendor2 customer condtion  -->
				<?php if($customer2vendor==1) { ?>
                  <td class="text-left"><?php echo $column_customer; ?></td>
                <?php } ?>
                <!--  tmd vendor2 customer condtion  -->
                  <td class="text-left"><?php echo $column_text; ?></td>                 
                  <td class="text-left"><?php echo $column_status; ?></td>
                  <td class="text-left"><?php echo $column_date_added; ?></td>
                  <td class="text-left"><?php echo $column_action; ?></td>
                </tr>  
              </thead>
              <tbody>
                <?php if ($reviews) { ?>
                <?php foreach ($reviews as $review) { ?>
                <tr>
                <!--  tmd vendor2 customer condtion  -->
				<?php if($customer2vendor==1) { ?>
                  <td class="text-left"><?php echo $review['cname']; ?></td>
                <?php } ?>
				<!--  tmd vendor2 customer condtion  -->
                  <td class="text-left"><?php echo $review['text']; ?></td>
                  <td class="text-left"><?php echo $review['status']; ?></td>
                  <td class="text-left"><?php echo $review['date_added']; ?></td>
				  <!--28-01-2020 start-->
                  <td class="text-left"><?php echo $review['view']; ?></td>
				  <!--28-01-2020 start-->
                </tr>
					<!--28-01-2020 start-->
					<div class="modal fade" id="viewfullreview<?php echo $review['review_id']; ?>" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header col-sm-12">
								 <h4 class="modal-title col-sm-6"><?php echo $review['cname']; ?></h4>
									<div class="rating col-sm-6 text-right">
										<ul class="list-unstyled value">
											<li>
												<?php foreach($review['reviewvalue'] as $sellerrating) { ?>
													<div class="rating">
														<?php echo $sellerrating['field_name']; ?> :
														<?php for ($i = 1; $i <= 5; $i++) { ?>
															<?php if ($sellerrating['value'] < $i) { ?>
															<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
															<?php } else { ?>
															<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
															<?php } ?>
														<?php } ?>
													</div>
												<?php } ?>
											</li>
										</ul>
									</div>
								</div><div class="clearfix"></div>
								<div class="modal-body">
								  <?php echo $review['fulltext']; ?>
								</div>
								<div class="modal-footer">
								  <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $text_close; ?></button>
								</div>
							</div>
						</div>
					</div>
				<!--28-01-2020 end-->
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
  <script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});
//--></script></div>
<?php echo $footer; ?>