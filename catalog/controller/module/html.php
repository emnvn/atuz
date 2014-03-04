<?php  
class ControllerModuleHTML extends Controller {
	protected function index($setting) {
		
    	$this->data['heading_title'] = html_entity_decode($setting['title'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
    	
		$this->data['message'] = html_entity_decode($setting['description'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		
		$this->data['output_id'] = $setting['entry_output_id'];

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/html.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/html.tpl';
		} else {
			$this->template = 'default/template/module/html.tpl';
		}
		
		$this->render();
	}
}
?>