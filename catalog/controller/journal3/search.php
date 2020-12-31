<?php

use Journal3\Opencart\Controller;
use Journal3\Utils\Arr;

class ControllerJournal3Search extends Controller {

	public function index() {
		$search_text = Arr::get($this->request->get, 'search');
		$category_id = Arr::get($this->request->get, 'category_id');
		
        $search = $this->optimizeSearchString($search_text);
        
		$url = '';

		if ($search) {
			$url .= '&search=' . urlencode(html_entity_decode($this->request->get['search'], ENT_QUOTES, 'UTF-8'));
		}

		$limit = (int)$this->journal3->settings->get('searchStyleSearchAutoSuggestLimit');

		if (!$limit) {
			$limit = 10;
		}

		$filter_data = array(
			'filter_name'        => $search,
			'filter_description' => $this->journal3->settings->get('searchStyleSearchAutoSuggestDescription'),
			'start'              => 0,
			'limit'              => $limit,
		);

		if ($category_id) {
			$filter_data['filter_category_id'] = $category_id;
		}

		$this->load->model('journal3/filter');
		$this->load->model('journal3/image');

		$products = array();

		$results = $this->model_journal3_filter->getProducts($filter_data);

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_autosuggest.width'), $this->journal3->settings->get('image_dimensions_autosuggest.height'), $this->journal3->settings->get('image_dimensions_autosuggest.resize'));
				$image2 = $this->model_journal3_image->resize($result['image'], $this->journal3->settings->get('image_dimensions_autosuggest.width') * 2, $this->journal3->settings->get('image_dimensions_autosuggest.height') * 2, $this->journal3->settings->get('image_dimensions_autosuggest.resize'));
			} else {
				$image = $this->model_journal3_image->resize('placeholder.png', $this->journal3->settings->get('image_dimensions_autosuggest.width'), $this->journal3->settings->get('image_dimensions_autosuggest.height'), $this->journal3->settings->get('image_dimensions_autosuggest.resize'));
				$image2 = $this->model_journal3_image->resize('placeholder.png', $this->journal3->settings->get('image_dimensions_autosuggest.width') * 2, $this->journal3->settings->get('image_dimensions_autosuggest.height') * 2, $this->journal3->settings->get('image_dimensions_autosuggest.resize'));
			}

			$price = false;
			$special = false;

			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				}
			}

			$products[] = array(
				'quantity'    => (int)$result['quantity'],
				'price_value' => $result['special'] ? $result['special'] > 0 : $result['price'] > 0,
				'product_id'  => $result['product_id'],
				'name'        => html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'),
				'thumb'       => $image,
				'thumb2'      => $image2,
				'price'       => $price,
				'special'     => $special,
				'href'        => $this->url->link('product/product', '&search=' . urlencode(html_entity_decode($this->request->get['search'], ENT_QUOTES, 'UTF-8')) . '&product_id=' . $result['product_id'] . $url),
			);
		}

		if ($products) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . urlencode(html_entity_decode($this->request->get['search'], ENT_QUOTES, 'UTF-8'));
			}

			if ($this->journal3->settings->get('searchStyleSearchAutoSuggestDescription')) {
				$url .= '&description=true';
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			$products[] = array(
				'view_more' => true,
				'name'      => $this->journal3->settings->get('searchStyleSearchViewMoreText'),
				'href'      => $this->url->link('product/search', $url),
			);
		} else {
			$products[] = array(
				'no_results' => true,
				'name'       => $this->journal3->settings->get('searchStyleSearchNoResultsText'),
			);
		}
        
        
		$this->renderJson('success', $products);
	}
    
  public function optimizeSearchString($searchString = "")
  {
    $stopwords = array( 'a'=>1, 'about'=>1, 'above'=>1, 'after'=>1, 'again'=>1, 'against'=>1, 'all'=>1, 'am'=>1, 'an'=>1, 'and'=>1, 'any'=>1, 'are'=>1, "aren't"=>1, 'as'=>1, 'at'=>1, 'be'=>1, 'because'=>1, 'been'=>1, 'before'=>1, 'being'=>1, 'below'=>1, 'between'=>1, 'both'=>1, 'but'=>1, 'by'=>1, "can't"=>1, 'cannot'=>1, 'could'=>1, "couldn't"=>1, 'did'=>1, "didn't"=>1, 'do'=>1, 'does'=>1, "doesn't"=>1, 'doing'=>1, "don't"=>1, 'down'=>1, 'during'=>1, 'each'=>1, 'few'=>1, 'for'=>1, 'from'=>1, 'further'=>1, 'had'=>1, "hadn't"=>1, 'has'=>1, "hasn't"=>1, 'have'=>1, "haven't"=>1, 'having'=>1, 'he'=>1, "he'd", "he'll", "he's"=>1, 'her'=>1, 'here'=>1, "here's"=>1, 'hers'=>1, 'herself'=>1, 'him'=>1, 'himself'=>1, 'his'=>1, 'how'=>1, "how's"=>1, 'i'=>1, "i'd", "i'll", "i'm", "i've"=>1, 'if'=>1, 'in'=>1, 'into'=>1, 'is'=>1, "isn't"=>1, 'it'=>1, "it's"=>1, 'its'=>1, 'itself'=>1, "let's"=>1, 'me'=>1, 'more'=>1, 'most'=>1, "mustn't"=>1, 'my'=>1, 'myself'=>1, 'no'=>1, 'nor'=>1, 'not'=>1, 'of'=>1, 'off'=>1, 'on'=>1, 'once'=>1, 'only'=>1, 'or'=>1, 'other'=>1, 'ought'=>1, 'our'=>1, 'ours'=>1, 'ourselves'=>1, 'out'=>1, 'over'=>1, 'own'=>1, 'same'=>1, "shan't"=>1, 'she'=>1, "she'd", "she'll", "she's"=>1, 'should'=>1, "shouldn't"=>1, 'so'=>1, 'some'=>1, 'such'=>1, 'than'=>1, 'that'=>1, "that's"=>1, 'the'=>1, 'their'=>1, 'theirs'=>1, 'them'=>1, 'themselves'=>1, 'then'=>1, 'there'=>1, "there's"=>1, 'these'=>1, 'they'=>1, "they'd", "they'll", "they're", "they've"=>1, 'this'=>1, 'those'=>1, 'through'=>1, 'to'=>1, 'too'=>1, 'under'=>1, 'until'=>1, 'up'=>1, 'very'=>1, 'was'=>1, "wasn't"=>1, 'we'=>1, "we'd", "we'll", "we're", "we've"=>1, 'were'=>1, "weren't"=>1, 'what'=>1, "what's"=>1, 'when'=>1, "when's"=>1, 'where'=>1, "where's"=>1, 'which'=>1, 'while'=>1, 'who'=>1, "who's"=>1, 'whom'=>1, 'why'=>1, "why's"=>1, 'with'=>1, "won't"=>1, 'would'=>1, "wouldn't"=>1, 'you'=>1, "you'd", "you'll", "you're", "you've"=>1, 'your'=>1, 'yours'=>1, 'yourself'=>1, 'yourselves'=>1, 'zero'=>1 );


    $words = preg_split('/[^-\w\']+/', $searchString, -1, PREG_SPLIT_NO_EMPTY);

    if (count($words) > 1) {
      $words = array_filter($words, function ($v) use (&$stopwords) {
        return !isset($stopwords[strtolower($v)]);
      }
      );
    }

    if (empty($words)) {
      return $searchString;
    }

    return implode(" ", $words);
  }
}
