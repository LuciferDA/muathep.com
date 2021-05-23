<?php
class ModelNewsCategory extends Model {
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category_news cn LEFT JOIN " . DB_PREFIX . "category_news_description cd ON (cn.category_id = cd.category_id) WHERE cn.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND cn.status = '1'");

		return $query->row;
	}

	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_news cn LEFT JOIN " . DB_PREFIX . "category_news_description cd ON (cn.category_id = cd.category_id) WHERE cn.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'  AND cn.status = '1' ORDER BY cn.sort_order, LCASE(cd.name)");

		return $query->rows;
	}

	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category_news WHERE parent_id = '" . (int)$parent_id . "' AND status = '1'");

		return $query->row['total'];
	}
}