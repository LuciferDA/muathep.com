<?php
class ControllerStartupSeoUrl extends Controller {
					private $url_list = array (
						'common/home' => '',
						'account/wishlist' => 'wishlist',
						'account/account' => 'account',
						'account/edit' => 'account/edit',
						'account/password' => 'account/password',
						'account/address' => 'account/address',
						'account/address/edit' => 'account/address/edit',
						'account/reward' => 'account/reward',
						'account/login' => 'account/login',
						'account/logout' => 'account/logout',
						'account/order' => 'account/order',
						'account/order/info' => 'account/order/info',
						'account/newsletter' => 'account/newsletter',
						'account/forgotten' => 'account/forgotten',
						'account/download' => 'account/download',
						'account/return' => 'account/return',
						'account/return/add' => 'account/return/add',
						'account/transaction' => 'account/transaction',
						'account/register' => 'account/register',
						'account/recurring' => 'account/recurring',
						'account/voucher' => 'account/voucher',
						'affiliate/account' => 'affiliate',
						'affiliate/edit' => 'affiliate/edit',
						'affiliate/password' => 'affiliate/password',
						'affiliate/payment' => 'affiliate/payment',
						'affiliate/tracking' => 'affiliate/tracking',
						'affiliate/transaction' => 'affiliate/transaction',
						'affiliate/logout' => 'affiliate/logout',
						'affiliate/forgotten' => 'affiliate/forgotten',
						'affiliate/register' => 'affiliate/register',
						'affiliate/login' => 'affiliate/login',
						'checkout/cart' => 'cart',
						'checkout/checkout' => 'checkout/checkout',
						'checkout/voucher' => 'voucher',
						'checkout/success' => 'success',
						'information/contact' => 'contact',
						'information/sitemap' => 'sitemap',
						'product/special' => 'special',
						'product/manufacturer' => 'manufacturer',
						'product/compare' => 'compare',
						'product/search' => 'search'
					); 
					
