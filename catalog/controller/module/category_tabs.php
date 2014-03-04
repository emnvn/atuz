<?php  
class ControllerModuleCategoryTabs extends Controller {
	protected function index($setting) {
		static $module = 0;
		$this->language->load('module/category_tabs');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}
		
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}
							
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(59);

		foreach ($categories as $category) {
			$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id'  => $category['category_id']));

			$children_data = array();

			$children = $this->model_catalog_category->getCategories($category['category_id']);

			foreach ($children as $child) {
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);

				$product_total = $this->model_catalog_product->getTotalProducts($data);

				$total += $product_total;

				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
				);		
			}


			$category_products = $this -> model_catalog_product->getProducts(
				array('filter_category_id'  => $category['category_id'])
			);
			$temp_category_products = array();
			//for($i=0;$i<count($category_products);$i++)
			foreach($category_products as $product_info)
			{
				//$product_info = $category_products[$i];
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				} else {
					$image = false;
				}
				$product_info['image'] = $image;
				$temp_category_products[] = $product_info;
			}
			if(count($category_products)>0)
			$this->data['categories'][] = array(
				'category_id' => $category['category_id'],
				'products' => $temp_category_products,
				'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);	
		}
		$this->data['module'] = $module++;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category_tabs.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category_tabs.tpl';
		} else {
			$this->template = 'default/template/module/category_tabs.tpl';
		}
		
		$this->render();
  	}

}
?>