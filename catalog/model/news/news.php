<?php
class ModelNewsNews extends Model {

	public function updateViewed($news_id) {
		$this->db->query("UPDATE " . DB_PREFIX . "news SET viewed = (viewed + 1) WHERE news_id = '" . (int)$news_id . "'");
	}

	public function getNews($news_id) {
		$query = $this->db->query("SELECT DISTINCT *, nd.name AS name, n.image, n.sort_order FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id) WHERE n.news_id = '" . (int)$news_id . "' AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n.status = '1' AND n.date_available <= NOW()");

		if ($query->num_rows) {
			return array(
				'news_id'       => $query->row['news_id'],
				'name'             => $query->row['name'],
				'description'      => $query->row['description'],
				'meta_title'       => $query->row['meta_title'],
				'meta_description' => $query->row['meta_description'],
				'meta_keyword'     => $query->row['meta_keyword'],
				'tag'              => $query->row['tag'],
				'image'            => $query->row['image'],
				'date_available'   => $query->row['date_available'],
				'sort_order'       => $query->row['sort_order'],
				'status'           => $query->row['status'],
				'date_added'       => $query->row['date_added'],
				'date_modified'    => $query->row['date_modified'],
				'viewed'           => $query->row['viewed']
			);
		} else {
			return false;
		}
	}

	public function getNewss($data = array()) {
		$sql = "SELECT n.news_id";

		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " FROM " . DB_PREFIX . "category_news_path cnp LEFT JOIN " . DB_PREFIX . "news_to_category n2c ON (cnp.category_id = n2c.category_id)";
			} else {
				$sql .= " FROM " . DB_PREFIX . "news_to_category n2c";
			}

