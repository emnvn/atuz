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
	protected function index(){
        $this->data['config_url'] 	= $this->config->get('config_url');
        $this->data['delay']  		= $this->config->get('slideshowbyfoxwe_delay');
        $this->data['speed']  		= $this->config->get('slideshowbyfoxwe_speed');
        $this->data['pause']  		= $this->config->get('slideshowbyfoxwe_pause');
        $this->data['height'] 		= $this->config->get('slideshowbyfoxwe_height');
        $this->data['width']  		= $this->config->get('slideshowbyfoxwe_width');
		$this->data['effect']  		= $this->config->get('slideshowbyfoxwe_effect');
		$this->data['nav']  		= $this->config->get('slideshowbyfoxwe_nav');
		$this->data['navh']  		= $this->config->get('slideshowbyfoxwe_navh');
		$this->data['caption']  	= $this->config->get('slideshowbyfoxwe_caption');
		
		
		$this->data['slide_images'] = unserialize($this->config->get('slideshowbyfoxwe_slide_image'));
		$this->id = 'slideshowbyfoxwe';
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshowbyfoxwe.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/slideshowbyfoxwe.tpl';
		} else {
			$this->template = 'default/template/module/slideshowbyfoxwe.tpl';
		}
		
		$this->render();
	}
}




?>