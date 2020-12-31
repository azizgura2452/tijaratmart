<div class="latestorderbox col-sm-12">
	 <h3 class="panel-title pull-left"><?php echo $heading_title; ?></h3>
	 <div class="pull-right btn btn-success"> <a href="<?php echo $viewallorder; ?>"><?php echo $text_viewallorders; ?></a></div>
 </div>
  <div class="clearfix"></div>
  <div id ="gethight" class="panel panel-default mainboxlatestorder">
  <div class="table-responsive">
    <table class="table orderbox">
      <thead>
        <tr>
          <td class="text-right"><?php echo $column_order_id; ?></td>
		  <?php if($customer2vendor==1) { ?>
          <td><?php echo $column_customer; ?></td>
           <?php } ?>
          <!--03 10 2019-->
		  <td class="text-left"><?php echo $column_noofproduct; ?></td>
		  <!--03 10 2019-->
          <td><?php echo $column_date_added; ?></td>
          <td class="text-right"><?php echo $column_total; ?></td>
          <td class="text-right"><?php echo $column_action; ?></td>
        </tr>
      </thead>
      <tbody>
		<?php foreach($orders as $order) { ?>
        <tr>
          <td class="text-right"><?php echo $order['order_id']; ?></td>
		  <?php if($customer2vendor==1) { ?>
		  <!--20 02 2020-->
		  <?php if($order['customer_id']==0) { ?>
			<td><span class="label label-info">Guest</span></td>
				<?php } else { ?>
          <td><?php echo $order['firstname']; ?></td>
			<?php } ?>
          <?php } ?>
							 
			<td class="text-left">   
			<?php if($order['noofproduct']==1) { ?>			
					<span class="label label-info"><?php echo $order['noofproduct']; ?></span>
				<?php } else { ?>
					<span class="label label-success"><?php echo $order['noofproduct']; ?></span>
				 <?php } ?>
			</td>
		<!--20 02 2020-->
		

          <td><span class="label btn-info"><i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo $order['date_added']; ?></span></td>
          <td class="text-right"><?php echo $order['total']; ?></td>
          <td class="text-right"><a href="<?php echo $order['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
        </tr>
		<?php } ?>
		<button id="myBtn" class="btn tmdreadmore"><i class="fa fa-angle-double-down"></i></button>
      </tbody>
    </table>
  </div>
</div>
<script type="text/javascript"><!--
	$(document).on('click','.pstatuss',function() {
		rel=$(this).attr('rel');
		rel1=$(this).attr('rel1');
		html  ='<div class="input-group addpstatus'+rel+'">';
		html +='<select type="text" name="order_status_id" id="pstatus'+rel+'" class="form-control">';
		<?php foreach ($order_statuss as $orders) { ?>
		 html += '<option value="<?php echo $orders['order_status_id']; ?>"><?php echo addslashes($orders['name']); ?></option>';
		<?php } ?>
		html += '</select>';

		html +='<input type="hidden" name="order_id" id="order_id'+rel+'" value="'+rel+'"/>';
		html +='<span class="input-group-btn"><button data-toggle="tooltip" title="<?php echo $button_save?>" class="btn btn-primary productsstatus" rel='+rel+' type="button"><i class="fa fa-save"></i></button></span></div></div>';
		$('#statusedit'+rel).html(html);
		$("#pstatus"+rel).val(rel1);
	  });

	$(document).on('click','.productsstatus',function() {
	  rel=$(this).attr('rel');
		  $.ajax({
			url: 'index.php?route=vendor/latestorder/addorderstatus',
			type:'post',
			dataType:'json',
			data: $('.addpstatus'+rel+' select, .addpstatus'+rel+' input[type=\'hidden\']'),
			beforeSend: function() {
				$('.productsstatus').button('loading');
			},
			complete: function() {
				$('.productsstatus').button('reset');
			},
			success: function(json) {
				if (json['success']) {
				}
				setTimeout(function(e){ $('.close').trigger('click');location.reload();},500);
			}
		});
	});

	var gethights = document.getElementById('gethight').offsetHeight;
		if (gethights<305) {
			$(".tmdreadmore").css("display", "none");
		}
	var defaultHeight = 305;
		var text = $(".mainboxlatestorder");
		var textHeight = text[0].scrollHeight;
		var button = $(".tmdreadmore");
		text.css({"max-height": defaultHeight, "overflow": "hidden"});

		button.on("click", function(){
		button.find('i').toggleClass('fa-angle-double-down fa-angle-double-up');

		var newHeight = 0;
		if (text.hasClass("active")) {
			newHeight = defaultHeight;
			text.removeClass("active");
		} else {
			newHeight = textHeight;
			text.addClass("active");
		}
		text.animate({
			"max-height": newHeight
		}, 500);
		console.log(newHeight);
	});
//--></script>
