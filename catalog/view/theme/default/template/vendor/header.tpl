<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<script src="catalog/view/javascript/vendor/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link type="text/css" href="catalog/view/theme/default/stylesheet/vendor/vendordashboard.css" rel="stylesheet" media="screen" />

<link href="catalog/view/javascript/vendor/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="catalog/view/javascript/vendor/summernote/summernote.js"></script>
<script src="catalog/view/javascript/vendor/datetimepicker/moment.js" type="text/javascript"></script>
<script src="catalog/view/javascript/vendor/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/vendor/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<?php foreach ($styles as $style) { ?>
<link type="text/css" href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/vendor/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<?php if ($lang=='ar') { ?>
        <link href="catalog/view/theme/default/stylesheet/vendor/bootstrap-rtl.css" rel="stylesheet">
		<link href="catalog/view/theme/default/stylesheet/vendor/bootstrap-rtl.min.css" rel="stylesheet">
		<link href="catalog/view/theme/default/stylesheet/vendor/rtl.css" rel="stylesheet">
		<style>
		#column-left + #content {padding-right: 50px;}
		</style>
<?php } ?>

<?php if ($lang=='he') { ?>
    <link href="catalog/view/theme/default/stylesheet/vendor/bootstrap-rtl.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/vendor/bootstrap-rtl.min.css" rel="stylesheet">
	<link href="catalog/view/theme/default/stylesheet/vendor/rtl.css" rel="stylesheet">
<?php } ?>
</head>
<body>
<div id="container">
<header id="header" class="navbar navbar-static-top">
  <div class="navbar-header">
    <?php if ($logged) { ?>
    <a type="button" id="button-menu" class="pull-left"><i class="fa fa-indent fa-lg"></i></a>
    <?php } ?>
    
  </div>
  <?php if ($logged) { ?>
  <ul class="nav pull-right rightmenu">
    <li><a href="<?php echo $myprofile; ?>"><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_myprofile; ?> </span> <i class="fa fa-user"></i></a></li>
    <li><a href="<?php echo $allseller; ?>"><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_allsellers; ?>  </span> <i class="fa fa-users"></i></a></li>
    <li><a href="<?php echo $logout; ?>"><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_logout; ?> </span> <i class="fa fa-sign-out fa-lg"></i></a></li>
	<?php if ($seller_logged) { ?>
		<li><a href="<?php echo $home; ?>"><img src="<?php echo $logos; ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>" class="storelogo"/></a>
		</li>
	<?php } ?>
  </ul>
  <?php } ?>
</header>
