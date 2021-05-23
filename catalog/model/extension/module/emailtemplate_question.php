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

	public function getProductQuestions($product_id){
		$sql = "SELECT * FROM " . DB_PREFIX . "question WHERE product_id = '" . (int)$product_id . "' AND status = 1 AND answer != '' ORDER BY date_added DESC";

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getCustomerQuestions($customer_id){
		$sql = "SELECT * FROM " . DB_PREFIX . "question q WHERE q.customer_id = '" . (int)$customer_id . "' ORDER BY q.date_added DESC";

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function addQuestion($data){
		$this->db->query("INSERT INTO `" . DB_PREFIX . "question` SET `question` = '" . $this->db->escape($data['question']) . "', `name` = '" . $this->db->escape($data['name']) . "', `email` = '" . $this->db->escape($data['email']) . "', `customer_id` = '" . (int)$data['customer_id'] . "', `product_id` = '" . (int)$data['product_id'] . "', `status` = 0, `date_added` = NOW()");

		return $this->db->getLastId();
	}

	public function deleteQuestion($question_id){
		$this->db->query("DELETE FROM `" . DB_PREFIX . "question` WHERE question_id =" . (int)$question_id);
	}
}