<?php
class ControllerModuleNews extends Controller {
	protected function index($setting) {
		if(isset($this->request->get["news_id"])) $this->display_news($setting);
		else $this->display_categories($setting);
	}

	private function display_categories($setting)
	{
		$this->load->language('module/news');
		$this->load->model('fido/news');
		$this->load->model('tool/image');
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_read_more'] = $this->language->get('text_read_more');
		$this->data['text_date_added'] = $this->language->get('text_date_added');

		$this->data['show_headline'] = $this->config->get('news_headline_module');

		$this->data['news_count'] = $this->model_fido_news->getTotalNews();

		$this->data['news'] = array();

		$results = $this->model_fido_news->getNewsShorts($setting['limit']);

		foreach ($results as $result) {
			$image = "";
			if(isset($result["image"]))
			{
				$image=$this->model_tool_image->resize($result["image"],$this->config->get('news_thumb_width'),$this->config->get('news_thumb_height'));
			}
			$this->data['news'][] = array(
				'title'        => $result['title'],
				'image'			=> $image,
				'meta_description'        => $result['meta_description'],
				'description'  => substr(html_entity_decode($result['description']), 0, $setting['numchars']),
				'href'         => $this->url->link('information/news', 'news_id=' . $result['news_id']),
				'date_added'   => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$this->id = 'news';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/news.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/news/news.tpl';
		} else {
			$this->template = 'default/template/module/news/news.tpl';
		}
		//echo $this->template;
		$this->render();
	}
	
	private function display_news($setting)
	{
		$news_id = $this->request->get["news_id"];
		$this->load->model('fido/news');
		$this->load->model('tool/image');
		$news_info = $this->model_fido_news->getNewsStory($news_id);
		$news_info["thumb"] = $this->model_tool_image->resize($news_info["image"],$this->config->get('news_thumb_width'),$this->config->get('news_thumb_height'));
		$news_info["description"] = html_entity_decode($news_info["description"]);
		//$news_info["date_added"] = date_format();
		$this->data["news_info"] = $news_info;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/news/display_news.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/news/display_news.tpl';
		} else {
			$this->template = 'default/template/module/news/display_news.tpl';
		}

		$this->render();
		
	}
}
?>
