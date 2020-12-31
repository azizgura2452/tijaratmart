<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="vendor-setting">
    <div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-megaheader" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
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
		<?php if($success) { ?>
			<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		<?php } ?>
		<?php if($error_warning) { ?>
			<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		<?php } ?>
		<div class="panel panel-default">
		  <div class="panel-heading">
			<h2 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_add; ?></h2>
		  </div>
		<div class="panel-body">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-megaheader" class="form-horizontal">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab-general" data-toggle="tab"><i class="fa fa-cogs" aria-hidden="true"></i>  <?php echo $tab_general; ?></a></li>
					
					<li <?php if($error_showorderwarning) { ?> class="warningorder"  <?php } ?>><a href="#tab-data" data-toggle="tab"><i class="fa fa-hand-paper-o" aria-hidden="true"></i> <?php echo $tab_data; ?></a></li>
					
					<li><a href="#tab-language" data-toggle="tab"> <i class="fa fa-language" aria-hidden="true"></i> <?php echo $tab_selerlanguage; ?></a></li>
					
				</ul>
				
					<div class="tab-content">
						<div class="tab-pane active" id="tab-general">
						
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab-vgeneral" data-toggle="tab"><i class="fa fa-cogs" aria-hidden="true"></i><?php echo $tab_vgeneral; ?></a></li>					
							<li><a href="#tab-vdata" data-toggle="tab"><i class="fa fa-eye-slash" aria-hidden="true"></i> <?php echo $tab_vdata; ?></a></li>
						</ul>
						
							<div class="tab-content">								
								<div class="tab-pane active" id="tab-vgeneral">		
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendor_customer2vendor"><span data-toggle="tooltip" title="<?php echo $help_customer2vendor; ?>"><?php echo $entry_customer2vendor; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_customer2vendor==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_customer2vendor" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_customer2vendor" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_customer2vendor) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_customer2vendor" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_customer2vendor" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									  </div>
									  
									 <div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendor_vendor2customer"><span data-toggle="tooltip" title="<?php echo $help_vendor2customer; ?>"><?php echo $entry_vendor2customer; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_vendor2customer==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_vendor2customer" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_vendor2customer" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_vendor2customer) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_vendor2customer" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_vendor2customer" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									  </div>
									  
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendorautoapprove"><span data-toggle="tooltip" title="<?php echo $help_vendorautoapprove; ?>"><?php echo $entry_vendorautoapprove; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_vendorautoapprove==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_vendorautoapprove" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_vendorautoapprove" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_vendorautoapprove) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_vendorautoapprove" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_vendorautoapprove" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									  </div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-proautoapprove"><span data-toggle="tooltip" title="<?php echo $help_proautoapprove; ?>"><?php echo $entry_proautoapprove; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_proautoapprove==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_proautoapprove" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_proautoapprove" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_proautoapprove) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_proautoapprove" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_proautoapprove" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									  </div>
								   
									<div class="form-group">
									  <label class="col-sm-3 control-label" for="input-proautoapprove"><span data-toggle="tooltip" title="<?php echo $help_hidevendorcontact; ?>"><?php echo $entry_hidevendorcontact; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_hidevendorcontact==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevendorcontact" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevendorcontact" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_hidevendorcontact) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevendorcontact" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevendorcontact" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendor_vpostcode"><span data-toggle="tooltip" title="<?php echo $help_postcode; ?>"><?php echo $entry_vpostcode; ?></span></label>
										<div class="col-sm-9">									
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_vpostcode==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_vpostcode" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_vpostcode" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_vpostcode) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_vpostcode" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_vpostcode" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendorterms"><span data-toggle="tooltip" title="<?php echo $help_vendorterms; ?>"><?php echo $entry_vendorterms; ?></span></label>
										<div class="col-sm-3">
											<select name="vendor_vprivacy_id" id="input-vendorterms" class="form-control">
											  <option value="0"><?php echo $text_none; ?></option>
											  <?php foreach ($informations as $information) { ?>
											  <?php if ($information['information_id'] == $vendor_vprivacy_id) { ?>
											  <option value="<?php echo $information['information_id']; ?>" selected="selected"><?php echo $information['title']; ?></option>
											  <?php } else { ?>
											  <option value="<?php echo $information['information_id']; ?>"><?php echo $information['title']; ?></option>
											  <?php } ?>
											  <?php } ?>
											</select>
										</div>
									</div>
								</div>	
								<!--08 04 2020-->
								<div class="tab-pane" id="tab-vdata">								
									<legend class="allsellers"><?php echo $text_forallseller; ?></legend>									
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-hidevname"><span data-toggle="tooltip" title="<?php echo $help_hidevname; ?>"> <?php echo $entry_hidevname; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_hidevendorname==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevendorname" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevendorname" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_hidevendorname) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevendorname" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevendorname" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									</div>
								  
										
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendor_hidevemail"><span data-toggle="tooltip" title="<?php echo $help_hidevname; ?>"><?php echo $entry_hidevemail; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_hidevemail==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevemail" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevemail" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_hidevemail) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevemail" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevemail" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>									
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendor_hidevponeno"><span data-toggle="tooltip" title="<?php echo $help_hidevponeno; ?>"> <?php echo $entry_hidevphoneno; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_hidevponeno==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevponeno" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevponeno" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_hidevponeno) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevponeno" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevponeno" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>								
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label" for="input-vendor_hidevsocialicon"><span data-toggle="tooltip" title="<?php echo $help_hidevsocialicon; ?>"> <?php echo $entry_hidevsocialicon; ?></span></label>
										<div class="col-sm-9">
											<div class="btn-group col-sm-6" data-toggle="buttons">
												<?php if($vendor_hidevsocialicon==1) { ?>
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevsocialicon" value="1" checked="checked" />
												  <?php echo $text_yes; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevsocialicon" value="1" />
													<?php echo $text_yes; ?>
												   </label>
												<?php }  ?>
												<?php if(!$vendor_hidevsocialicon) { ?>									
												   <label class="btn btn-success btn-sm active col-sm-4">
													<input type="radio" name="vendor_hidevsocialicon" value="0" checked="checked" />
													<?php echo $text_no; ?>
												   </label>
												<?php } else { ?>
												   <label class="btn btn-success btn-sm col-sm-4">
													<input type="radio" name="vendor_hidevsocialicon" value="0" />
													<?php echo $text_no; ?></label>
												<?php } ?>
											</div>
										</div>
									</div><!--08 04 2020-->									
								</div>
							</div>	
						</div>	
						<div class="tab-pane" id="tab-data">
						<div class="alert alert-info"><i class="fa fa-info-circle" aria-hidden="true"></i> The status that you have selected here will appear on the front of seller dashboard orders and Earn Payment!!. </div>
						
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-showorder-status"><span data-toggle="tooltip" title="<?php echo $help_showorder_status; ?>"><?php echo $entry_showorder_status; ?></span></label>
								<div class="col-sm-10">
									<div class="well well-sm" style="height: 150px; overflow: auto;">
										  <?php foreach ($order_statuses as $order_status) { ?>
										  <div class="checkbox">
											<label>
											  <?php if (in_array($order_status['order_status_id'], $vendor_showorder_status)) { ?>
											  <input type="checkbox" name="vendor_showorder_status[]" value="<?php echo $order_status['order_status_id']; ?>" checked="checked" />
											  <?php echo $order_status['name']; ?>
											  <?php } else { ?>
											  <input type="checkbox" name="vendor_showorder_status[]" value="<?php echo $order_status['order_status_id']; ?>" />
											  <?php echo $order_status['name']; ?>
											  <?php } ?>
											</label>
										  </div>
										<?php } ?>
									</div>
									<?php if ($error_showorder_status) { ?>
									<div class="text-danger"><?php echo $error_showorder_status; ?></div>
									<?php } ?>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-earnpayment-status"><span data-toggle="tooltip" title="<?php echo $help_earnpayment_status; ?>"><?php echo $entry_earnpayment_status; ?></span></label>
								<div class="col-sm-10">
									<div class="well well-sm" style="height: 150px; overflow: auto;">
										  <?php foreach ($order_statuses as $order_status) { ?>
										  <div class="checkbox">
											<label>
											  <?php if (in_array($order_status['order_status_id'], $vendor_earnpayment_status)) { ?>
											  <input type="checkbox" name="vendor_earnpayment_status[]" value="<?php echo $order_status['order_status_id']; ?>" checked="checked" />
											  <?php echo $order_status['name']; ?>
											  <?php } else { ?>
											  <input type="checkbox" name="vendor_earnpayment_status[]" value="<?php echo $order_status['order_status_id']; ?>" />
											  <?php echo $order_status['name']; ?>
											  <?php } ?>
											</label>
										  </div>
										<?php } ?>
									</div>
									<?php if ($error_earnpayment_status) { ?>
									<div class="text-danger"><?php echo $error_earnpayment_status; ?></div>
									<?php } ?>
								</div>
							</div>							
						</div>
						
						<div class="tab-pane " id="tab-language">
						<legend class="allsellers"> <i class="fa fa-list" aria-hidden="true"></i> <?php echo $text_selerlanguage; ?></legend>
							<ul class="nav nav-tabs" id="language-lable">
								<?php foreach ($languages as $language) { ?>
									<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
								<?php } ?>
							</ul>						
						<div class="tab-content">
							<?php foreach ($languages as $language) { ?>
								<div class="tab-pane active" id="language<?php echo $language['language_id']; ?>">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-sellerlist[<?php echo $language['language_id']; ?>]"><?php echo $text_sellerlist; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][sellerlist]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['sellerlist'] : ''; ?>" placeholder="<?php echo $text_sellerlist; ?>" id="input-sellerlist[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
										
										<label class="col-sm-2 control-label" for="input-sellerprofile[<?php echo $language['language_id']; ?>]"><?php echo $text_sellerprofile; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][sellerprofile]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['sellerprofile'] : ''; ?>" placeholder="<?php echo $text_sellerprofile; ?>" id="input-sellerprofile[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
										
									</div>	
									
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-loginseller[<?php echo $language['language_id']; ?>]"><?php echo $text_loginseller; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][loginseller]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['loginseller'] : ''; ?>" placeholder="<?php echo $text_loginseller; ?>" id="input-loginseller[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
										
										<label class="col-sm-2 control-label" for="input-loginseller[<?php echo $language['language_id']; ?>]"><?php echo $text_afterloginseller; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][afterloginseller]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['afterloginseller'] : ''; ?>" placeholder="<?php echo $text_afterloginseller; ?>" id="input-afterloginseller[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									</div>	
									
										
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-sellerdash[<?php echo $language['language_id']; ?>]"><?php echo $text_sellerdash; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][sellerdash]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['sellerdash'] : ''; ?>" placeholder="<?php echo $text_sellerdash; ?>" id="input-sellerdash[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									
										<label class="col-sm-2 control-label" for="input-sellerproduct[<?php echo $language['language_id']; ?>]"><?php echo $text_sellerproduct; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][sellerproduct]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['sellerproduct'] : ''; ?>" placeholder="<?php echo $text_sellerproduct; ?>" id="input-sellerproduct[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									</div>	
									
										
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-sellerreview[<?php echo $language['language_id']; ?>]"><?php echo $text_sellerreview; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][sellerreview]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['sellerreview'] : ''; ?>" placeholder="<?php echo $text_sellerreview; ?>" id="input-sellerreview[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									
										<label class="col-sm-2 control-label" for="input-managestore[<?php echo $language['language_id']; ?>]"><?php echo $text_managestore; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][managestore]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['managestore'] : ''; ?>" placeholder="<?php echo $text_managestore; ?>" id="input-managestore[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									</div>	
																			
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-manageprofile[<?php echo $language['language_id']; ?>]"><?php echo $text_manageprofile; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][manageprofile]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['manageprofile'] : ''; ?>" placeholder="<?php echo $text_manageprofile; ?>" id="input-manageprofile[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									
										<label class="col-sm-2 control-label" for="input-download[<?php echo $language['language_id']; ?>]"><?php echo $text_download; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][download]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['download'] : ''; ?>" placeholder="<?php echo $text_download; ?>" id="input-download[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									</div>	
																			
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-manufacture[<?php echo $language['language_id']; ?>]"><?php echo $text_manufacture; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][manufacture]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['manufacture'] : ''; ?>" placeholder="<?php echo $text_manufacture; ?>" id="input-manufacture[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									
										<label class="col-sm-2 control-label" for="input-sellerlogout[<?php echo $language['language_id']; ?>]"><?php echo $text_logout; ?></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][sellerlogout]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['sellerlogout'] : ''; ?>" placeholder="<?php echo $text_logout; ?>" id="input-sellerlogout[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									</div>	
									
									<legend class="allsellers"> <i class="fa fa-book" aria-hidden="true"></i> <?php echo $text_productpage; ?></legend>
						
									<div class="form-group">
										<label class="col-sm-2 control-label" for="input-selernameinpro[<?php echo $language['language_id']; ?>]"><span data-toggle="tooltip" title=" <?php echo $help_selernameinpro; ?>" > <?php echo $text_selernameinpro; ?></span></label>
										<div class="col-sm-4">
											<input type="text" name="vendor_languages[<?php echo $language['language_id']; ?>][selernameinpro]" value="<?php echo isset($vendor_languages[$language['language_id']]) ? $vendor_languages[$language['language_id']]['selernameinpro'] : ''; ?>" placeholder="<?php echo $text_selernameinpro; ?>" id="input-selernameinpro[<?php echo $language['language_id']; ?>]" class="form-control"/>
										</div>
									</div>
								</div>
							<?php } ?>							
						</div>
					</div>				
					
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"><!--
$('#language a:first').tab('show');
$('#language-lable a:first').tab('show');
//--></script>
<style>
.btn-group > .btn.active, .btn-success.btn-success:active:hover, .btn-success.active:hover, .open > .btn-success.dropdown-toggle:hover, .btn-success:active:focus, .btn-success.active:focus, .open > .btn-success.dropdown-toggle:focus, .btn-success:active.focus, .btn-success.active.focus, .open > .btn-success.dropdown-toggle.focus
{ 
background-color: #3DBEEF;
  border-color: #3DBEEF;}
.btn-success {	
color: #000;
    background-color: #fff;
    border-color: #fff;
    border: solid 1px #dccc;
    padding: 7px;
}
.btn-success:hover{
	background-color: #0F89B7;
    border-color: #0F89B7;
}
.vendor-setting label{text-transform: capitalize;}
.allsellers{background:#f5f5f5; padding:8px;}
<?php if($error_showorderwarning) { ?> 
.warningorder {}
.warningorder a{color: #FD003D!important;border: solid 1px #FD003D!important;
    border-bottom: none!important;}
 <?php } ?>
</style>
<?php echo $footer; ?>