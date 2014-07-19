<?php
/*********************************************
Author : Stephen Hudson - Foxwe Studio
Extname: Slide Show by Foxwe
Date   : 2011-01-26
Ver	   : 1.1.0
Site   : http://www.foxwe.com
Email  : stephen@foxwe.com
**********************************************/


Class ControllerModuleSlideshowbyfoxwe extends Controller {
		private $error = array();
		//Index
		public function index()	{
			$this->load->language('module/slideshowbyfoxwe');
			$this->document->setTitle($this->language->get('heading_title'));
			$this->load->model('setting/setting');
			$this->load->model('tool/image');
			
			if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
				if(isset($this->request->post['slide_image'])){
					$foxweslide_imgage_settings = serialize($this->request->post['slide_image']);
				}else{
					$foxweslide_imgage_settings = "";
				}
				$foxweslide_settings = array(
					'slideshowbyfoxwe_status'      => $this->request->post['slideshowbyfoxwe_status'],
					'slideshowbyfoxwe_position'    => $this->request->post['slideshowbyfoxwe_position'],
					'slideshowbyfoxwe_sort_order'  => $this->request->post['slideshowbyfoxwe_sort_order'],
					'slideshowbyfoxwe_delay'       => $this->request->post['slideshowbyfoxwe_delay'],
					'slideshowbyfoxwe_speed'       => $this->request->post['slideshowbyfoxwe_speed'],
					'slideshowbyfoxwe_pause'       => $this->request->post['slideshowbyfoxwe_pause'],
					'slideshowbyfoxwe_height'      => $this->request->post['slideshowbyfoxwe_height'],
					'slideshowbyfoxwe_width'       => $this->request->post['slideshowbyfoxwe_width'],
					'slideshowbyfoxwe_effect'      => $this->request->post['slideshowbyfoxwe_effect'],
					'slideshowbyfoxwe_nav'         => $this->request->post['slideshowbyfoxwe_nav'],
					'slideshowbyfoxwe_navh'        => $this->request->post['slideshowbyfoxwe_navh'],
					'slideshowbyfoxwe_caption'     => $this->request->post['slideshowbyfoxwe_caption'],
					'slideshowbyfoxwe_slide_image' => $foxweslide_imgage_settings,
				);
				$this->model_setting_setting->editSetting('slideshowbyfoxwe', $foxweslide_settings);
				$this->session->data['success'] = $this->language->get('text_success');
				$this->redirect(HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']);
			}
			//Language...
			//Heading
			$this->data['heading_title'] 		= $this->language->get('heading_title');
			//Text
			$this->data['text_enabled'] 		= $this->language->get('text_enabled');
			$this->data['text_disabled'] 		= $this->language->get('text_disabled');
			$this->data['text_true'] 			= $this->language->get('text_true');
			$this->data['text_false'] 			= $this->language->get('text_false');
			$this->data['text_left']        	= $this->language->get('text_left');
			$this->data['text_right']       	= $this->language->get('text_right');
			$this->data['text_home']            = $this->language->get('text_home');
			$this->data['text_image_manager'] 	= $this->language->get('text_image_manager');
			$this->data['text_select']   		= $this->language->get('text_select');
			$this->data['text_module']   		= $this->language->get('text_module');
			//Entry
			$this->data['entry_position']   	= $this->language->get('entry_position');
			$this->data['entry_status']     	= $this->language->get('entry_status');
			$this->data['entry_delay']      	= $this->language->get('entry_delay');
			$this->data['entry_speed']      	= $this->language->get('entry_speed');
			$this->data['entry_transitions']	= $this->language->get('entry_transitions');
			$this->data['entry_pause']      	= $this->language->get('entry_pause');
			$this->data['entry_effect']     	= $this->language->get('entry_effect');
			$this->data['entry_nav']        	= $this->language->get('entry_nav');
			$this->data['entry_navh']       	= $this->language->get('entry_navh');
			$this->data['entry_caption']     	= $this->language->get('entry_caption');
			$this->data['entry_link']       	= $this->language->get('entry_link');
			$this->data['entry_alt']        	= $this->language->get('entry_alt');
			$this->data['entry_target']     	= $this->language->get('entry_target');
			$this->data['entry_descp']      	= $this->language->get('entry_descp');
			$this->data['entry_sort_order']     = $this->language->get('entry_sort_order');
			$this->data['entry_height']     	= $this->language->get('entry_height');
			$this->data['entry_width']      	= $this->language->get('entry_width');
			$this->data['entry_addimg']     	= $this->language->get('entry_addimg');
			
			//Button
			$this->data['button_save']          = $this->language->get('button_save');
			$this->data['button_cancel']        = $this->language->get('button_cancel');
			$this->data['button_add']           = $this->language->get('button_add');
			$this->data['button_remove']        = $this->language->get('button_remove');
			//Tips
			$this->data['tips_delay']           = $this->language->get('tips_delay');
			$this->data['tips_pause']           = $this->language->get('tips_pause');
			$this->data['tips_speed']           = $this->language->get('tips_speed');
			$this->data['tips_height']          = $this->language->get('tips_height');
			$this->data['tips_width']           = $this->language->get('tips_width');
			$this->data['tips_link']            = $this->language->get('tips_link');
			$this->data['tips_alt']             = $this->language->get('tips_alt');
			$this->data['tips_browse']          = $this->language->get('tips_browse');
			$this->data['tips_browsetitle']     = $this->language->get('tips_browsetitle');
			$this->data['tips_addslidetext']    = $this->language->get('tips_addslidetext');
			$this->data['tips_target']          = $this->language->get('tips_target');
			$this->data['tips_nav']             = $this->language->get('tips_nav');
			$this->data['tips_navh']            = $this->language->get('tips_navh');
			
			//Version
			$this->data['version']              = VERSION;
			
			if (isset($this->error['warning'])) {
				$this->data['error_warning'] = $this->error['warning'];
			} else {
				$this->data['error_warning'] = '';
			}
			//Breadcrumbs		
			$this->document->breadcrumbs = array();
			$this->document->breadcrumbs[] = array(
				'href'      => HTTPS_SERVER . 'index.php?route=common/home&token=' . $this->session->data['token'],
				'text'      => $this->language->get('text_home'),
				'separator' => FALSE
			);

			$this->document->breadcrumbs[] = array(
				'href'      => HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'],
				'text'      => $this->language->get('text_module'),
				'separator' => ' :: '
			);

			$this->document->breadcrumbs[] = array(
				'href'      => HTTPS_SERVER . 'index.php?route=module/slideshowbyfoxwe&token=' . $this->session->data['token'],
				'text'      => $this->language->get('heading_title'),
				'separator' => ' :: '
			);
			//Save
			$this->data['action'] = HTTPS_SERVER . 'index.php?route=module/slideshowbyfoxwe&token=' . $this->session->data['token'];
			//Cancel
			$this->data['cancel'] = HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'];
			
			//Value Submited
			if (isset($this->request->post['slideshowbyfoxwe_status'])) {
				$this->data['slideshowbyfoxwe_status'] = $this->request->post['slideshowbyfoxwe_status'];
			} else {
				$this->data['slideshowbyfoxwe_status'] = $this->config->get('slideshowbyfoxwe_status');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_position'])) {
				$this->data['slideshowbyfoxwe_position'] = $this->request->post['slideshowbyfoxwe_position'];
			} else {
				$this->data['slideshowbyfoxwe_position'] = $this->config->get('slideshowbyfoxwe_position');
			}

			if (isset($this->request->post['slideshowbyfoxwe_sort_order'])) {
				$this->data['slideshowbyfoxwe_sort_order'] = $this->request->post['slideshowbyfoxwe_sort_order'];
			} else {
				$this->data['slideshowbyfoxwe_sort_order'] = $this->config->get('slideshowbyfoxwe_sort_order');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_delay'])) {
				$this->data['slideshowbyfoxwe_delay'] = $this->request->post['slideshowbyfoxwe_delay'];
			} else {
				$this->data['slideshowbyfoxwe_delay'] = $this->config->get('slideshowbyfoxwe_delay');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_speed'])) {
				$this->data['slideshowbyfoxwe_speed'] = $this->request->post['slideshowbyfoxwe_speed'];
			} else {
				$this->data['slideshowbyfoxwe_speed'] = $this->config->get('slideshowbyfoxwe_speed');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_pause'])) {
				$this->data['slideshowbyfoxwe_pause'] = $this->request->post['slideshowbyfoxwe_pause'];
			} else {
				$this->data['slideshowbyfoxwe_pause'] = $this->config->get('slideshowbyfoxwe_pause');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_height'])) {
				$this->data['slideshowbyfoxwe_height'] = $this->request->post['slideshowbyfoxwe_height'];
			} else {
				$this->data['slideshowbyfoxwe_height'] = $this->config->get('slideshowbyfoxwe_height');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_width'])) {
				$this->data['slideshowbyfoxwe_width'] = $this->request->post['slideshowbyfoxwe_width'];
			} else {
				$this->data['slideshowbyfoxwe_width'] = $this->config->get('slideshowbyfoxwe_width');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_effect'])) {
				$this->data['slideshowbyfoxwe_effect'] = $this->request->post['slideshowbyfoxwe_effect'];
			} else {
				$this->data['slideshowbyfoxwe_effect'] = $this->config->get('slideshowbyfoxwe_effect');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_nav'])) {
				$this->data['slideshowbyfoxwe_nav'] = $this->request->post['slideshowbyfoxwe_nav'];
			} else {
				$this->data['slideshowbyfoxwe_nav'] = $this->config->get('slideshowbyfoxwe_nav');
			}
			
			if (isset($this->request->post['slideshowbyfoxwe_navh'])) {
				$this->data['slideshowbyfoxwe_navh'] = $this->request->post['slideshowbyfoxwe_navh'];
			} else {
				$this->data['slideshowbyfoxwe_navh'] = $this->config->get('slideshowbyfoxwe_navh');
			}
		
			if (isset($this->request->post['slideshowbyfoxwe_caption'])) {
				$this->data['slideshowbyfoxwe_caption'] = $this->request->post['slideshowbyfoxwe_caption'];
			} else {
				$this->data['slideshowbyfoxwe_caption'] = $this->config->get('slideshowbyfoxwe_caption');
			}
		
		
			$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
			$this->data['slide_images'] = array();
			$this->data['slide_images'] = unserialize($this->config->get('slideshowbyfoxwe_slide_image'));
			
			$this->template = 'module/slideshowbyfoxwe.tpl';
			$this->children = array(
				'common/header',
				'common/footer'
			);
			$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
		}
		//validate
		private function validate() {
			if (!$this->user->hasPermission('modify', 'module/slideshowbyfoxwe')) {
				$this->error['warning'] = $this->language->get('error_permission');
			}

			if (!$this->error) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
}
	


?>