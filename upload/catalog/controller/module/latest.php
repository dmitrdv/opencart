<?php
class ControllerModuleLatest extends Controller {
	protected function index($setting) {
		$this->language->load('module/latest');
		
      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
				
		$this->load->model('catalog/product');
        
		$this->load->model('catalog/category');
        
        $this->data['categories'] = $this->model_catalog_category->getCategories(0);

		$this->load->model('tool/image');
		
		$this->data['products'] = array();
        if (!isset($setting["filter_name"])) $setting["filter_name"] = '';
        if (!isset($setting["filter_tag"])) $setting["filter_tag"] = '';
        if (!isset($setting["filter_description"])) $setting["filter_description"] = '';
        if (!isset($setting["filter_sub_category"])) $setting["filter_sub_category"] = '';
        if (!isset($setting["filter_manufacturer_id"])) $setting["filter_manufacturer_id"] = '';
        if (!isset($setting["sort"])) $setting["sort"] = 'p.date_added';
        if (!isset($setting["order"])) $setting["order"] = 'DESC';
		$data = array(
            'filter_name'         => $setting["filter_name"], 
			'filter_tag'          => $setting["filter_tag"], 
			'filter_description'  => $setting["filter_description"],
			'filter_sub_category' => $setting["filter_sub_category"], 
            'filter_manufacturer_id' => $setting["filter_manufacturer_id"],
			'sort'  => $setting["sort"],
			'order' => $setting["order"],
			'start' => $setting['start'],
            'limit' => $setting['limit'],
            'filter_category_id' => $setting['category']
		);

        if (isset($setting["special"]) && $setting["special"] == 1) $results = $this->model_catalog_product->getProductSpecials($data); else $results = $this->model_catalog_product->getProducts($data);
    	
		foreach ($results as $result) {

			if ($result['image']) {
                $pageURL = "image/";
                if (file_exists($pageURL.$result['image'])) {
                    $imgsize = (getimagesize($pageURL.$result['image']));
				    $image = $this->model_tool_image->resize($result['image'], $setting['image_width'], ($imgsize[1]/($imgsize[0]/$setting['image_width'])));
                } else $image= false;
			} else {
				$image = false;
			}
						
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
            
            $this->data['catprod'] = array();

            $product_category = $this->model_catalog_product->getCategories($result['product_id']);

            foreach ($product_category as $prodcat) {
            
            $category_info = $this->model_catalog_category->getCategory($prodcat['category_id']);
            
            if ($category_info) {
            
            $this->data['catprod'][] = array(
            'name' => $category_info['name'],
            'href' => $this->url->link('product/category', 'path=' . $category_info['category_id'])
            );
            }
            }
            //end of product category
            
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'price'   	 => $price,
                'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 130) . '..',
				'special' 	 => $special,
				'rating'     => $rating,
                'location'   => $result['location'],
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
                'category'   => $this->data['catprod']
			);
            
            
            
		} 




		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/latest.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/latest.tpl';
		} else {
			$this->template = 'default/template/module/latest.tpl';
		}

		$this->render();
	}
}
?>