            $sql .= " LEFT JOIN " . DB_PREFIX . "news n ON (n2c.news_id = n.news_id)";

		} else {
			$sql .= " FROM " . DB_PREFIX . "news n";
		}

		$sql .= " LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n.status = '1' AND n.date_available <= NOW()";

		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " AND cnp.path_id = '" . (int)$data['filter_category_id'] . "'";
			} else {
				$sql .= " AND n2c.category_id = '" . (int)$data['filter_category_id'] . "'";
			}
		}

		if (!empty($data['filter_name']) || !empty($data['filter_tag'])) {
			$sql .= " AND (";

			if (!empty($data['filter_name'])) {
				$implode = array();

				$words = explode(' ', trim(nreg_replace('/\s+/', ' ', $data['filter_name'])));

				foreach ($words as $word) {
					$implode[] = "nd.name LIKE '%" . $this->db->escape($word) . "%'";
				}

				if ($implode) {
					$sql .= " " . implode(" AND ", $implode) . "";
				}

				if (!empty($data['filter_description'])) {
					$sql .= " OR nd.description LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
				}
			}

			if (!empty($data['filter_name']) && !empty($data['filter_tag'])) {
				$sql .= " OR ";
			}

			if (!empty($data['filter_tag'])) {
				$implode = array();

				$words = explode(' ', trim(nreg_replace('/\s+/', ' ', $data['filter_tag'])));

				foreach ($words as $word) {
					$implode[] = "nd.tag LIKE '%" . $this->db->escape($word) . "%'";
				}

				if ($implode) {
					$sql .= " " . implode(" AND ", $implode) . "";
				}
			}

			$sql .= ")";
		}

		$sql .= " GROUP BY n.news_id";

		$sort_data = array(
			'nd.name',
			'n.sort_order',
			'n.date_added'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			if ($data['sort'] == 'nd.name') {
				$sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
			} else {
				$sql .= " ORDER BY " . $data['sort'];
			}
		} else {
			$sql .= " ORDER BY n.sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC, LCASE(nd.name) DESC";
		} else {
			$sql .= " ASC, LCASE(nd.name) ASC";
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

		$news_data = array();

		$query = $this->db->query($sql);

		foreach ($query->rows as $result) {
			$news_data[$result['news_id']] = $this->getNews($result['news_id']);
		}

		return $news_data;
	}

	public function getLatestNewss($limit) {
		$news_data = $this->cache->get('news.latest.' . (int)$this->config->get('config_language_id') . '.' . $this->config->get('config_customer_group_id') . '.' . (int)$limit);

		if (!$news_data) {
			$query = $this->db->query("SELECT news_id FROM " . DB_PREFIX . "news WHERE status = '1' AND date_available <= NOW() ORDER BY date_added DESC LIMIT " . (int)$limit);

			foreach ($query->rows as $result) {
				$news_data[$result['news_id']] = $this->getNews($result['news_id']);
			}

			$this->cache->set('news.latest.' . (int)$this->config->get('config_language_id') . '.' . $this->config->get('config_customer_group_id') . '.' . (int)$limit, $news_data);
		}

		return $news_data;
	}

	public function getPopularNewss($limit) {
		$news_data = $this->cache->get('news.popular.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . $this->config->get('config_customer_group_id') . '.' . (int)$limit);

		if (!$news_data) {
			$query = $this->db->query("SELECT news_id FROM " . DB_PREFIX . "news WHERE status = '1' AND date_available <= NOW() ORDER BY viewed DESC, date_added DESC LIMIT " . (int)$limit);

			foreach ($query->rows as $result) {
				$news_data[$result['news_id']] = $this->getNews($result['news_id']);
			}

			$this->cache->set('news.popular.' . (int)$this->config->get('config_language_id') . '.' . $this->config->get('config_customer_group_id') . '.' . (int)$limit, $news_data);
		}

		return $news_data;
	}

	public function getNewsImages($news_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}

	public function getNewsRelated($news_id) {
		$news_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_related nr LEFT JOIN " . DB_PREFIX . "news n ON (nr.related_id = n.news_id) WHERE nr.news_id = '" . (int)$news_id . "' AND n.status = '1' AND n.date_available <= NOW()");

		foreach ($query->rows as $result) {
			$news_data[$result['related_id']] = $this->getNews($result['related_id']);
		}

		return $news_data;
	}

	public function getCategories($news_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_category WHERE news_id = '" . (int)$news_id . "'");

		return $query->rows;
	}

	public function getTotalNewss($data = array()) {
		$sql = "SELECT COUNT(DISTINCT n.news_id) AS total";

		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " FROM " . DB_PREFIX . "category_news_path cnp LEFT JOIN " . DB_PREFIX . "news_to_category n2c ON (cnp.category_id = n2c.category_id)";
			} else {
				$sql .= " FROM " . DB_PREFIX . "news_to_category n2c";
			}

            $sql .= " LEFT JOIN " . DB_PREFIX . "news n ON (n2c.news_id = n.news_id)";

		} else {
			$sql .= " FROM " . DB_PREFIX . "news n";
		}

		$sql .= " LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n.status = '1' AND n.date_available <= NOW()";

		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " AND cnp.path_id = '" . (int)$data['filter_category_id'] . "'";
			} else {
				$sql .= " AND n2c.category_id = '" . (int)$data['filter_category_id'] . "'";
			}
		}

		if (!empty($data['filter_name']) || !empty($data['filter_tag'])) {
			$sql .= " AND (";

			if (!empty($data['filter_name'])) {
				$implode = array();

				$words = explode(' ', trim(nreg_replace('/\s+/', ' ', $data['filter_name'])));

				foreach ($words as $word) {
					$implode[] = "nd.name LIKE '%" . $this->db->escape($word) . "%'";
				}

				if ($implode) {
					$sql .= " " . implode(" AND ", $implode) . "";
				}

				if (!empty($data['filter_description'])) {
					$sql .= " OR nd.description LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
				}
			}

			if (!empty($data['filter_name']) && !empty($data['filter_tag'])) {
				$sql .= " OR ";
			}

			if (!empty($data['filter_tag'])) {
				$implode = array();

				$words = explode(' ', trim(nreg_replace('/\s+/', ' ', $data['filter_tag'])));

				foreach ($words as $word) {
					$implode[] = "nd.tag LIKE '%" . $this->db->escape($word) . "%'";
				}

				if ($implode) {
					$sql .= " " . implode(" AND ", $implode) . "";
				}
			}

			$sql .= ")";
		}

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
}
