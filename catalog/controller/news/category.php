<?php
class ControllerNewsCategory extends Controller {
	public function index() {
		$this->load->language('news/category');

		$this->load->model('news/category');
		$this->load->model('news/news');
		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'n.date_added';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = 10;
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path_news'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path_news = '';

			$parts = explode('_', (string)$this->request->get['path_news']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_news_id) {
				if (!$path_news) {
					$path_news = (int)$path_news_id;
				} else {
					$path_news .= '_' . (int)$path_news_id;
				}

				$category_info = $this->model_news_category->getCategory($path_news_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('news/category', 'path_news=' . $path_news . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_news_category->getCategory($category_id);

		if ($category_info) {
			$this->document->setTitle($category_info['meta_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			$data['heading_title'] = $category_info['name'];

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], 400, 300);
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_news_category->getCategories($category_id);

			foreach ($results as $result) {
				$data['categories'][] = array(
					'name' => $result['name'],
					'href' => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . '_' . $result['category_id'] . $url)
				);
			}

			$data['newss'] = array();

			$filter_data = array(
				'filter_category_id' => $category_id,
                'filter_sub_category' => true,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$news_total = $this->model_news_news->getTotalNewss($filter_data);

			$results = $this->model_news_news->getNewss($filter_data);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 400, 300);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 400, 300);
				}

				$data['newss'][] = array(
					'news_id'  => $result['news_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
                    'date_added'  => date($this->language->get('datetime_format'), strtotime($result['date_added'])),
					'description' => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, 200) . '..',
					'href'        => $this->url->link('news/news', 'path_news=' . $this->request->get['path_news'] . '&news_id=' . $result['news_id'] . $url)
				);
			}	
	

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'n.sort_order-ASC',
				'href'  => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . '&sort=n.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'nd.name-ASC',
				'href'  => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . '&sort=nd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'nd.name-DESC',
				'href'  => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . '&sort=nd.name&order=DESC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($limit, 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $news_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($news_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($news_total - $limit)) ? $news_total : ((($page - 1) * $limit) + $limit), $news_total, ceil($news_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('news/category', 'path_news=' . $category_info['category_id']), 'canonical');
			} else {
				$this->document->addLink($this->url->link('news/category', 'path_news=' . $category_info['category_id'] . '&page='. $page), 'canonical');
			}

			if ($page > 1) {
			    $this->document->addLink($this->url->link('news/category', 'path_news=' . $category_info['category_id'] . (($page - 2) ? '&page='. ($page - 1) : '')), 'prev');
			}

			if ($limit && ceil($news_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('news/category', 'path_news=' . $category_info['category_id'] . '&page='. ($page + 1)), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('news/category', $data));
		} else {
			$url = '';

			if (isset($this->request->get['path_news'])) {
				$url .= '&path_news=' . $this->request->get['path_news'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('news/category', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}
