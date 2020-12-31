<?php
class ModelExtensionTotalTax extends Model {
	public function getTotal($total) {
		foreach ($total['taxes'] as $key => $value) {
			if ($value > 0) {
			    //Custom GST Module
				$total['totals'][] = array(
					'code'       => 'tax',
					'title'      => 'GST',//'GST('.$this->tax->getRateName($key).')',
					'value'      => $value,
					'sort_order' => $this->config->get('tax_sort_order')
				);

				$total['total'] += $value;
			}
		}
	}
	//Custom tax change
}