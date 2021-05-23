<?php
/**
 * Products FAQ by opencart-templates
 */
class ModelExtensionModuleEmailTemplateQuestion extends Model {

	public function getQuestion($question_id){
		$sql = "SELECT * FROM " . DB_PREFIX . "question WHERE question_id = '" . (int)$question_id . "' LIMIT 1";

		$query = $this->db->query($sql);

		return $query->row;
	}

	public function getQuestions($data = array()) {
		$sql = "SELECT q.*, CONCAT(c.firstname, ' ', c.lastname) AS customer, pd.name AS product FROM " . DB_PREFIX . "question q LEFT JOIN " . DB_PREFIX . "customer c ON(q.customer_id = c.customer_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON(q.product_id = pd.product_id AND pd.language_id = " . (int)$this->config->get('config_language_id') . ")";

		$where = array();

		if (!empty($data['filter_question'])) {
			$where[] = "q.question LIKE '%" . $this->db->escape((string)$data['filter_question']) . "%'";
		}

		if (!empty($data['filter_answer'])) {
			$where[] = "q.answer LIKE '%" . $this->db->escape((string)$data['filter_answer']) . "%'";
		}

		if (!empty($data['filter_name'])) {
			$where[] = "q.name LIKE '" . $this->db->escape((string)$data['filter_name']) . "%'";
		}

		if (!empty($data['filter_product'])) {
			if (is_numeric($data['filter_product'])) {
				$where[] = "q.product_id = '" . (int)$data['filter_product'] . "'";
			} else {
				$where[] = "pd.name LIKE '%" . $this->db->escape((string)$data['filter_product']) . "%'";
			}
		}

		if (isset($data['filter_status']) && $data['filter_status'] !== '') {
			$where[] = "q.status = '" . (int)$data['filter_status'] . "'";
		}

		if ($where) {
			$sql .= " WHERE " . implode($where, " AND ");
		}

		$sort_data = array(
			'product' => 'product',
			'status' => 'q.status',
            'name' => 'q.name',
            'question' => 'q.answer',
            'answer' => 'q.answer',
            'date_added' => 'q.date_added'
		);

		if (isset($data['sort']) && in_array($data['sort'], array_keys($sort_data))) {
			$sql .= " ORDER BY " . $sort_data[$data['sort']];
		} else {
			$sql .= " ORDER BY q.date_added";
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
		} else {
			$sql .= " LIMIT 20";
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalQuestions($data = array()) {
		$sql = "SELECT COUNT(DISTINCT q.question_id) AS total FROM " . DB_PREFIX . "question q";

        $where = array();

        if (!empty($data['filter_question'])) {
            $where[] = "q.question LIKE '%" . $this->db->escape((string)$data['filter_question']) . "%'";
        }

        if (!empty($data['filter_answer'])) {
            $where[] = "q.answer LIKE '%" . $this->db->escape((string)$data['filter_answer']) . "%'";
        }

        if (!empty($data['filter_name'])) {
            $where[] = "q.name LIKE '" . $this->db->escape((string)$data['filter_name']) . "%'";
        }

        if (!empty($data['filter_product'])) {
            if (is_numeric($data['filter_product'])) {
                $where[] = "q.product_id = '" . (int)$data['filter_product'] . "'";
            } else {
                $where[] = "pd.name LIKE '%" . $this->db->escape((string)$data['filter_product']) . "%'";
            }
        }

        if (isset($data['filter_status']) && $data['filter_status'] !== '') {
            $where[] = "q.status = '" . (int)$data['filter_status'] . "'";
        }

        if ($where) {
            $sql .= " WHERE " . implode($where, " AND ");
        }

		$query = $this->db->query($sql);

		return $query->row['total'];
	}

	public function getCustomerQuestions($customer_id){
		$sql = "SELECT * FROM " . DB_PREFIX . "question q WHERE q.customer_id = '" . (int)$customer_id . "' ORDER BY q.date_added DESC";

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function editQuestion($question_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "question` SET `question` = '" . $this->db->escape($data['question']) . "', `answer` = '" . $this->db->escape($data['answer']) . "', `name` = '" . $this->db->escape($data['name']) . "', `email` = '" . $this->db->escape($data['email']) . "', `status` = '" . (int)$data['status'] . "', `customer_id` = '" . (int)$data['customer_id'] . "', `product_id` = '" . (int)$data['product_id'] . "' WHERE `question_id` = '" . (int)$question_id . "'");

        return ($this->db->countAffected() > 0) ? true : false;
	}

	public function editQuestionAnswer($question_id, $answer) {
		$this->db->query("UPDATE `" . DB_PREFIX . "question` SET `answer` = '" . $this->db->escape($answer) . "' WHERE `question_id` = '" . (int)$question_id . "'");

        return ($this->db->countAffected() > 0) ? true : false;
	}

	public function addQuestion($data) {
		$this->db->query("INSERT INTO `" . DB_PREFIX . "question` SET `question` = '" . $this->db->escape($data['question']) . "', `answer` = '" . $this->db->escape($data['answer']) . "', `name` = '" . $this->db->escape($data['name']) . "', `email` = '" . $this->db->escape($data['email']) . "', `status` = '" . (int)$data['status'] . "', `customer_id` = '" . (int)$data['customer_id'] . "', `product_id` = '" . (int)$data['product_id'] . "'");

		return $this->db->getLastId();
    }

	public function editStatus($question_id, $status) {
		$this->db->query("UPDATE `" . DB_PREFIX . "question` SET `status` = '" . (int)$status . "' WHERE question_id = '" . (int)$question_id . "'");

        return ($this->db->countAffected() > 0) ? true : false;
	}

	public function deleteQuestion($question_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "question WHERE `question_id` = '" . (int)$question_id . "'");

        return ($this->db->countAffected() > 0) ? true : false;
	}

	public function install() {
	    $sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "question` (
  `question_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;";

	    $this->db->query($sql);
    }
}