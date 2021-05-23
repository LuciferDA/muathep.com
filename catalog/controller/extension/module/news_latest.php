<?php
class ControllerExtensionModuleNewsLatest extends Controller {
	public function index($setting) {

		$this->load->language('extension/module/news_latest');

		$this->load->model('news/news');

		$this->load->model('tool/image');

		$data['position'] = $setting['position'];

		$data['newss'] = array();

		$filter_data = array(
			'sort'  => 'n.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => (int)$setting['limit'] ? (int)$setting['limit'] : 10
		);

		$results = $this->model_news_news->getNewss($filter_data);

		if ($results) {
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
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

			return $this->load->view('extension/module/news_latest', $data);
		}
	}
}
