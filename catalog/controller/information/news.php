<?php
class ControllerInformationNews extends Controller {
	public function index() {
		$this->language->load('information/news');

		$this->load->model('extension/news');

		$this->load->model('tool/image');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' 		=> $this->language->get('text_home'),
			'href' 		=> $this->url->link('common/home')
		);
		$data['breadcrumbs'][] = array(
			'text' 		=> $this->language->get('heading_title'),
			'href' 		=> $this->url->link('information/news')
		);

		$url = '';

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$filter_data = array(
			'page' 	=> $page,
			'limit' => 10,
			'start' => 10 * ($page - 1),
		);

		$total = $this->model_extension_news->getTotalNews();


		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->url = $this->url->link('information/news', 'page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($total) ? (($page - 1) * 10) + 1 : 0, ((($page - 1) * 10) > ($total - 10)) ? $total : ((($page - 1) * 10) + 10), $total, ceil($total / 10));

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_title'] = $this->language->get('text_title');
		$data['text_description'] = $this->language->get('text_description');
		$data['text_date'] = $this->language->get('text_date');
		$data['text_view'] = $this->language->get('text_view');

		$all_news = $this->model_extension_news->getAllNews($filter_data);
		
		$data['all_news'] = array();
		foreach ($all_news as $news) {

			$data['all_news'][] = array (
				'title' 		=> html_entity_decode($news['name'], ENT_QUOTES),
				'image'			=> $this->model_tool_image->resize($news['image'], 300, 205),
				'description' 	=> (strlen(strip_tags(html_entity_decode($news['description'], ENT_QUOTES))) > 50 ? substr(strip_tags(html_entity_decode($news['description'], ENT_QUOTES)), 0, 50) . '...' : strip_tags(html_entity_decode($news['description'], ENT_QUOTES))),
				'view' 			=> $this->url->link('information/news/news', 'news_id=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added']))
			);
		}
		
		$data['continue'] = $this->url->link('common/home');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/news_list', $data));
	}

	public function news() {
		$this->load->model('extension/news');

		$this->language->load('information/news');

		if (isset($this->request->get['news_id']) && !empty($this->request->get['news_id'])) {
			$news_id = $this->request->get['news_id'];
		} else {
			$news_id = 0;
		}

		$news = $this->model_extension_news->getNews($news_id);

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' 			=> $this->language->get('text_home'),
			'href' 			=> $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/news')
		);

		if ($news) {
			$data['breadcrumbs'][] = array(
				'text' 		=> $news['name'],
				'href' 		=> $this->url->link('information/news/news', 'news_id=' . $news_id)
			);

			$this->document->setTitle($news['name']);

			$this->load->model('tool/image');

			$data['image'] = $this->model_tool_image->resize($news['image'], 200, 200);

			$data['heading_title'] = html_entity_decode($news['name'], ENT_QUOTES);
			$data['description'] = html_entity_decode($news['description'], ENT_QUOTES);

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (version_compare(VERSION, '2.2.0.0', '<')) {
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/news')) {
					$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/news', $data));
				} else {
					$this->response->setOutput($this->load->view('default/template/information/news', $data));
				}
			} else {
				$this->response->setOutput($this->load->view('information/news', $data));
			}
		} else {
			$data['breadcrumbs'][] = array(
				'text' 		=> $this->language->get('text_error'),
				'href' 		=> $this->url->link('information/news', 'news_id=' . $news_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');
			$data['text_error'] = $this->language->get('text_error');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (version_compare(VERSION, '2.2.0.0', '<')) {
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found')) {
					$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found', $data));
				} else {
					$this->response->setOutput($this->load->view('default/template/error/not_found', $data));
				}
			} else {
				$this->response->setOutput($this->load->view('error/not_found', $data));
			}
		}
	}
}
