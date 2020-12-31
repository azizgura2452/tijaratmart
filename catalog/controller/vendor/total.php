<?php
class ControllerVendorTotal extends Controller {
	public function index() {
		$this->load->language('vendor/total');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_view'] = $this->language->get('text_view');
		$data['totalreviews'] = $this->model_vendor_vendor->getTotalReviews($this->vendor->getId());
		/* update */
		$data['viewreview'] = $this->url->link('vendor/review');
		/* update */
		
		
		return $this->load->view('vendor/total', $data);
	}
}
