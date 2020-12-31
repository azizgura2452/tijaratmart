<div class="mobile-header mobile-default mobile-2">
  <div class="mobile-top-bar">
    <div class="mobile-top-menu-wrapper">
      <?php echo $j3->settings->get('mobile_top_menu'); ?>
    </div>
    <?php if($j3->settings->get('mobileLangPosition') === 'top'): ?>

				<!--xml start-->          
				   <div class="top-menu">		   
					<ul class="j-menu seller">
					<?php if($customer2vendor==1) { ?>
					<li class="tmd-menubox"><a href="<?php echo $allseller; ?>"><i class="fa fa-users fa-fw"></i> <span class="m-text"><?php echo $text_allseller; ?></span></a></li>
					<?php } ?>
					<?php if ($vendorlogged) { ?>
					<li class="dropdown"><a href="#" title="<?php echo $text_selleraccount; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-users"></i> <span class="m-text"><?php echo $text_selleraccount; ?></span> </a>
					<ul class="dropdown-menu dropdown-menu-right">
					
					<li><a href="<?php echo $vendor_profile; ?>"><i class="fa fa-user fa-fw"></i> <?php echo $text_profile; ?></a></li>
					<li><a href="<?php echo $dashboard; ?>"><i class="fa fa-dashboard fa-fw"></i> <?php echo $text_dashboard; ?></a></li>
					<li><a href="<?php echo $products; ?>"><i class="fa fa-list fa-fw"></i> <?php echo $text_products; ?></a></li>
					<li><a href="<?php echo $review; ?>"><i class="fa fa-star fa-fw"></i> <?php echo $text_review; ?></a></li>
					<li><a href="<?php echo $managestore; ?>"><i class="fa fa-cog fa-fw"></i> <?php echo $text_managestore; ?></a></li>
					<li><a href="<?php echo $manageprofile; ?>"><i class="fa fa-user fa-fw"></i> <?php echo $text_manageprofile; ?></a></li>
					<li><a href="<?php echo $vdownload; ?>"><i class="fa fa-cloud-download fa-fw"></i> <?php echo $text_sellerdownload; ?></a></li>
					<li><a href="<?php echo $manufacture; ?>"><i class="fa fa-thumb-tack fa-fw"></i> <?php echo $text_manufacture; ?></a></li>
					<li><a href="<?php echo $logouts; ?>"><i class="fa fa-sign-out fa-fw"></i> <?php echo $text_sellerlogout; ?></a></li>
					</ul>
				</li>
				<?php } else { ?>
					<li class="tmd-menubox"><a href="<?php echo $sellerlogin; ?>"><i class="fa fa-sign-in fa-fw"></i> <span class="m-text"><?php echo $text_loginseller; ?></span></a></li>
					<?php } ?>          
				</ul>
			</div>
		<!--xml end-->
    <div class="language-currency top-menu">
      <div class="mobile-currency-wrapper">
        <?php echo $j3->document->hasClass('mobile-header-active') ? $currency : ''; ?>
      </div>
      <div class="mobile-language-wrapper">
        <?php echo $j3->document->hasClass('mobile-header-active') ? $language : ''; ?>
      </div>
    </div>
    <?php endif; ?>
  </div>
  <div class="mobile-bar sticky-bar">
    <div class="menu-trigger">
      <button><span>Menu</span></button>
    </div>
    <?php if ($j3->settings->get('mobileCustomMenuStatus1')): ?>
    <a class="mobile-custom-menu mobile-custom-menu-1" href="<?php echo $j3->settings->get('mobileCustomMenuLink1.href'); ?>"<?php echo $j3->linkAttrs($j3->settings->get('mobileCustomMenuLink1.attrs')); ?>>
      <?php echo $j3->countBadge($j3->settings->get('mobileCustomMenuLink1.name'), $j3->cache->update($j3->settings->get('mobileCustomMenuLink1.total')), $j3->settings->get('mobileCustomMenuLink1.classes')); ?>
    </a>
    <?php endif; ?>
    <div class="mobile-logo-wrapper">
      <?php if ($j3->document->hasClass('mobile-header-active')): ?>
        <div id="logo">
          <?php if ($j3->settings->get('logo_src')): ?>
            <a href="<?php echo $home; ?>">
              <img src="<?php echo $j3->settings->get('logo_src'); ?>" <?php if ($j3->settings->get('logo2x_src')): ?>srcset="<?php echo $j3->settings->get('logo_src'); ?> 1x, <?php echo $j3->settings->get('logo2x_src'); ?> 2x"<?php endif; ?> width="<?php echo $j3->settings->get('logo_width'); ?>" height="<?php echo $j3->settings->get('logo_height'); ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>"/>
            </a>
          <?php else: ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php endif; ?>
        </div>
      <?php endif; ?>
    </div>
    <?php if ($j3->settings->get('mobileCustomMenuStatus2')): ?>
    <a class="mobile-custom-menu mobile-custom-menu-2" href="<?php echo $j3->settings->get('mobileCustomMenuLink2.href'); ?>"<?php echo $j3->linkAttrs($j3->settings->get('mobileCustomMenuLink2.attrs')); ?>>
      <?php echo $j3->countBadge($j3->settings->get('mobileCustomMenuLink2.name'), $j3->cache->update($j3->settings->get('mobileCustomMenuLink2.total')), $j3->settings->get('mobileCustomMenuLink2.classes')); ?>
    </a>
    <?php endif; ?>
    <div class="mobile-cart-wrapper mini-cart">
      <?php echo $j3->document->hasClass('mobile-header-active') ? $cart : ''; ?>
    </div>
  </div>
  <div class="mobile-bar-group mobile-search-group">
    <div class="mobile-search-wrapper full-search">
      <?php echo $j3->document->hasClass('mobile-header-active') ? $search : ''; ?>
    </div>
  </div>
</div>
