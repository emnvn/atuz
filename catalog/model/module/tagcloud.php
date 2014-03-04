<?php
class ModelModuleTagcloud extends Model {
/* ###### Tag Cloud - inserted by Dav ###### */
	public function getRandomTags($limit = 5, $min_font_size = 9, $max_font_size = 25) {

		$names		= array();
		$totals		= array();
		$tags		= array();
		$tagcloud	= false;
		
		$tagQuery = $this->db->query("SELECT tag, COUNT(tag) AS total FROM " . DB_PREFIX . "product_description pt LEFT JOIN " . DB_PREFIX . "product p ON p.product_id = pt.product_id WHERE p.status = '1' AND pt.language_id = '" . $this->config->get('config_language_id') . "' GROUP BY tag ORDER BY RAND() LIMIT " . $limit);

		foreach ($tagQuery->rows as $row){
			$tag_parts= explode(',', $row['tag']);
			foreach($tag_parts as $tag)
			{
				//$names
				if(isset($tags[$tag]))
				$tags[$tag]+=1;
				else $tags[$tag]=1;
			}
			
			//$totals[]	= $row['total'];
		}

		//$tags = array_combine($names, $totals);

		$tagcloud = $this->generateTagCloud($tags, true, $min_font_size, $max_font_size);

		return $tagcloud;
	}
	/* ###### END Tag Cloud - inserted by Dav ###### */

	/* ###### Products Tags - inserted by Dav ###### */

	private function generateTagCloud($tags, $resize = true, $min_font_size = 9, $max_font_size = 25) {

		if ($resize == true){
			$max_qty = max(array_values($tags));
			$min_qty = min(array_values($tags));

			$spread = $max_qty - $min_qty;

			if ($spread == 0) {
				$spread = 1;
			}

			$step = ($max_font_size - $min_font_size) / ($spread);

			$cloud = array();

			foreach ($tags as $key => $value) {

				if($this->config->get('tagcloud_font_function') == '0'){
					$size=rand((int)$min_font_size,(int)$max_font_size);
				}else{
					$size = round($min_font_size + (($value - $min_qty) * $step));
				}
				//$cloud[] = '<a href="' . (HTTP_SERVER . 'index.php?route=product/search&filter_tag=' . $key) . '" style="text-decoration: none;font-size: ' . $size . 'px" title="' . $value . ' ' .$this->language->get('text_href_title') . ' ' . $key . '">' . $key . '</a> ';
				$cloud[] = '<a href="' . $this->url->link('product/search', 'filter_tag=' . trim($key)) . '" style="text-decoration: none;font-size: ' . $size . 'px" title="' . $value . ' ' .$this->language->get('text_href_title') . ' ' . $key . '">' . $key . '</a> ';
			}
		} else {
			foreach ($tags as $key => $value) {
				//$cloud[] = '<a href="' . (HTTP_SERVER . 'index.php?route=product/search&filter_tag=' . $key) . '" title="' . $value . ' products tagged with ' . $key . '">' . $key . '</a> ';
				$cloud[] = '<a href="' . $this->url->link('product/search', 'filter_tag=' . trim($key)) . '" title="' . $value . ' products tagged with ' . $key . '">' . $key . '</a> ';
			}
		}

		$tagcloud = '';

		for ($x = 0; $x < count($cloud); $x++) {
			$tagcloud .= $cloud[$x];
		}

		return $tagcloud;
	}
	/* ###### END Products Tags - inserted by Dav ###### */
}
?>