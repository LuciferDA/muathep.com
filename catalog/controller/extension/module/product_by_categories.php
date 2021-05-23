<?php
class ControllerExtensionModuleProductByCategories extends Controller {
	public function index($setting) {
        $this->load->language('extension/module/product_by_categories');
		static $module = 0;

		if ($setting['module_description']){

            $this->load->model('catalog/category');
            $this->load->model('catalog/product');
            $this->load->model('tool/image');

            $data['categories'] = array();

            foreach ($setting['module_description'] as $info) {

                $category_info = $this->model_catalog_category->getCategory($info['category_id']);

                $products = array();

                if ($category_info) {

                    $filter_data = array(
                        'filter_category_id' => $info['category_id'],
                        'filter_sub_category' => true,
                        'sort'               => 'p.date_added',
                        'order'              => 'DESC',
                        'start'              => 0,
                        'limit'              => (int)$info['limit'] ? (int)$info['limit'] : 20,
                    );

                    $results = $this->model_catalog_product->getProducts($filter_data);

                    foreach ($results as $result) {
                        if ($result['image']) {
                            $image = $this->model_tool_image->resize($result['image'], 400, 400);
                        } else {
                            $image = $this->model_tool_image->resize('placeholder.png', 400, 400);
                        }

                        if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                            $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                        } else {
                            $price = false;
                        }

                        if ((float)$result['special']) {
                            $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                        } else {
                            $special = false;
                        }

                        if ($this->config->get('config_tax')) {
                            $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
                        } else {
                            $tax = false;
                        }

                        $products[] = array(
                            'product_id'  => $result['product_id'],
                            'thumb'       => $image,
                            'name'        => $result['name'],
                            'description' => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, 100) . '..',
                            'price'       => $price,
                            'special'     => $special,
                            'tax'         => $tax,
                            'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
                            'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
                        );
                    }

                    $data['categories'][] = array(
                        'category_id' => $info['category_id'],
                        'name' => $category_info['name'],
                        'sort_order' => (int)$info['sort_order'],
                        'href' => $this->url->link('product/category', 'path=' . $info['category_id']),
                        'products' => $products
                    );
                     unset($products);
                }
		    }

            $data['categories'] = array_sort_elements($data['categories'], 'sort_order', 'ASC');

            $data['module'] = $module++;
            return $this->load->view('extension/module/product_by_categories', $data);
        }
	}
}