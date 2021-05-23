<?php
class ControllerExtensionModuleEmailTemplateQuestion extends Controller {
	private $error = array();

	public function index() {
        if (!$this->config->get('module_emailtemplate_question_status')) {
            $this->response->redirect($this->url->link('common/home', '', true));
        }

        if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('extension/module/emailtemplate_question');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', true)
		);

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$this->load->model('catalog/product');
		$this->load->model('extension/module/emailtemplate_question');

		$results = $this->model_extension_module_emailtemplate_question->getCustomerQuestions($this->customer->getId());

		$data['questions'] = array();

		foreach ($results as $result) {
			$product_name = '';

			$product_info = $this->model_catalog_product->getProduct($result['product_id']);

			if ($product_info) {
				$product_name = $product_info['name'];
			}

			$data['questions'][] = array(
				'question_id' => $result['question_id'],
				'question' => nl2br($result['question']),
				'name' => $result['name'],
				'product_name' => $product_name,
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'delete_url' => $this->url->link('extension/module/emailtemplate_question/delete', 'question_id=' . $result['question_id'], true)
			);
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('extension/module/emailtemplate_question/list', $data));
	}

	public function add() {
        if (!$this->config->get('module_emailtemplate_question_status')) {
            $this->response->redirect($this->url->link('common/home', '', true));
        }

        if (empty($this->request->get['id'])) {
			trigger_error('Missing id (product_id)');
			exit;
		}

		$json = array();

		$this->load->language('extension/module/emailtemplate_question');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/emailtemplate_question');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$request = $this->request->post;

			$request['product_id'] = $this->request->get['id'];

			if ($this->customer->isLogged()) {
				$request['customer_id'] = $this->customer->getId();

                $this->load->model('account/customer');

                $customer_info = $this->model_account_customer->getCustomer($this->customer->getId());
			} else {
				$request['customer_id'] = '';
			}

			$question_id = $this->model_extension_module_emailtemplate_question->addQuestion($request);

            $question_info = $this->model_extension_module_emailtemplate_question->getQuestion($question_id);

            $this->load->model('extension/module/emailtemplate');

            $template_load = array(
                'key' => 'customer.question'
            );

            if (!empty($customer_info)) {
                $template_load['language_id'] = $customer_info['language_id'];
                $template_load['store_id'] = $customer_info['store_id'];
            }

            $template = $this->model_extension_module_emailtemplate->load($template_load);

            if ($template) {
				$template->addData($question_info);

				$template->data['question'] = nl2br($question_info['question']);

				if (!empty($customer_info)) {
					$template->addData($customer_info, 'customer');
				}

				if ($question_info['product_id']) {
					$this->load->model('catalog/product');

					$product_info = $this->model_catalog_product->getProduct($question_info['product_id']);

					$template->addData($product_info, 'product');
				}

				$template->data['admin_edit_url'] = (defined('HTTP_ADMIN') ? HTTP_ADMIN : HTTPS_SERVER . 'admin/') . 'index.php?route=' . rawurlencode('extension/module/emailtemplate_question/edit') . '&question_id=' . $question_info['question_id'];

				$template->build();

				$mail = new Mail($this->config->get('config_mail_engine'));
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
				$mail->smtp_username = $this->config->get('config_mail_smtp_username');
				$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
				$mail->smtp_port = $this->config->get('config_mail_smtp_port');
				$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

				$mail->setTo($template->data['store_email']);
				$mail->setFrom($template->data['store_email']);
				$mail->setSender($template->data['store_name']);
				$mail->setReplyTo($question_info['email'], $question_info['name']);
				$mail->setSubject($template->data['store_name']);

				$template->hook($mail);

				$mail->send();

				$this->model_extension_module_emailtemplate->sent();

				$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('extension/module/emailtemplate_question/questions', '', true));
			}
		}

		if (!empty($this->error)) {
			$json['error'] = $this->error;
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

    public function delete() {
        if (!$this->customer->isLogged()) {
            $this->session->data['redirect'] = $this->url->link('extension/module/emailtemplate_question');

            $this->response->redirect($this->url->link('account/login', 'language=' . $this->config->get('config_language')));
        }

        $this->load->language('extension/module/emailtemplate_question');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('extension/module/emailtemplate_question');

        if (isset($this->request->get['question_id'])) {
            $this->model_extension_module_emailtemplate_question->deleteQuestion($this->request->get['question_id']);

            $this->session->data['success'] = $this->language->get('text_delete');
        }

        $this->response->redirect($this->url->link('extension/module/emailtemplate_question', 'language=' . $this->config->get('config_language')));
    }

	protected function validateForm() {
		if ((utf8_strlen($this->request->post['question']) < 10) || (utf8_strlen($this->request->post['question']) > 3000)) {
			$this->error = $this->language->get('error_question');
		}

		if (!$this->error && !$this->customer->isLogged()) {
			if (!$this->error && (utf8_strlen(trim($this->request->post['name'])) < 1) || (utf8_strlen(trim($this->request->post['name'])) > 32)) {
				$this->error = $this->language->get('error_required');
			}

			if (!$this->error && !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
				$this->error = $this->language->get('error_email');
			}
		}

        if (!$this->error && $this->config->get('captcha_' . $this->config->get('config_captcha') . '_status')) {
            $captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

            if ($captcha) {
                $this->error = $captcha;
            }
        }

		return !$this->error;
	}
}