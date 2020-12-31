<?php if(!empty($vendor_id)) { ?>
<div class="contctseller"> 
<h2><?php echo $heading_title; ?></h2>
  <div class="enquire"> 
       <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
			<div id="adds">
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" name="name" value="" placeholder="<?php echo $text_name; ?>" id="input-name" class="form-control" />
						<div class="nameerror myElem" style="display:none;"></div>
					</div>
				</div>
				<input type="hidden" name="produt_id" value="<?php echo $product_id; ?>"/>
				<input type="hidden" name="vendor_id" value="<?php echo $vendor_id; ?>"/>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" name="email" value="" placeholder="<?php echo $text_email; ?>" id="input-email" class="form-control" />
						<div class="emailerror myElem"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<input type="text" name="telephone" value="" placeholder="<?php echo $text_telephone; ?>" id="input-telephone" class="form-control" />
						<div class="telephoneerror myElem"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<textarea type="text" name="description" value="" rows="5" placeholder="<?php echo $text_description; ?>" id="input-description" class="form-control"></textarea>
						<div class="descriptioneerror myElem"></div>
					</div>
				</div>
				<div class="buttons clearfix">
					<div class="">
						<div  id="wait" class="loader hide"><img src="image/loader.gif" alt="loading" title="loading" style="width: 35%;"/></div>	
						<input type="button" rel="<?php echo $product_id; ?>" value="<?php echo $button_send; ?>" class="btn btn-primary pull-right" id="enquiries" />
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script>
$('#enquiries').click(function(){
	var product_id = $(this).attr('rel');
  	$.ajax({
        url:'index.php?route=extension/module/enquiry/addenquiry&product_id='+product_id,
        type: 'post',
        data:$('#adds input[type=\'text\'],#adds textarea,#adds input[type=\'hidden\']'),
        dataType: 'json',
        beforeSend: function() {
        	
			$('#enquiries').button('loading');
			$('.loader').removeClass('hide');
			
        },
		complete: function() {
			$('#enquiries').button('reset');
		},
        success: function(json) {
			$('.alert, .alert-success, .text-danger, .warning').remove();
            /* validation class has error */
			$('.form-group').removeClass('has-error');	
			/* validation class has error */	
			$('.loader').addClass('hide');
			if(json['error']){				
				$('.warning').fadeIn('slow');
				
				if(json['error']['name']){
					
					$('.nameerror').after('<div class="warning">' + json['error']['name'] + '</div>');
				}
				
				if(json['error']['email']){					
					$('.emailerror').after('<div class="warning">' + json['error']['email'] + '</div>');
				}
				
				if(json['error']['telephone']){
					$('.telephoneerror').after('<div class="warning">' + json['error']['telephone'] + '</div>');
				}
				if(json['error']['description']){
					$('.descriptioneerror').after('<div class="warning">' + json['error']['description'] + '</div>');
				}
                /* validation class has error */			
				$('.warning').parentsUntil('.form-group').parent().addClass('has-error');
				/* validation class has error */
			}
			if (json['success']) {
				
				$('.contctseller').before('<div class="alert alert-successvendor">' + json['success'] + '<button type="button" class="close vendorbutton" data-dismiss="alert">&times;</button></div>');
				$('input[name=name]').val('');
				$('input[name=email]').val('');
				$('input[name=telephone]').val('');
				$('textarea[name=description]').val('');
                
                $('.alert-successvendor').fadeOut(4000);
			}
        }
    });
 });
</script>
<style>
.contctseller h2{background:<?php echo $headingbg; ?>!important;color:<?php echo $textcolor; ?>!important; }
.seller-info .seller-details .contacbtn{background:<?php echo $headingbg; ?>!important;}
.seller-info .seller-details .contacbtn a{color:<?php echo $textcolor; ?>!important;}
.seller-info .seller-details .contacbtn a{color:<?php echo $textcolor; ?>!important;}
.contctseller .warning{margin-top: 5px;}
.alert-successvendor{color: #3c763d;
    background-color: #dff0d8;
    border-color: #d6e9c6;padding: 8px 14px 8px 14px;margin-top:5px;}
.vendorbutton{right:6px!important;top:57%!important;}
</style>
<link href="catalog/view/theme/default/stylesheet/vendor.css" rel="stylesheet">	
<?php } ?>