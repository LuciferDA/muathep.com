<?php
class ControllerNewsNews extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('news/news');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$this->load->model('news/category');

		if (isset($this->request->get['path_news'])) {
			$path_news = '';

			$parts = explode('_', (string)$this->request->get['path_news']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_news_id) {
				if (!$path_news) {
					$path_news = $path_news_id;
				} else {
					$path_news .= '_' . $path_news_id;
				}

				$category_info = $this->model_news_category->getCategory($path_news_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('news/category', 'path_news=' . $path_news)
					);
				}
			}

			// Set the last category breadcrumb
			$category_info = $this->model_news_category->getCategory($category_id);

			if ($category_info) {
				$url = '';

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
					'text' => $category_info['name'],
					'href' => $this->url->link('news/category', 'path_news=' . $this->request->get['path_news'] . $url)
				);
			}
		}

		if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('news/search', $url)
			);
		}

		if (isset($this->request->get['news_id'])) {
			$news_id = (int)$this->request->get['news_id'];
		} else {
			$news_id = 0;
		}

		$this->load->model('news/news');

		$news_info = $this->model_news_news->getNews($news_id);

		if ($news_info) {
			$url = '';

			if (isset($this->request->get['path_news'])) {
				$url .= '&path_news=' . $this->request->get['path_news'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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
				'text' => $news_info['name'],
				'href' => $this->url->link('news/news', $url . '&news_id=' . $this->request->get['news_id'])
			);

			$this->document->setTitle($news_info['meta_title']);
			$this->document->setDescription($news_info['meta_description']);
			$this->document->setKeywords($news_info['meta_keyword']);
			$this->document->addLink($this->url->link('news/news', 'news_id=' . $this->request->get['news_id']), 'canonical');

			$data['heading_title'] = $news_info['name'];

			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));

			$this->load->model('news/review');

			//$data['tab_review'] = sprintf($this->language->get('tab_review'), $news_info['reviews']);

			$data['news_id'] = (int)$this->request->get['news_id'];
			$data['description'] = html_entity_decode($news_info['description'], ENT_QUOTES, 'UTF-8');
            $data['date_added']  = date($this->language->get('datetime_format'), strtotime($news_info['date_added']));

			$this->load->model('tool/image');

			if ($news_info['image']) {
				$data['popup'] = $this->model_tool_image->resize($news_info['image'],700, 500);
			} else {
				$data['popup'] = '';
			}

			if ($news_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($news_info['image'], 400, 300);
			} else {
				$data['thumb'] = '';
			}

			$data['images'] = array();

			$results = $this->model_news_news->getNewsImages($this->request->get['news_id']);

			foreach ($results as $result) {
				$data['images'][] = array(
					'popup' => $this->model_tool_image->resize($result['image'], 700, 500),
					'thumb' => $this->model_tool_image->resize($result['image'], 400, 300)
				);
			}

			$data['review_status'] = $this->config->get('config_review_status');

			if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
			} else {
				$data['review_guest'] = false;
			}

			if ($this->customer->isLogged()) {
				$data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
			} else {
				$data['customer_name'] = '';
			}

			//$data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$news_info['reviews']);

			// Captcha
			if ($this->config->get('captcha_' . $this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}

			$data['share'] = $this->url->link('news/news', 'news_id=' . (int)$this->request->get['news_id']);

			$data['newss'] = array();

			$results = $this->model_news_news->getNewsRelated($this->request->get['news_id']);

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
					'description' => utf8_substr(trim(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'))), 0, 100) . '..',
					'href'        => $this->url->link('news/news', 'news_id=' . $result['news_id'])
				);
			}
			
			$data['tags'] = array();

			if ($news_info['tag']) {
				$tags = explode(',', $news_info['tag']);

				foreach ($tags as $tag) {
					$data['tags'][] = array(
						'tag'  => trim($tag),
						'href' => $this->url->link('news/search', 'tag=' . trim($tag))
					);
				}
			}

			$this->model_news_news->updateViewed($this->request->get['news_id']);

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('news/news', $data));
		} else {
			$url = '';

			if (isset($this->request->get['path_news'])) {
				$url .= '&path_news=' . $this->request->get['path_news'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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
				'href' => $this->url->link('news/news', $url . '&news_id=' . $news_id)
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

	public function review() {
		$this->load->language('news/news');

		$this->load->model('news/review');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_news_review->getTotalReviewsByNewsId($this->request->get['news_id']);

		$results = $this->model_news_review->getReviewsByNewsId($this->request->get['news_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('news/news/review', 'news_id=' . $this->request->get['news_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		$this->response->setOutput($this->load->view('news/review', $data));
	}

	public function write() {
		$this->load->language('news/news');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}

			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get('captcha_' . $this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('news/review');

				$this->model_news_review->addReview($this->request->get['news_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