	public function index() {
		// Add rewrite to url class
		if ($this->config->get('config_seo_url')) {
			$this->url->addRewrite($this);
		}

		// Decode URL
		if (isset($this->request->get['_route_'])) {
			$parts = explode('/', $this->request->get['_route_']);

			// remove any empty arrays from trailing
			if (utf8_strlen(end($parts)) == 0) {
				array_pop($parts);
			}

			foreach ($parts as $part) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE keyword = '" . $this->db->escape($part) . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

				if ($query->num_rows) {
					$url = explode('=', $query->row['query']);

					if ($url[0] == 'product_id') {
						$this->request->get['product_id'] = $url[1];
					}

					if ($url[0] == 'news_id') {
						$this->request->get['news_id'] = $url[1];
					}

					if ($url[0] == 'category_id') {
						if (!isset($this->request->get['path'])) {
							$this->request->get['path'] = $url[1];
						} else {
							$this->request->get['path'] .= '_' . $url[1];
						}
					}

					if ($url[0] == 'category_news_id') {
						if (!isset($this->request->get['path_news'])) {
							$this->request->get['path_news'] = $url[1];
						} else {
							$this->request->get['path_news'] .= '_' . $url[1];
						}
					}

					if ($url[0] == 'manufacturer_id') {
						$this->request->get['manufacturer_id'] = $url[1];
					}

					if ($url[0] == 'information_id') {
						$this->request->get['information_id'] = $url[1];
					}

					if ($query->row['query'] && $url[0] != 'information_id' && $url[0] != 'manufacturer_id' && $url[0] != 'category_id' && $url[0] != 'product_id' && $url[0] != 'category_news_id' && $url[0] != 'news_id') {
						$this->request->get['route'] = $query->row['query'];
					}
				} else {
					$this->request->get['route'] = 'error/not_found';

					break;
				}
			}
				if ( $_s = $this->setURL($this->request->get['_route_']) ) {
					$this->request->get['route'] = $_s;
				}
			    if (!isset($this->request->get['route'])) {
				if (isset($this->request->get['product_id'])) {
					$this->request->get['route'] = 'product/product';
				} elseif (isset($this->request->get['news_id'])) {
					$this->request->get['route'] = 'news/news';
				} elseif (isset($this->request->get['path'])) {
					$this->request->get['route'] = 'product/category';
				} elseif (isset($this->request->get['path_news'])) {
					$this->request->get['route'] = 'news/category';
				} elseif (isset($this->request->get['manufacturer_id'])) {
					$this->request->get['route'] = 'product/manufacturer/info';
				} elseif (isset($this->request->get['information_id'])) {
					$this->request->get['route'] = 'information/information';
				}
			}
		}
	}

	public function rewrite($link) {
		$url_info = parse_url(str_replace('&amp;', '&', $link));

		$url = '';

		$data = array();

		parse_str($url_info['query'], $data);

		foreach ($data as $key => $value) {
			if (isset($data['route'])) {
				if (($data['route'] == 'product/product' && $key == 'product_id') || ($data['route'] == 'news/news' && $key == 'news_id') || (($data['route'] == 'product/manufacturer/info' || $data['route'] == 'product/product') && $key == 'manufacturer_id') || ($data['route'] == 'information/information' && $key == 'information_id')) {
					$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE `query` = '" . $this->db->escape($key . '=' . (int)$value) . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");

					if ($query->num_rows && $query->row['keyword']) {
						$url .= '/' . $query->row['keyword'];

						unset($data[$key]);
					}
				} elseif ($data['route'] == 'product/search' && $key == 'tag') {
						$url .= '/tag/' . $value;
						unset($data[$key]);					

} elseif ($key == 'route') {
	$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE `query` = '" . $this->db->escape($value) . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
   	if ($query->num_rows && $query->row['keyword']) {
	 	$url .= '/' . $query->row['keyword'];
	 	unset($data[$key]);
   	} else if ($data['route'] == "common/home") { 
	 $url .= '/'; 
   	} 	
			
				} elseif ($key == 'path') {
					$categories = explode('_', $value);

					foreach ($categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE `query` = 'category_id=" . (int)$category . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");

						if ($query->num_rows && $query->row['keyword']) {
							$url .= '/' . $query->row['keyword'];
						} else {
							$url = '';

							break;
						}
					}

					unset($data[$key]);
				} elseif ($key == 'path_news') {
					$categories = explode('_', $value);

					foreach ($categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE `query` = 'category_news_id=" . (int)$category . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");

						if ($query->num_rows && $query->row['keyword']) {
							$url .= '/' . $query->row['keyword'];
						} else {
							$url = '';

							break;
						}
					}

					unset($data[$key]);
				}
			}
		}
					if( $_u = $this->getURL($data['route']) ){
                        $url .= $_u;
                        unset($data[$key]);
                    }
		if ($url) {
			unset($data['route']);

			$query = '';

			if ($data) {
				foreach ($data as $key => $value) {
					$query .= '&' . rawurlencode((string)$key) . '=' . rawurlencode((is_array($value) ? http_build_query($value) : (string)$value));
				}

				if ($query) {
					$query = '?' . str_replace('&', '&amp;', trim($query, '&'));
				}
			}

			return $url_info['scheme'] . '://' . $url_info['host'] . (isset($url_info['port']) ? ':' . $url_info['port'] : '') . str_replace('/index.php', '', $url_info['path']) . $url . $query;
		} else {
			return $link;
		}
	}
					public function getURL($route) {
							if( count($this->url_list) > 0) {
								 foreach ($this->url_list as $key => $value) {
									if($route == $key) {
										return '/'.$value;
									}
								 }
							}
							return false;
					}
					public function setURL($_route) {
							if( count($this->url_list) > 0 ){
								 foreach ($this->url_list as $key => $value) {
									if($_route == $value) {
										return $key;
									}
								 }
							}
							return false;
					}	
}
