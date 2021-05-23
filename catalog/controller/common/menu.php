<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

        $data['home'] = $this->url->link('common/home');
        $data['contact'] = $this->url->link('information/contact');
		// Menu category product
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');

		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategories(0);
		$image="";
		foreach ($categories as $category) {
			if ($category['top']) {
				
				if ($category['image']) {
					$image = $this->model_tool_image->resize($category['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder,png', $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_category_height'));
				}
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);


				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					$children2_data=array();
                    $children2 = $this->model_catalog_category->getCategories($child['category_id']);

                    foreach ($children2 as $child2) {
    					$children2_data[] = array(
                            'category_id' => $child2['category_id'],
    						'name'  => $child2['name'],
    						'href'  => $this->url->link('product/category', 'path=' . $child2['category_id'], '', 'SSL'),
    					);
                        
                    }

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'name'  => $child['name'],
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']),
						'child' => $children2_data
					);
				}


				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id']),
					'image'		=> $image
				);
			}
		}
		//var_dump($data['categories']);die();
        // Menu category news

        $this->load->model('news/category');
        $data['categories_news'] = array();
        $categories = $this->model_news_category->getCategories(0);
        foreach ($categories as $category) {
            if ($category['top']) {
                // Level 2
                $children_data = array();

                $children = $this->model_catalog_category->getCategories($category['category_id']);

                foreach ($children as $child) {
                    $children_data[] = array(
                        'name'  => $child['name'],
                        'href'  => $this->url->link('news/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
                    );
                }

                // Level 1
                $data['categories_news'][] = array(
                    'name'     => $category['name'],
                    'children' => $children_data,
                    'column'   => $category['column'] ? $category['column'] : 1,
                    'href'     => $this->url->link('news/category', 'path_news=' . $category['category_id']),
                    'image'		=> $image
                );

            }
        }
        //var_dump($data['categories_news']);die();
		return $this->load->view('common/menu', $data);
	}
}
