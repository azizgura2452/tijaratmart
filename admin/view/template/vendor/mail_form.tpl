<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-mail" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
		
		<button type="button" title="Shortcut" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Shortcut</button></div>
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
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-mail" class="form-horizontal">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab-mail" data-toggle="tab"><?php echo $tab_mail; ?></a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab-mail">
					<ul class="nav nav-tabs" id="language">
						<?php foreach ($languages as $language) { ?>
							<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
						<?php } ?>
					</ul>
					<div class="tab-content">
						<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-sellertype"><?php echo $entry_type; ?></label>
							<div class="col-sm-10">
								<select name="sellertype" class="form-control">
									<option value=""><?php echo $text_select?></option>
									<?php foreach ($sellertypes as $result){ ?>
									<?php if ($sellertype == $result['sellertype']){ ?>
										<option value="<?php echo $result['sellertype']; ?>" selected="selected"><?php echo $result['value']; ?></option> 
									<?php } else { ?>
										<option value="<?php echo $result['sellertype']; ?>"><?php echo $result['value']; ?></option> 
									<?php } ?>
									<?php } ?>
								</select>	
							</div>
						</div>
						<?php foreach ($languages as $language) { ?>
						<div class="tab-pane active" id="language<?php echo $language['language_id']; ?>">
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-name[<?php echo $language['language_id']; ?>]"><?php echo $entry_name; ?></label>
								<div class="col-sm-10">
									<input type="text" name="seller_mail[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($seller_mail[$language['language_id']]) ? $seller_mail[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name[<?php echo $language['language_id']; ?>]" class="form-control" />
									<?php if(isset($error_name[$language['language_id']])) { ?>
									<div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
									<?php } ?>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-subject[<?php echo $language['language_id']; ?>]"><?php echo $entry_subject; ?></label>
								<div class="col-sm-10">
									<input type="text" name="seller_mail[<?php echo $language['language_id']; ?>][subject]" value="<?php echo isset($seller_mail[$language['language_id']]) ? $seller_mail[$language['language_id']]['subject'] : ''; ?>" placeholder="<?php echo $entry_subject; ?>" id="input-subject[<?php echo $language['language_id']; ?>]" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-message[<?php echo $language['language_id']; ?>]"><?php echo $entry_message; ?></label>
								<div class="col-sm-10">
									<textarea type="text" name="seller_mail[<?php echo $language['language_id']; ?>][message]" value="" placeholder="<?php echo $entry_message; ?>" id="input-message[<?php echo $language['language_id']; ?>]" class="form-control summernote"><?php echo isset($seller_mail[$language['language_id']]) ? $seller_mail[$language['language_id']]['message'] : ''; ?></textarea>
								</div>
							</div>
						</div>
						<?php } ?>
						<div class="form-group ">
							<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select name="status" id="input-status" class="form-control">
									<?php if ($status) { ?>
									<option value="1" selected="selected"><?php echo $text_enable; ?></option>
									<option value="0"><?php echo $text_disable; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enable; ?></option>
									<option value="0" selected="selected"><?php echo $text_disable; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
					</div>
				</div>				
			</div>				
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
  <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
  <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script> 
<script type="text/javascript"><!--
$('#language a:first').tab('show');
//--></script>
<!-- Popup -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="heading">Email Shortcut For Adding New Product <button type="button" class="close" data-dismiss="modal">&times;</button></div>

			<div class="modal-body">
			<div class="row">
			<div id="inline1" class="col-sm-4">
			<h4> New Seller Signup</h4> 
				<ul>					
					<li>{vendorname}    = Vendor Name</li>
					<li>{email}         = Email</li>
					<li>{telephone}  	= Telephone</li>
					<li>{address_1}     = Address 1</li>			
					<li>{company}       = Company</li>			
					<li>{countryname}   = Country Name</li>			
					<li>{zonename}      = Zone Name</li>			
					<li>{city}          = City</li>			
					<li>{loginlink}     = Login Link</li>			
				</ul>
			</div>
			
			<div id="inline1" class="col-sm-4">
			<h4> Customer order seller product</h4>
				<ul>
					<li>{order_id}         = Order Id</li>
					<li>{display_name}     = Display Name</li>
					<li>{email}            = Email</li>
					<li>{seller_telephone} = Seller Telephone</li>
					<li>{address_1}        = Address 1</li>
					<li>{seller_lastname}  = Seller Lastname</li>
					<li>{seller_firstname} = Seller Firstname</li>
					<li>{product_info}     = Product Info</li>
				</ul>
			</div>
			
			
			
			<div id="inline1" class="col-sm-4">
			<h4> Enquiry on Seller Product</h4> 
				<ul>
					
					<li>{name}          = Name</li>
					<li>{productname}   = Product Name</li>
					<li>{email}         = Email</li>
					<li>{telephone}     = Telephone</li>
					
					<li>{customername}  = Customer Name</li>
					<li>{customeremail} = Customer Email</li>
					<li>{message}       = Message</li>
					<br/><div style="background:#D3E456;color:#F90037;padding:10px;">NOTE: If Customer is Logged then {customername} and {customeremail} can get seller</div>
				</ul>
			</div>
			
			
			<div id="inline1" class="col-sm-4">
			<h4> Seller Add New Product</h4>
				<ul>					
					<li>{vendorname}  = Vendor Name</li>
					<li>{productname} = Product Name</li>
					<li>{model}  	  = Product Model</li>
					<li>{emails}      = Vendor Email</li>			
					<li>{loginlink}   = Vendor Product Link</li>			
				</ul>
			</div>
			
			
			
			<div id="inline1" class="col-sm-4">
			<h4> Seller Account approved email</h4> 
				<ul>					
					<li>{vendorname} = Vendor Name</li>
					<li>{emails}     = Emails</li>
					<li>{loginlink}  = Login Link</li>		
				</ul>
			</div>
			
			<div id="inline1" class="col-sm-4">
				<h4> Seller Account disapproved email</h4> 
				<ul>					
					<li>{vendorname}    = Seller Display Name</li>
					<li>{email}      = Email</li>
					<li>{loginlink}  = Login Link</li>		
				</ul>
			</div>
			
			
			</div>
			<div class="row">
			
			<div id="inline1" class="col-sm-4">
			<h4> Seller product approved email</h4> 
				<ul>
					<li>{vendorname}      = Seller Display Name</li>
					<li>{productname} = Seller Display Name</li>
					<li>{emails}     = Emails</li>
					<li>{loginlink}  = Login Link</li>
				</ul>
			</div>
			
			<div id="inline1" class="col-sm-4">
			<h4> Seller order status update email</h4> 
				<ul>
					<li>{emails}   = Emails</li>
					<li>{statusname} =   Status Name</li>
				</ul>
			</div>
			</div>
			
		</div>
	</div>
	</div>
</div>
<style>
#inline1{
	padding-bottom:15px;
}
#inline1 ul{
	margin:0px;
	padding:0px!important;
}
#inline1 ul li{
	line-height: 25px;
	list-style: outside none none;
	padding-left:15px;
}
#inline1 ul li:hover{
	background:#238EB5;
	color: #fff;
}
.heading{
	padding: 10px;
    background: #238EB5;
    color: #fff;
    font-size: 12px;
    text-transform: uppercase;
    font-weight: bold;
}
.bs-example-modal-lg h4{
   	background:#238EB5;
	color: #fff;
	padding:8px 10px;
	font-size:15px;
}
.heading button {color:#fff;opacity:1}
.bs-example-modal-lg ::selection {
    color: red;
    background: yellow;
}

</style>
<!-- popup -->
<?php echo $footer; ?>