<?php
class ControllerModuleTabContent extends Controller {
	
	private $error = array(); 
	private $name = 'TabContent';
	public function index() {   
		$this->load->language('module/TabContent');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {			
			$this->model_setting_setting->editSetting($this->name, $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		
		$this->data['entry_information'] = $this->language->get('entry_information');
		$this->data['entry_page'] = $this->language->get('entry_page');
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->error['image'])) {
			$this->data['error_image'] = $this->error['image'];
		} else {
			$this->data['error_image'] = array();
		}
				
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/'.$this->name, 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/'.$this->name, 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['token'] = $this->session->data['token'];			
		$this->load->model('catalog/information');
		$this->data['modules'] = array();
		
		if (isset($this->request->post[$this->name.'_module'])) {
			$this->data['modules'] = $this->request->post[$this->name.'_module'];
		} elseif ($this->config->get($this->name.'_module')) { 
			$this->data['modules'] = $this->config->get($this->name.'_module');
		}

		$i=0;
		foreach($this->data['modules'] as $module){
			$ids = $module["pages"];
			$ids = rtrim($ids);
			$ids_parts = explode(",",$ids);
			$module['informations'] = array();
			//echo "Language:".$this->config->get('language_id');
			foreach($ids_parts as $information_id){
				if($information_id =="")continue;
				
				$information_info = $this->model_catalog_information->getInformationDescriptions($information_id);
			if ($information_info) {
				$module['informations'][] = array(
					'information_id' => $information_id,
					'title'       => $information_info[$this->config->get('config_language_id')]['title']
				);
			}
			}
			$this->data['modules'][$i]=$module;
			$i++;
		}
		
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/TabContent.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	public function autocomplete() {
		$json = array();
		
		if (isset($this->request->get['filter_name'])) {
			$this->load->model('catalog/information');
			
			if (isset($this->request->get['filter_name'])) {
				$filter_name = $this->request->get['filter_name'];
			} else {
				$filter_name = '';
			}
			
			if (isset($this->request->get['limit'])) {
				$limit = $this->request->get['limit'];	
			} else {
				$limit = 20;	
			}			
						
			$data = array(
				'filter_name'         => $filter_name,
				'start'               => 0,
				'limit'               => $limit
			);
			
			$results = $this->model_catalog_information->getInformations($data);
			
			foreach ($results as $result) {
				$option_data = array();	
				$json[] = array(
						'information_id' => $result['information_id'],
						'title'       => strip_tags(html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'))
					);
			}
		}

		$this->response->setOutput(json_encode($json));
	}
	
	private function validate() {
	
		if (!$this->user->hasPermission('modify', 'module/TabContent')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>