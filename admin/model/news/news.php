<?php
class ModelNewsNews extends Model {
	public function addNews($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "news SET date_available = '" . $this->db->escape($data['date_available']) . "', status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', date_added = NOW(), date_modified = NOW()");

		$news_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "news SET image = '" . $this->db->escape($data['image']) . "' WHERE news_id = '" . (int)$news_id . "'");
		}

		foreach ($data['news_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "news_description SET news_id = '" . (int)$news_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', tag = '" . $this->db->escape($value['tag']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		if (isset($data['news_image'])) {
			foreach ($data['news_image'] as $news_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_image SET news_id = '" . (int)$news_id . "', image = '" . $this->db->escape($news_image['image']) . "', sort_order = '" . (int)$news_image['sort_order'] . "'");
			}
		}

		if (isset($data['news_download'])) {
			foreach ($data['news_download'] as $download_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_to_download SET news_id = '" . (int)$news_id . "', download_id = '" . (int)$download_id . "'");
			}
		}

		if (isset($data['news_category'])) {
			foreach ($data['news_category'] as $category_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_to_category SET news_id = '" . (int)$news_id . "', category_id = '" . (int)$category_id . "'");
			}
		}

		if (isset($data['news_related'])) {
			foreach ($data['news_related'] as $related_id) {
				$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "' AND related_id = '" . (int)$related_id . "'");
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_related SET news_id = '" . (int)$news_id . "', related_id = '" . (int)$related_id . "'");
				$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$related_id . "' AND related_id = '" . (int)$news_id . "'");
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_related SET news_id = '" . (int)$related_id . "', related_id = '" . (int)$news_id . "'");
			}
		}

		// SEO URL
		if (isset($data['news_seo_url'])) {
			foreach ($data['news_seo_url'] as $store_id => $language) {
				foreach ($language as $language_id => $keyword) {
					if (!empty($keyword)) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "seo_url SET store_id = '" . (int)$store_id . "', language_id = '" . (int)$language_id . "', query = 'news_id=" . (int)$news_id . "', keyword = '" . $this->db->escape($keyword) . "'");
					}
				}
			}
		}

		$this->cache->delete('news');

		return $news_id;
	}

	public function editNews($news_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "news SET date_available = '" . $this->db->escape($data['date_available']) . "', status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', date_modified = NOW() WHERE news_id = '" . (int)$news_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "news SET image = '" . $this->db->escape($data['image']) . "' WHERE news_id = '" . (int)$news_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "news_description WHERE news_id = '" . (int)$news_id . "'");

		foreach ($data['news_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "news_description SET news_id = '" . (int)$news_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', description = '" . $this->db->escape($value['description']) . "', tag = '" . $this->db->escape($value['tag']) . "', meta_title = '" . $this->db->escape($value['meta_title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "'");

		if (isset($data['news_image'])) {
			foreach ($data['news_image'] as $news_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_image SET news_id = '" . (int)$news_id . "', image = '" . $this->db->escape($news_image['image']) . "', sort_order = '" . (int)$news_image['sort_order'] . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_download WHERE news_id = '" . (int)$news_id . "'");

		if (isset($data['news_download'])) {
			foreach ($data['news_download'] as $download_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_to_download SET news_id = '" . (int)$news_id . "', download_id = '" . (int)$download_id . "'");
			}
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_category WHERE news_id = '" . (int)$news_id . "'");

		if (isset($data['news_category'])) {
			foreach ($data['news_category'] as $category_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_to_category SET news_id = '" . (int)$news_id . "', category_id = '" . (int)$category_id . "'");
			}
		}


		$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE related_id = '" . (int)$news_id . "'");

		if (isset($data['news_related'])) {
			foreach ($data['news_related'] as $related_id) {
				$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "' AND related_id = '" . (int)$related_id . "'");
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_related SET news_id = '" . (int)$news_id . "', related_id = '" . (int)$related_id . "'");
				$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$related_id . "' AND related_id = '" . (int)$news_id . "'");
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_related SET news_id = '" . (int)$related_id . "', related_id = '" . (int)$news_id . "'");
			}
		}

		// SEO URL
		$this->db->query("DELETE FROM " . DB_PREFIX . "seo_url WHERE query = 'news_id=" . (int)$news_id . "'");

		if (isset($data['news_seo_url'])) {
			foreach ($data['news_seo_url']as $store_id => $language) {
				foreach ($language as $language_id => $keyword) {
					if (!empty($keyword)) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "seo_url SET store_id = '" . (int)$store_id . "', language_id = '" . (int)$language_id . "', query = 'news_id=" . (int)$news_id . "', keyword = '" . $this->db->escape($keyword) . "'");
					}
				}
			}
		}

		$this->cache->delete('news');
	}

	public function copyNews($news_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "news p WHERE p.news_id = '" . (int)$news_id . "'");

		if ($query->num_rows) {
			$data = $query->row;

			$data['viewed'] = '0';
			$data['keyword'] = '';
			$data['status'] = '0';

			$data['news_attribute'] = $this->getNewsAttributes($news_id);
			$data['news_description'] = $this->getNewsDescriptions($news_id);
			$data['news_image'] = $this->getNewsImages($news_id);
			$data['news_related'] = $this->getNewsRelated($news_id);
			$data['news_category'] = $this->getNewsCategories($news_id);
			$data['news_download'] = $this->getNewsDownloads($news_id);

			$this->addNews($data);
		}
	}

	public function deleteNews($news_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "news WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_description WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE related_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_category WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_download WHERE news_id = '" . (int)$news_id . "'");
		//$this->db->query("DELETE FROM " . DB_PREFIX . "review WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "seo_url WHERE query = 'news_id=" . (int)$news_id . "'");

		$this->cache->delete('news');
	}

	public function getNews($news_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id) WHERE n.news_id = '" . (int)$news_id . "' AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getNewss($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND nd.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (isset($data['filter_status']) && $data['filter_status'] !== '') {
			$sql .= " AND n.status = '" . (int)$data['filter_status'] . "'";
		}

		$sql .= " GROUP BY n.news_id";

		$sort_data = array(
			'nd.name',
			'n.status',
			'n.sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY nd.name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getNewssByCategoryId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id) LEFT JOIN " . DB_PREFIX . "news_to_category n2c ON (n.news_id = n2c.news_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n2c.category_id = '" . (int)$category_id . "' ORDER BY nd.name ASC");

		return $query->rows;
	}

	public function getNewsDescriptions($news_id) {
		$news_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_description WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'description'      => $result['description'],
				'meta_title'       => $result['meta_title'],
				'meta_description' => $result['meta_description'],
				'meta_keyword'     => $result['meta_keyword'],
				'tag'              => $result['tag']
			);
		}

		return $news_description_data;
	}

	public function getNewsCategories($news_id) {
		$news_category_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_category WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_category_data[] = $result['category_id'];
		}

		return $news_category_data;
	}

	public function getNewsImages($news_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}

	public function getNewsDownloads($news_id) {
		$news_download_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_download WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_download_data[] = $result['download_id'];
		}

		return $news_download_data;
	}

	public function getNewsSeoUrls($news_id) {
		$news_seo_url_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seo_url WHERE query = 'news_id=" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_seo_url_data[$result['store_id']][$result['language_id']] = $result['keyword'];
		}

		return $news_seo_url_data;
	}

	public function getNewsRelated($news_id) {
		$news_related_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_related_data[] = $result['related_id'];
		}

		return $news_related_data;
	}

	public function getTotalNewss($data = array()) {
		$sql = "SELECT COUNT(DISTINCT n.news_id) AS total FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id)";

		$sql .= " WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND nd.name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (isset($data['filter_status']) && $data['filter_status'] !== '') {
			$sql .= " AND n.status = '" . (int)$data['filter_status'] . "'";
		}

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
}
