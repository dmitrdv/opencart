<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
        
        
        
        $_GET["sort"] = 'p.date_added';
        $_GET["order"] = 'DESC';
        $category_id = 0;
        $this->data['special_block'] = $module = $this->getChild('module/latest', array(
            'limit' => 20,
            'image_width' => 185,
            'category' => $category_id,
            'start' => 0,
            'sort' => 'p.date_added',
            'order' => 'DESC'
        ));
        

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>