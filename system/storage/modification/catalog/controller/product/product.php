<?php
class ControllerProductProduct extends Controller {
	private $error = array();

	public function index() {

            if (defined('JOURNAL3_ACTIVE')) {
                $this->journal3->document->addStyle('catalog/view/theme/journal3/lib/imagezoom/imagezoom.min.css');
			    $this->journal3->document->addScript('catalog/view/theme/journal3/lib/imagezoom/jquery.imagezoom.min.js', 'footer');

                $this->journal3->document->addStyle('catalog/view/theme/journal3/lib/lightgallery/css/lightgallery.min.css');
                $this->journal3->document->addStyle('catalog/view/theme/journal3/lib/lightgallery/css/lg-transitions.min.css');
                $this->journal3->document->addScript('catalog/view/theme/journal3/lib/lightgallery/js/lightgallery-all.js', 'footer');

                $this->journal3->document->addStyle('catalog/view/theme/journal3/lib/swiper/swiper.min.css');
			    $this->journal3->document->addScript('catalog/view/theme/journal3/lib/swiper/swiper.min.js', 'footer');
            }
            
		$this->load->language('product/product');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$this->load->model('catalog/category');

		if (isset($this->request->get['path'])) {
			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = $path_id;
				} else {
					$path .= '_' . $path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path)
					);
				}
			}

			// Set the last category breadcrumb
			$category_info = $this->model_catalog_category->getCategory($category_id);

			if ($category_info) {
				$url = '';

				if (isset($this->request->get['sort'])) {
					$url .= '&sort=' . $this->request->get['sort'];
				}

				if (isset($this->request->get['order'])) {
					$url .= '&order=' . $this->request->get['order'];
				}

				if (isset($this->request->get['page'])) {
					$url .= '&page=' . $this->request->get['page'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$data['breadcrumbs'][] = array(
					'text' => $category_info['name'],
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url)
				);
			}
		}

		$this->load->model('catalog/manufacturer');

		if (isset($this->request->get['manufacturer_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_brand'),
				'href' => $this->url->link('product/manufacturer')
			);

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);

			if ($manufacturer_info) {
				$data['breadcrumbs'][] = array(
					'text' => $manufacturer_info['name'],
					'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
				);
			}
		}

		if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('product/search', $url)
			);
		}

		if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);



        $data['optionprosetting'] = $this->config->get('tmdoptionprosetting_status');
        $optionprosetting = $this->config->get('tmdoptionprosetting_status');
          $data['displaysku']         = $this->config->get('tmdoptionprosetting_displayprosku');
          $data['displayupc']         = $this->config->get('tmdoptionprosetting_displayproupc');
          $data['displaymodel']       = $this->config->get('tmdoptionprosetting_displaypromodel');
          $data['displayean']         = $this->config->get('tmdoptionprosetting_displayproean');
          $data['displaydescription'] = $this->config->get('tmdoptionprosetting_displayprodescription');
          $data['displayimage']       = $this->config->get('tmdoptionprosetting_displayproimage');

        $optionlabel=$this->config->get('tmdoptionprosetting_label');
        $config_language_id = $this->config->get('config_language_id');

        if(!empty($optionlabel[$config_language_id]['skulabel'])){
          $data['text_skulabel']  = $optionlabel[$config_language_id]['skulabel'];
        } else {
          $data['text_skulabel'] = 'SKU';
        }

        if(!empty($optionlabel[$config_language_id]['upclabel'])){
          $data['text_upclabel']  = $optionlabel[$config_language_id]['upclabel'];
        } else {
          $data['text_upclabel'] = 'UPC';
        }

        if(!empty($optionlabel[$config_language_id]['modellabel'])){
          $data['text_modellabel']  = $optionlabel[$config_language_id]['modellabel'];
        } else {
          $data['text_modellabel'] = 'Model';
        }

        if(!empty($optionlabel[$config_language_id]['eanlabel'])){
          $data['text_eanlabel']  = $optionlabel[$config_language_id]['eanlabel'];
        } else {
          $data['text_eanlabel'] = 'EAN';
        }

        if(!empty($optionlabel[$config_language_id]['descrlabel'])){
          $data['text_descriptionlabel']  = $optionlabel[$config_language_id]['descrlabel'];
        } else {
          $data['text_descriptionlabel'] = 'Description';
        }

        if(!empty($optionlabel[$config_language_id]['imagelabel'])){
          $data['text_imagelabel']  = $optionlabel[$config_language_id]['imagelabel'];
        } else {
          $data['text_imagelabel'] = 'Image';
        }

          
		if ($product_info) {

            if (defined('JOURNAL3_ACTIVE')) {
                $this->load->language('product/compare');

                $data['text_weight'] = $this->language->get('text_weight');
                $data['text_dimension'] = $this->language->get('text_dimension');
                $data['product_quantity'] = $product_info['quantity'];
                $data['product_price_value'] = $product_info['special'] ? $product_info['special'] > 0 : $product_info['price'] > 0;
                $data['product_sku'] = $product_info['sku'];
                $data['product_upc'] = $product_info['upc'];
                $data['product_ean'] = $product_info['ean'];
                $data['product_jan'] = $product_info['jan'];
                $data['product_isbn'] = $product_info['isbn'];
                $data['product_mpn'] = $product_info['mpn'];
                $data['product_location'] = $product_info['location'];
                $data['product_dimension'] = (float)$product_info['length'] || (float)$product_info['width'] || (float)$product_info['height'];
                $data['product_length'] = $this->length->format($product_info['length'], $product_info['length_class_id']);
                $data['product_width'] = $this->length->format($product_info['width'], $product_info['length_class_id']);
                $data['product_height'] = $this->length->format($product_info['height'], $product_info['length_class_id']);
                $data['product_weight'] = (float)$product_info['weight'] ? $this->weight->format($product_info['weight'], $product_info['weight_class_id']) : false;

                $data['product_labels'] = $this->journal3->productLabels($product_info, $product_info['price'], $product_info['special']);
                $data['product_exclude_classes'] = $this->journal3->productExcludeButton($product_info, $product_info['price'], $product_info['special']);
                $data['product_extra_buttons'] = $this->journal3->productExtraButton($product_info, $product_info['price'], $product_info['special']);
                $data['product_blocks'] = array();

                foreach($this->journal3->productBlocks($product_info, $product_info['price'], $product_info['special']) as $module_id => $module_data) {
                    if ($module_data['position'] === 'quickview' && $this->journal3->document->isPopup()) {
                    	if ($block = $this->load->controller('journal3/product_blocks', array('module_id' => $module_id, 'module_type' => 'product_blocks', 'product_info' => $product_info))) {
							$data['product_blocks']['default'][] = $block;
						}
                    } else if ($module_data['position'] === 'quickview_details' && $this->journal3->document->isPopup()) {
                    	if ($block = $this->load->controller('journal3/product_blocks', array('module_id' => $module_id, 'module_type' => 'product_blocks', 'product_info' => $product_info))) {
							$data['product_blocks']['bottom'][] = $block;
						}
                    } else if ($module_data['position'] === 'quickview_image' && $this->journal3->document->isPopup()) {
                    	if ($block = $this->load->controller('journal3/product_blocks', array('module_id' => $module_id, 'module_type' => 'product_blocks', 'product_info' => $product_info))) {
							$data['product_blocks']['image'][] = $block;
						}
                    } else if (!$this->journal3->document->isPopup()) {
                    	if ($block = $this->load->controller('journal3/product_blocks', array('module_id' => $module_id, 'module_type' => 'product_blocks', 'product_info' => $product_info))) {
							$data['product_blocks'][$module_data['position']][] = $block;
						}
                    }
                }

                $product_tabs = array();

                foreach($this->journal3->productTabs($product_info, $product_info['price'], $product_info['special']) as $module_id => $module_data) {
                    if ($module_data['position'] === 'quickview' && $this->journal3->document->isPopup()) {
                    	if ($tab = $this->load->controller('journal3/product_tabs', array('module_id' => $module_id, 'module_type' => 'product_tabs', 'product_info' => $product_info))) {
							$product_tabs['default'][] = $tab;
						}
                    } else if ($module_data['position'] === 'quickview_details' && $this->journal3->document->isPopup()) {
                    	if ($tab = $this->load->controller('journal3/product_tabs', array('module_id' => $module_id, 'module_type' => 'product_tabs', 'product_info' => $product_info))) {
							$product_tabs['bottom'][] = $tab;
						}
                    } else if ($module_data['position'] === 'quickview_image' && $this->journal3->document->isPopup()) {
                    	if ($tab = $this->load->controller('journal3/product_tabs', array('module_id' => $module_id, 'module_type' => 'product_tabs', 'product_info' => $product_info))) {
							$product_tabs['image'][] = $tab;
						}
                    } else if (!$this->journal3->document->isPopup()) {
                    	if ($tab = $this->load->controller('journal3/product_tabs', array('module_id' => $module_id, 'module_type' => 'product_tabs', 'product_info' => $product_info))) {
							$product_tabs[$module_data['position']][] = $tab;
						}
                    }
                }

                foreach ($product_tabs as $position => &$items) {
                    $_items = array();

                    foreach ($items as $item) {
                        $_items[$item['display']][] = $item;
                    }

                    foreach ($_items as $items) {
                        $data['product_blocks'][$position][] = $this->load->controller('journal3/product_tabs/tabs', array('items' => $items, 'position' => $position));
                    }
                }

                $this->load->model('catalog/manufacturer');

                $manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($product_info['manufacturer_id']);

                if ($manufacturer_info && $manufacturer_info['image']) {
                    $data['manufacturer_image'] = $this->model_journal3_image->resize($manufacturer_info['image'], $this->journal3->settings->get('image_dimensions_manufacturer_logo.width'), $this->journal3->settings->get('image_dimensions_manufacturer_logo.height'), $this->journal3->settings->get('image_dimensions_manufacturer_logo.resize'));
                    $data['manufacturer_image2x'] = $this->model_journal3_image->resize($manufacturer_info['image'], $this->journal3->settings->get('image_dimensions_manufacturer_logo.width') * 2, $this->journal3->settings->get('image_dimensions_manufacturer_logo.height') * 2, $this->journal3->settings->get('image_dimensions_manufacturer_logo.resize'));
                } else {
                    $data['manufacturer_image'] = false;
                }

                if ($product_info['special']) {
                    $data['date_end'] = $this->journal3->productCountdown($product_info);
                } else {
                    $data['date_end'] = false;
                }

                if ($this->journal3->document->isPopup()) {
                    $data['view_more_url'] = $this->url->link('product/product', 'product_id=' . (int)$this->request->get['product_id']);
                }
            }
            
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $product_info['name'],
				'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
			);

			$this->document->setTitle($product_info['meta_title']);
			$this->document->setDescription($product_info['meta_description']);
			$this->document->setKeywords($product_info['meta_keyword']);
			$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
			$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

			$data['heading_title'] = $product_info['name'];

			$data['text_select'] = $this->language->get('text_select');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_reward'] = $this->language->get('text_reward');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_stock'] = $this->language->get('text_stock');
			$data['text_discount'] = $this->language->get('text_discount');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_option'] = $this->language->get('text_option');
			$data['text_minimum'] = sprintf($this->language->get('text_minimum'), $product_info['minimum']);
			$data['text_write'] = $this->language->get('text_write');
			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));
			$data['text_note'] = $this->language->get('text_note');
			$data['text_tags'] = $this->language->get('text_tags');
			$data['text_related'] = $this->language->get('text_related');
			$data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
			$data['text_loading'] = $this->language->get('text_loading');

			$data['entry_qty'] = $this->language->get('entry_qty');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['entry_review'] = $this->language->get('entry_review');
			$data['entry_rating'] = $this->language->get('entry_rating');
			$data['entry_good'] = $this->language->get('entry_good');
			$data['entry_bad'] = $this->language->get('entry_bad');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_upload'] = $this->language->get('button_upload');
			$data['button_continue'] = $this->language->get('button_continue');

			$this->load->model('catalog/review');

			$data['tab_description'] = $this->language->get('tab_description');
			$data['tab_attribute'] = $this->language->get('tab_attribute');
			$data['tab_review'] = sprintf($this->language->get('tab_review'), $product_info['reviews']);

			$data['product_id'] = (int)$this->request->get['product_id'];
			$data['manufacturer'] = $product_info['manufacturer'];
			$data['manufacturers'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']);
			$data['model'] = $product_info['model'];
			$data['reward'] = $product_info['reward'];
			$data['points'] = $product_info['points'];
			$data['description'] = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');

			if ($product_info['quantity'] <= 0) {
				$data['stock'] = $product_info['stock_status'];
			} elseif ($this->config->get('config_stock_display')) {
				$data['stock'] = $product_info['quantity'];
			} else {
				
            if (defined('JOURNAL3_ACTIVE')) {
                $stylePrefix = $this->journal3->document->isPopup('quickview') ? 'quickviewPageStyle' : 'productPageStyle';
                $data['stock'] = $this->journal3->settings->get($stylePrefix . 'ProductInStockText');
            } else {
                $data['stock'] = $this->language->get('text_instock');
            }
            
			}

			$this->load->model('tool/image');

			if ($product_info['image']) {
				$data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height'));
			} else {
				$data['popup'] = '';
			}

			if ($product_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height'));
			} else {
				$data['thumb'] = '';
			}

			$data['images'] = array();

			$results = $this->model_catalog_product->getProductImages($this->request->get['product_id']);

            if (defined('JOURNAL3_ACTIVE')) {
                array_unshift($results, array('image' => $product_info['image']));

                foreach ($results as $result) {
				    $data['images'][] = array(
                        'galleryThumb'  => $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_popup_thumb.width'), $this->journal3->settings->get('image_dimensions_popup_thumb.height'), $this->journal3->settings->get('image_dimensions_popup_thumb.resize')),
                        'image'         => $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_thumb.width'), $this->journal3->settings->get('image_dimensions_thumb.height'), $this->journal3->settings->get('image_dimensions_thumb.resize')),
                        'image2x'       => $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_thumb.width') * 2, $this->journal3->settings->get('image_dimensions_thumb.height') * 2, $this->journal3->settings->get('image_dimensions_thumb.resize')),
                        'popup'         => $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_popup.width'), $this->journal3->settings->get('image_dimensions_popup.height'), $this->journal3->settings->get('image_dimensions_popup.resize')),
                        'thumb'         => $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_additional.width'), $this->journal3->settings->get('image_dimensions_additional.height'), $this->journal3->settings->get('image_dimensions_additional.resize')),
                        'thumb2x'       => $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_additional.width') * 2, $this->journal3->settings->get('image_dimensions_additional.height') * 2, $this->journal3->settings->get('image_dimensions_additional.resize'))
				    );
			    }

			    $results = array();
            }
            

			foreach ($results as $result) {
				$data['images'][] = array(
					'popup' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height')),
					'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_additional_width'), $this->config->get($this->config->get('config_theme') . '_image_additional_height'))
				);
			}

			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$data['price'] = false;
			}

			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$data['special'] = false;
			}

			if ($this->config->get('config_tax')) {
				$data['tax'] = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
			} else {
				$data['tax'] = false;
			}

			$discounts = $this->model_catalog_product->getProductDiscounts($this->request->get['product_id']);

			$data['discounts'] = array();

			foreach ($discounts as $discount) {
				$data['discounts'][] = array(
					'quantity' => $discount['quantity'],
					'price'    => $this->currency->format($this->tax->calculate($discount['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency'])
				);
			}

			$data['options'] = array();

			foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
				$product_option_value_data = array();

$images = array();
				foreach ($option['product_option_value'] as $option_value) {

            if ($data['displayimage'] == 1) {
              if (!empty($option_value['tmdimage'])) {
                $option_value['image'] = $option_value['tmdimage'];
              }
            }
          
					if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
						if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
							$price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $this->session->data['currency']);
						} else {
							$price = false;
						}


        
            $images = array(
                'galleryThumb'  => $this->model_journal3_image->resize($option_value['tmdimage'], $this->journal3->settings->get('image_dimensions_popup_thumb.width'), $this->journal3->settings->get('image_dimensions_popup_thumb.height'), $this->journal3->settings->get('image_dimensions_popup_thumb.resize')),
                'image'         => $this->model_journal3_image->resize($option_value['tmdimage'], $this->journal3->settings->get('image_dimensions_thumb.width'), $this->journal3->settings->get('image_dimensions_thumb.height'), $this->journal3->settings->get('image_dimensions_thumb.resize')),
                'image2x'       => $this->model_journal3_image->resize($option_value['tmdimage'], $this->journal3->settings->get('image_dimensions_thumb.width') * 2, $this->journal3->settings->get('image_dimensions_thumb.height') * 2, $this->journal3->settings->get('image_dimensions_thumb.resize')),
                'popup'         => $this->model_journal3_image->resize($option_value['tmdimage'], $this->journal3->settings->get('image_dimensions_popup.width'), $this->journal3->settings->get('image_dimensions_popup.height'), $this->journal3->settings->get('image_dimensions_popup.resize')),
                'thumb'         => $this->model_journal3_image->resize($option_value['tmdimage'], $this->journal3->settings->get('image_dimensions_additional.width'), $this->journal3->settings->get('image_dimensions_additional.height'), $this->journal3->settings->get('image_dimensions_additional.resize')),
                'thumb2x'       => $this->model_journal3_image->resize($option_value['tmdimage'], $this->journal3->settings->get('image_dimensions_additional.width') * 2, $this->journal3->settings->get('image_dimensions_additional.height') * 2, $this->journal3->settings->get('image_dimensions_additional.resize'))
            );
        
						$product_option_value_data[] = array(
							'product_option_value_id' => $option_value['product_option_value_id'],
							'option_value_id'         => $option_value['option_value_id'],
							'name'                    => $option_value['name'],
							
            'image'                   => defined('JOURNAL3_ACTIVE') ? ($option_value['image'] ? $this->model_journal3_image->resize($option_value['image'], $this->journal3->settings->get('image_dimensions_options.width'), $this->journal3->settings->get('image_dimensions_options.height'), $this->journal3->settings->get('image_dimensions_options.resize')) : false) : $this->model_tool_image->resize($option_value['image'], 50, 50),
            
							'price'                   => $price,

              'tmddefault'     => $option_value['tmddefault'],
              'sku'            => $option_value['sku'],
              'upc'            => $option_value['upc'],
              'model'          => $option_value['model'],
              'ean'            => $option_value['ean'],
              'description'    => $option_value['description'],
              'tmdimage'       => $images, //$this->model_tool_image->resize($option_value['tmdimage'], $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height')),
          
							'price_prefix'            => $option_value['price_prefix']
						);
					}
				}

				$data['options'][] = array(
					'product_option_id'    => $option['product_option_id'],
					'product_option_value' => $product_option_value_data,
					'option_id'            => $option['option_id'],
					'name'                 => $option['name'],
					'type'                 => $option['type'],
					'value'                => $option['value'],

        'option_style'             => $option['option_style'],
        'option_description'             => html_entity_decode($option['option_description'], ENT_QUOTES, 'UTF-8'),
        'button_text'             => $option['button_text'],
        'option_name'             => $option['option_name'],
        'text_color'             => $option['text_color'],
        'background_color'             => $option['background_color'],
          
					'required'             => $option['required']
				);
			}

			if ($product_info['minimum']) {
				$data['minimum'] = $product_info['minimum'];
			} else {
				$data['minimum'] = 1;
			}

			$data['review_status'] = $this->config->get('config_review_status');

                if (defined('JOURNAL3_ACTIVE')) {
                    if ($min_qty = (int)\Journal3\Utils\Arr::get($this->request->get, 'product_quantity', 0)) {
                        $data['minimum'] = $min_qty;
                    }
                }
            

			if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
			} else {
				$data['review_guest'] = false;
			}

			if ($this->customer->isLogged()) {
				$data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
			} else {
				$data['customer_name'] = '';
			}

			$data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']);
			$data['rating'] = (int)$product_info['rating'];

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}

			$data['share'] = $this->url->link('product/product', 'product_id=' . (int)$this->request->get['product_id']);

			$data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);

			$data['products'] = array();

			$results = defined('JOURNAL3_ACTIVE') ? array() : $this->model_catalog_product->getProductRelated($this->request->get['product_id']);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}

			$data['tags'] = array();

			if ($product_info['tag']) {
				$tags = explode(',', $product_info['tag']);

				foreach ($tags as $tag) {
					$data['tags'][] = array(
						'tag'  => trim($tag),
						'href' => $this->url->link('product/search', 'tag=' . trim($tag))
					);
				}
			}

			$data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

			$this->model_catalog_product->updateViewed($this->request->get['product_id']);

            if (defined('JOURNAL3_ACTIVE')) {
                $this->load->model('journal3/product');
                $this->model_journal3_product->addRecentlyViewedProduct($this->request->get['product_id']);

                $data['products_sold'] = $this->model_journal3_product->getProductsSold($this->request->get['product_id']);
                $data['product_views'] = $product_info['viewed'];
            }
            


			// <!--08-03-2019-->
			$this->load->model('vendor/vendor');
			$vendorproduct_id = $this->model_vendor_vendor->getSellerProduct($this->request->get['product_id']);
			
			
			
			if(!empty($vendorproduct_id['vendor_id'])){
			$vendor_ids = $vendorproduct_id['vendor_id'];
			} else {
			$vendor_ids = '';
			}
			$vendorchat_ids = $this->model_vendor_vendor->getChatid($vendor_ids);
			
			if(!empty($vendorchat_ids['message'])){
			$data['vendorchat_id'] = $vendorchat_ids['message'];
			} else {
			$data['vendorchat_id'] = '';
			} 
			
			/* 23 04 2020 */
			if(!empty($vendorproduct_id['vendor_id'])){
			$vendornameinfo = $this->model_vendor_vendor->getInProductSellerName($this->request->get['product_id'], $vendorproduct_id['vendor_id']);
			}
			
			$vlbles = $this->config->get('vendor_languages');	
			if(!empty($vlbles[$this->config->get('config_language_id')]['selernameinpro'])) {
			$data['text_vendorname']= $vlbles[$this->config->get('config_language_id')]['selernameinpro'].': ';
			} else {			
			$data['text_vendorname'] = $this->language->get('text_vendorname');
			}
			
			
			if(!empty($vendorproduct_id['vendor_id'])){
			$data['chkvendor_ids'] = $vendorproduct_id['vendor_id'];
			} else {
			$data['chkvendor_ids'] = 0;
			}
			
			if(!empty($vendornameinfo['firstname'])){
			$data['vendorname'] = $vendornameinfo['firstname'].' '.$vendornameinfo['lastname'];
			} else {
			$data['vendorname'] = '';
			}
			/* 23 04 2020 */
			$data['column_inpro'] = $this->load->controller('common/column_inpro');
			// vendor
			
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('product/product', $data));
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/product', $url . '&product_id=' . $product_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');


			// <!--08-03-2019-->
			$this->load->model('vendor/vendor');
			$vendorproduct_id = $this->model_vendor_vendor->getSellerProduct($this->request->get['product_id']);
			
			
			
			if(!empty($vendorproduct_id['vendor_id'])){
			$vendor_ids = $vendorproduct_id['vendor_id'];
			} else {
			$vendor_ids = '';
			}
			$vendorchat_ids = $this->model_vendor_vendor->getChatid($vendor_ids);
			
			if(!empty($vendorchat_ids['message'])){
			$data['vendorchat_id'] = $vendorchat_ids['message'];
			} else {
			$data['vendorchat_id'] = '';
			} 
			
			/* 23 04 2020 */
			if(!empty($vendorproduct_id['vendor_id'])){
			$vendornameinfo = $this->model_vendor_vendor->getInProductSellerName($this->request->get['product_id'], $vendorproduct_id['vendor_id']);
			}
			
			$vlbles = $this->config->get('vendor_languages');	
			if(!empty($vlbles[$this->config->get('config_language_id')]['selernameinpro'])) {
			$data['text_vendorname']= $vlbles[$this->config->get('config_language_id')]['selernameinpro'].': ';
			} else {			
			$data['text_vendorname'] = $this->language->get('text_vendorname');
			}
			
			
			if(!empty($vendorproduct_id['vendor_id'])){
			$data['chkvendor_ids'] = $vendorproduct_id['vendor_id'];
			} else {
			$data['chkvendor_ids'] = 0;
			}
			
			if(!empty($vendornameinfo['firstname'])){
			$data['vendorname'] = $vendornameinfo['firstname'].' '.$vendornameinfo['lastname'];
			} else {
			$data['vendorname'] = '';
			}
			/* 23 04 2020 */
			$data['column_inpro'] = $this->load->controller('common/column_inpro');
			// vendor
			
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function review() {
		$this->load->language('product/product');

		$this->load->model('catalog/review');

		$data['text_no_reviews'] = $this->language->get('text_no_reviews');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

		$results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		$this->response->setOutput($this->load->view('product/review', $data));
	}

	public function write() {
		$this->load->language('product/product');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}

			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/review');

				$this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}


           public function download() {
            if (isset($this->request->get['filename'])) {
              $filename = $this->request->get['filename'];
            } else {
              $filename = 0;
            }


            if ($filename) {
              $file = DIR_IMAGE . $filename;
              if (!file_exists(DIR_IMAGE . $file)) {
                $file = DIR_IMAGE .'catalog/'. $filename;

                if (!file_exists(DIR_IMAGE .'catalog/'. $file)) {
                  $file = DIR_IMAGE . 'catalog';
                }
              }
              $mask = '';

              if (!headers_sent()) {
                if (file_exists($file)) {
                  header('Content-Type: application/octet-stream');
                  header('Content-Disposition: attachment; filename="' . ($mask ? $mask : basename($file)) . '"');
                  header('Expires: 0');
                  header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
                  header('Pragma: public');
                  header('Content-Length: ' . filesize($file));

                  if (ob_get_level()) {
                    ob_end_clean();
                  }

                  readfile($file, 'rb');

                  exit();
                } else {
                  exit('Error: Could not find file ' . $file . '!');
                }
              } else {
                exit('Error: Headers already sent out!');
              }
            }
          }
          
	public function getRecurringDescription() {
		$this->load->language('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->post['recurring_id'])) {
			$recurring_id = $this->request->post['recurring_id'];
		} else {
			$recurring_id = 0;
		}

		if (isset($this->request->post['quantity'])) {
			$quantity = $this->request->post['quantity'];
		} else {
			$quantity = 1;
		}

		$product_info = $this->model_catalog_product->getProduct($product_id);
		$recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

		$json = array();

		if ($product_info && $recurring_info) {
			if (!$json) {
				$frequencies = array(
					'day'        => $this->language->get('text_day'),
					'week'       => $this->language->get('text_week'),
					'semi_month' => $this->language->get('text_semi_month'),
					'month'      => $this->language->get('text_month'),
					'year'       => $this->language->get('text_year'),
				);

				if ($recurring_info['trial_status'] == 1) {
					$price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
				} else {
					$trial_text = '';
				}

				$price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

				if ($recurring_info['duration']) {
					$text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				} else {
					$text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				}

				$json['success'] = $text;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
