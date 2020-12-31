<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-4"><?php echo $totalproduct; ?></div>
			<div class="col-lg-3 col-md-3 col-sm-4"><?php echo $total; ?></div>
		<div class="col-lg-3 col-md-3 col-sm-4"><?php echo $totalorder; ?></div>
		<!-- 09 06 2018 -->
			<div class="col-lg-3 col-md-3 col-sm-4"><?php echo $mybalance; ?></div>
		<!-- 09 06 2018 -->
		</div>
		<div class="row">
		  <div class="col-lg-12 col-md-12 col-sm-12 col-sx-12"><?php echo $latestorder; ?></div>
		</div>
  </div>
</div>
<?php echo $footer; ?>
