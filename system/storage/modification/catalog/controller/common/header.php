<?php
class ControllerCommonHeader extends Controller {
	public function index() {
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');


		/* xml start */
		/* 03 10 2019 */
		$allalbles = $this->config->get('vendor_languages');	
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['loginseller'])) {
		$data['text_loginseller']	= $allalbles[$this->config->get('config_language_id')]['loginseller'];
		} else {
		$data['text_loginseller'] = $this->language->get('text_loginseller');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['sellerlist'])) {
		$data['text_allseller']	= $allalbles[$this->config->get('config_language_id')]['sellerlist'];
		} else {
		$data['text_allseller'] = $this->language->get('text_allseller');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['afterloginseller'])) {
		$data['text_selleraccount']	= $allalbles[$this->config->get('config_language_id')]['afterloginseller'];
		} else {
		$data['text_selleraccount'] = $this->language->get('text_selleraccount');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['sellerdash'])) {
		$data['text_dashboard']	= $allalbles[$this->config->get('config_language_id')]['sellerdash'];
		} else {
		$data['text_dashboard'] = $this->language->get('text_dashboard');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['sellerproduct'])) {
		$data['text_products']	= $allalbles[$this->config->get('config_language_id')]['sellerproduct'];
		} else {
		$data['text_products'] = $this->language->get('text_products');
		
		}
		
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['sellerreview'])) {
		$data['text_review']	= $allalbles[$this->config->get('config_language_id')]['sellerreview'];
		} else {
		$data['text_review'] = $this->language->get('text_review');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['managestore'])) {
		$data['text_managestore']	= $allalbles[$this->config->get('config_language_id')]['managestore'];
		} else {
		$data['text_managestore'] = $this->language->get('text_managestore');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['manageprofile'])) {
		$data['text_manageprofile']	= $allalbles[$this->config->get('config_language_id')]['manageprofile'];
		} else {
		$data['text_manageprofile'] = $this->language->get('text_manageprofile');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['download'])) {
		$data['text_sellerdownload']	= $allalbles[$this->config->get('config_language_id')]['download'];
		} else {
		$data['text_sellerdownload'] = $this->language->get('text_sellerdownload');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['manufacture'])) {
		$data['text_manufacture']	= $allalbles[$this->config->get('config_language_id')]['manufacture'];
		} else {
		$data['text_manufacture'] = $this->language->get('text_manufacture');
		}
		
		if(!empty($allalbles[$this->config->get('config_language_id')]['sellerprofile'])) {
		$data['text_profile']	= $allalbles[$this->config->get('config_language_id')]['sellerprofile'];
		} else {
		$data['text_profile'] = $this->language->get('text_profile');
		}
		if(!empty($allalbles[$this->config->get('config_language_id')]['sellerlogout'])) {
		$data['text_sellerlogout']	= $allalbles[$this->config->get('config_language_id')]['sellerlogout'];
		} else {
		$data['text_sellerlogout'] = $this->language->get('text_sellerlogout');
		}
		
		$data['vendorlogged'] = $this->vendor->isLogged();		
		$data['sellerlogin'] = $this->url->link('vendor/login', '', true);
		$data['allseller'] = $this->url->link('vendor/allseller', '', true);
		$data['dashboard'] = $this->url->link('vendor/dashboard', '', true);
		$data['products'] = $this->url->link('vendor/product', '', true);
		$data['review'] = $this->url->link('vendor/review', '', true);
		$data['managestore'] = $this->url->link('vendor/store', '', true);
		$data['manageprofile'] = $this->url->link('vendor/edit', '', true);
		$data['vdownload'] = $this->url->link('vendor/download', '', true);
		$data['manufacture'] = $this->url->link('vendor/manufacturer', '', true);
		$data['logouts'] = $this->url->link('vendor/logout', '', true);
		
		$this->load->model('vendor/vendor');	
		$vendorinfo =  $this->model_vendor_vendor->getVendor($this->vendor->getId());
	
		if(!empty($vendorinfo['keyword'])){
		$vendorkeyword = $vendorinfo['keyword'];
		} else{
		$vendorkeyword = $this->url->link('vendor/vendor_profile', '&vendor_id=' . $this->vendor->getId(), true);
		}
		$data['vendor_profile'] = $vendorkeyword;

        /* tmd vendor2 seler condtion  */
		$data['customer2vendor'] = $this->config->get('vendor_customer2vendor');
		/* tmd vendor2 seler condtion  */
		
		/* 03 10 2019 */
		/* xml end */
		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = defined('JOURNAL3_ACTIVE') ? array() : $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/header', $data);
	}
}
