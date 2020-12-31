<div class="header header-classic header-lg">
  <div class="top-bar navbar-nav">
    <?php echo $j3->settings->get('desktop_top_menu'); ?>
    <?php if ($j3->settings->get('langPosition') == 'top'): ?>

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
      <div class="desktop-language-wrapper">
        <?php echo $language; ?>
      </div>
      <div class="desktop-currency-wrapper">
        <?php echo $currency; ?>
      </div>
    </div>
    <?php endif; ?>
    <div class="third-menu"><?php echo $j3->settings->get('desktop_top_menu_3'); ?></div>
    <?php if ($j3->settings->get('secondaryMenuPosition') == 'top'): ?>
      <div class="top-menu secondary-menu"><?php echo $j3->settings->get('desktop_top_menu_2'); ?></div>
    <?php endif; ?>
  </div>
  <div class="mid-bar navbar-nav">
    <div class="desktop-logo-wrapper">
      <div id="logo">
        <?php if ($j3->settings->get('logo_src')): ?>
        <a href="<?php echo $home; ?>">
          <img src="<?php echo $j3->settings->get('logo_src'); ?>" <?php if ($j3->settings->get('logo2x_src')): ?>srcset="<?php echo $j3->settings->get('logo_src'); ?> 1x, <?php echo $j3->settings->get('logo2x_src'); ?> 2x"<?php endif; ?> width="<?php echo $j3->settings->get('logo_width'); ?>" height="<?php echo $j3->settings->get('logo_height'); ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>"/>
        </a>
        <?php else: ?>
        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <?php endif; ?>
      </div>
    </div>
    <?php if ($j3->settings->get('headerMainMenu2Position') == 'top'): ?>
      <?php echo $j3->settings->get('desktop_main_menu_2'); ?>
    <?php endif; ?>
    <div class="desktop-search-wrapper full-search default-search-wrapper">
      <?php echo $search; ?>
    </div>
    <?php if ($j3->settings->get('langPosition') == 'search'): ?>

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
      <div class="desktop-language-wrapper">
        <?php echo $language; ?>
      </div>
      <div class="desktop-currency-wrapper">
        <?php echo $currency; ?>
      </div>
    </div>
    <?php endif; ?>
      <div class="classic-cart-wrapper">
      <?php if ($j3->settings->get('secondaryMenuPosition') == 'cart'): ?>
          <div class="top-menu secondary-menu"><?php echo $j3->settings->get('desktop_top_menu_2'); ?></div>
      <?php endif; ?>
      <?php if ($j3->settings->get('cartPosition') == 'top'): ?>
          <div class="desktop-cart-wrapper default-cart-wrapper">
              <?php echo $cart; ?>
          </div>
      <?php endif; ?>
      </div>
  </div>
  <div class="desktop-main-menu-wrapper menu-<?php echo $j3->settings->get('headerMenuLayout'); ?> <?php if ($j3->settings->get('desktop_main_menu_2')): ?>has-menu-2<?php endif; ?> navbar-nav">
    <?php echo $j3->document->hasClass('mobile-header-active') ? '' : $j3->settings->get('desktop_main_menu'); ?>
    <?php if ($j3->settings->get('headerMainMenu2Position') == 'menu'): ?>
    <?php echo $j3->settings->get('desktop_main_menu_2'); ?>
    <?php endif; ?>
    <?php if ($j3->settings->get('cartPosition') == 'menu'): ?>
      <div class="desktop-cart-wrapper default-cart-wrapper">
        <?php echo $cart; ?>
      </div>
    <?php endif; ?>
  </div>
</div>
