<?php
class ControllerExtensionModuleTmdOptionproSetting extends Controller {
	private $error = array();
public function install()
	{
	$this->load->model('extension/tmdoptionprosetting');
	$this->model_extension_tmdoptionprosetting->install();
	}	
	public function uninstall()
	{
	$this->load->model('extension/tmdoptionprosetting');
	$this->model_extension_tmdoptionprosetting->uninstall();
	}
	public function index() {
		$this->load->language('extension/module/tmdoptionprosetting');

		$this->document->setTitle($this->language->get('heading_title1'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('tmdoptionprosetting', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		$this->load->model('localisation/language');
		$data['languages'] 	= $this->model_localisation_language->getLanguages();

		$data['heading_title'] 				= $this->language->get('heading_title');

		$data['text_edit'] 					= $this->language->get('text_edit');
		$data['text_yes'] 					= $this->language->get('text_yes');
		$data['text_no'] 					= $this->language->get('text_no');
		$data['text_enabled'] 				= $this->language->get('text_enabled');
		$data['text_disabled'] 				= $this->language->get('text_disabled');
		$data['text_onpropage'] 				= $this->language->get('text_onpropage');

		$data['entry_skulabel'] 			= $this->language->get('entry_skulabel');
		$data['entry_displaysku'] 			= $this->language->get('entry_displaysku');
		$data['entry_status'] 				= $this->language->get('entry_status');
		$data['entry_displayupc'] 			= $this->language->get('entry_displayupc');
		$data['entry_displaymodel'] 		= $this->language->get('entry_displaymodel');
		$data['entry_displayean'] 			= $this->language->get('entry_displayean');
		$data['entry_displaydescription'] 	= $this->language->get('entry_displaydescription');
		$data['entry_displayimage'] 		= $this->language->get('entry_displayimage');
		$data['entry_imagelabel'] 			= $this->language->get('entry_imagelabel');
		$data['entry_descrlabel'] 			= $this->language->get('entry_descrlabel');
		$data['entry_eanlabel'] 			= $this->language->get('entry_eanlabel');
		$data['entry_modellabel'] 			= $this->language->get('entry_modellabel');
		$data['entry_upclabel'] 			= $this->language->get('entry_upclabel');

		$data['tab_language'] 				= $this->language->get('tab_language');
		$data['tab_setting'] 				= $this->language->get('tab_setting');

		$data['button_save'] 				= $this->language->get('button_save');
		$data['button_cancel'] 				= $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/tmdoptionprosetting', 'token=' . $this->session->data['token'], true)
		);

		$data['action'] = $this->url->link('extension/module/tmdoptionprosetting', 'token=' . $this->session->data['token'], true);

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

		if (isset($this->request->post['tmdoptionprosetting_displayprosku'])) {
			$data['tmdoptionprosetting_displayprosku'] = $this->request->post['tmdoptionprosetting_displayprosku'];
		} else {
			$data['tmdoptionprosetting_displayprosku'] = $this->config->get('tmdoptionprosetting_displayprosku');
		}

		if (isset($this->request->post['tmdoptionprosetting_status'])) {
			$data['tmdoptionprosetting_status'] = $this->request->post['tmdoptionprosetting_status'];
		} else {
			$data['tmdoptionprosetting_status'] = $this->config->get('tmdoptionprosetting_status');
		}

		if (isset($this->request->post['tmdoptionprosetting_displayproupc'])) {
			$data['tmdoptionprosetting_displayproupc'] = $this->request->post['tmdoptionprosetting_displayproupc'];
		} else {
			$data['tmdoptionprosetting_displayproupc'] = $this->config->get('tmdoptionprosetting_displayproupc');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaypromodel'])) {
			$data['tmdoptionprosetting_displaypromodel'] = $this->request->post['tmdoptionprosetting_displaypromodel'];
		} else {
			$data['tmdoptionprosetting_displaypromodel'] = $this->config->get('tmdoptionprosetting_displaypromodel');
		}

		if (isset($this->request->post['tmdoptionprosetting_displayproean'])) {
			$data['tmdoptionprosetting_displayproean'] = $this->request->post['tmdoptionprosetting_displayproean'];
		} else {
			$data['tmdoptionprosetting_displayproean'] = $this->config->get('tmdoptionprosetting_displayproean');
		}

		if (isset($this->request->post['tmdoptionprosetting_displayprodescription'])) {
			$data['tmdoptionprosetting_displayprodescription'] = $this->request->post['tmdoptionprosetting_displayprodescription'];
		} else {
			$data['tmdoptionprosetting_displayprodescription'] = $this->config->get('tmdoptionprosetting_displayprodescription');
		}

		if (isset($this->request->post['tmdoptionprosetting_displayproimage'])) {
			$data['tmdoptionprosetting_displayproimage'] = $this->request->post['tmdoptionprosetting_displayproimage'];
		} else {
			$data['tmdoptionprosetting_displayproimage'] = $this->config->get('tmdoptionprosetting_displayproimage');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaycartsku'])) {
			$data['tmdoptionprosetting_displaycartsku'] = $this->request->post['tmdoptionprosetting_displaycartsku'];
		} else {
			$data['tmdoptionprosetting_displaycartsku'] = $this->config->get('tmdoptionprosetting_displaycartsku');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaycartupc'])) {
			$data['tmdoptionprosetting_displaycartupc'] = $this->request->post['tmdoptionprosetting_displaycartupc'];
		} else {
			$data['tmdoptionprosetting_displaycartupc'] = $this->config->get('tmdoptionprosetting_displaycartupc');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaycartmodel'])) {
			$data['tmdoptionprosetting_displaycartmodel'] = $this->request->post['tmdoptionprosetting_displaycartmodel'];
		} else {
			$data['tmdoptionprosetting_displaycartmodel'] = $this->config->get('tmdoptionprosetting_displaycartmodel');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaycartean'])) {
			$data['tmdoptionprosetting_displaycartean'] = $this->request->post['tmdoptionprosetting_displaycartean'];
		} else {
			$data['tmdoptionprosetting_displaycartean'] = $this->config->get('tmdoptionprosetting_displaycartean');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaycartdescription'])) {
			$data['tmdoptionprosetting_displaycartdescription'] = $this->request->post['tmdoptionprosetting_displaycartdescription'];
		} else {
			$data['tmdoptionprosetting_displaycartdescription'] = $this->config->get('tmdoptionprosetting_displaycartdescription');
		}

		if (isset($this->request->post['tmdoptionprosetting_displaycartimage'])) {
			$data['tmdoptionprosetting_displaycartimage'] = $this->request->post['tmdoptionprosetting_displaycartimage'];
		} else {
			$data['tmdoptionprosetting_displaycartimage'] = $this->config->get('tmdoptionprosetting_displaycartimage');
		}

		
		$tmdoptionprosetting_label = $this->config->get('tmdoptionprosetting_label');
		if (isset($this->request->post['tmdoptionprosetting_label'])) {
			$data['tmdoptionprosetting_label'] = $this->request->post['tmdoptionprosetting_label'];
		} elseif ($tmdoptionprosetting_label) {
			$data['tmdoptionprosetting_label'] = $this->config->get('tmdoptionprosetting_label');
		} else {
			$data['tmdoptionprosetting_label'] = array();
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/tmdoptionprosetting', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/tmdoptionprosetting')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}