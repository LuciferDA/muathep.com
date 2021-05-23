<?php
class ControllerExtensionModuleEmailTemplateQuestion extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/emailtemplate_question');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->getList();
	}

	public function add() {
		$this->load->language('extension/module/emailtemplate_question');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/emailtemplate_question');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$question_id = $this->model_extension_module_emailtemplate_question->addQuestion($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module/emailtemplate_question/edit', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $question_id, true));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('extension/module/emailtemplate_question');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module/emailtemplate_question');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$result = $this->model_extension_module_emailtemplate_question->editQuestion($this->request->get['question_id'], $this->request->post);

			if ($result) {
				$this->session->data['success'] = $this->language->get('text_success');
			}

			$url = '&question_id=' . $this->request->get['question_id'];

			$this->response->redirect($this->url->link('extension/module/emailtemplate_question/edit', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}

		$this->getForm();
	}

	public function enable() {
		$this->load->language('extension/module/emailtemplate_question');

		if (isset($this->request->get['question_id']) && $this->validate()) {
			$this->load->model('extension/module/emailtemplate_question');

			$this->model_extension_module_emailtemplate_question->editStatus($this->request->get['question_id'], 1);

			$this->session->data['success'] = $this->language->get('text_success');

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

			$this->response->redirect($this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}
	}

	public function disable() {
		$this->load->language('extension/module/emailtemplate_question');

		if (isset($this->request->get['question_id']) && $this->validate()) {
			$this->load->model('extension/module/emailtemplate_question');

			$this->model_extension_module_emailtemplate_question->editStatus($this->request->get['question_id'], 0);

			$this->session->data['success'] = $this->language->get('text_success');

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

			$this->response->redirect($this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true));
		}
	}

    public function delete() {
        if (isset($this->request->post['selected']) && $this->validate()) {
            $this->load->language('extension/module/emailtemplate_question');

            $this->load->model('extension/module/emailtemplate_question');

            $count = 0;
            foreach ($this->request->post['selected'] as $question_id) {
                if ($this->model_extension_module_emailtemplate_question->deleteQuestion($question_id)) {
                    $count++;
                }
            }

            $this->session->data['success'] = sprintf($this->language->get('text_delete'), $count);

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

            $this->response->redirect($this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true));
        }
    }

	public function answer() {
		$this->load->language('extension/module/emailtemplate_question');

		if (!empty($this->request->post['question_id'])) {
            $question_id = $this->request->post['question_id'];
        } elseif (!empty($this->request->get['question_id'])) {
            $question_id = $this->request->get['question_id'];
        } else {
		    return false;
        }

        $this->load->model('extension/module/emailtemplate_question');

        if (!empty($this->request->post['answer'])) {
            $this->model_extension_module_emailtemplate_question->editQuestionAnswer($question_id, $this->request->post['answer']);
        }


        $question_info = $this->model_extension_module_emailtemplate_question->getQuestion($question_id);

        if ($question_info['answer'] && filter_var($question_info['email'], FILTER_VALIDATE_EMAIL)) {
            if ($question_info['customer_id']) {
                $this->load->model('customer/customer');

                $customer_info = $this->model_customer_customer->getCustomer($question_info['customer_id']);
            }

            $this->load->model('catalog/product');

            $product_info = $this->model_catalog_product->getProduct($question_info['product_id']);

            $this->load->model('extension/module/emailtemplate');

            $template_load = array(
                'key' => 'admin.question_answer'
            );

            if (!empty($customer_info)) {
                $template_load['customer_id'] = $customer_info['customer_id'];
                $template_load['language_id'] = $customer_info['language_id'];
                $template_load['store_id'] = $customer_info['store_id'];
            }

            $template = $this->model_extension_module_emailtemplate->load($template_load);

            if ($template) {
                $template->addData($question_info);

                $template->data['question'] = nl2br($question_info['question']);

                if (isset($customer_info)) {
                    $template->addData($customer_info, 'customer');
                }

                $template->addData($product_info, 'product');

                $url = new Url(HTTP_CATALOG, HTTPS_CATALOG);

                $template->data['product_url'] = $url->link('product/product', 'product_id=' . $product_info['product_id'], 'SSL');

                $mail = new Mail();
                $mail->protocol = $this->config->get('config_mail_protocol');
                $mail->parameter = $this->config->get('config_mail_parameter');
                $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
                $mail->smtp_username = $this->config->get('config_mail_smtp_username');
                $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
                $mail->smtp_port = $this->config->get('config_mail_smtp_port');
                $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

                $mail->setTo($question_info['email']);
                $mail->setFrom($template->data['store_email']);
                $mail->setSender($template->data['store_name']);

                $template->hook($mail);

                $mail->send();

                $this->model_extension_module_emailtemplate->sent();

                $this->session->data['success'] = $this->language->get('text_sent');
            }
        }

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

        $this->response->redirect($this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true));
	}

	protected function getList() {
		if (isset($this->request->get['filter_name'])) {
			$filter_name = $this->request->get['filter_name'];
		} else {
			$filter_name = null;
		}

		if (isset($this->request->get['filter_question'])) {
			$filter_question = $this->request->get['filter_question'];
		} else {
			$filter_question = null;
		}

		if (isset($this->request->get['filter_answer'])) {
			$filter_answer = $this->request->get['filter_question'];
		} else {
			$filter_answer = null;
		}

		if (isset($this->request->get['filter_product'])) {
			$filter_product = $this->request->get['filter_product'];
		} else {
			$filter_product = null;
		}

		if (isset($this->request->get['filter_status'])) {
			$filter_status = $this->request->get['filter_status'];
		} else {
			$filter_status = null;
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'date_added';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'DESC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

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

		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_emailtemplate'),
            'href' => $this->url->link('extension/module/emailtemplate', 'user_token=' . $this->session->data['user_token'], true)
        );
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_name'),
			'href' => $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['filter_action'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['add_action'] = $this->url->link('extension/module/emailtemplate_question/add', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['answer_action'] = $this->url->link('extension/module/emailtemplate_question/answer', 'user_token=' . $this->session->data['user_token'] . $url, true);
		$data['delete_action'] = $this->url->link('extension/module/emailtemplate_question/delete', 'user_token=' . $this->session->data['user_token'] . $url, true);

		$this->load->model('extension/module/emailtemplate');

		$template = $this->model_extension_module_emailtemplate->getTemplate('admin.question_answer');

		if ($template) {
            $data['emailtemplate_question_answer_url'] = $this->url->link('extension/module/emailtemplate/template', 'user_token=' . $this->session->data['user_token'] . '&id=' . $template['emailtemplate_id'], true);
        }

		$template = $this->model_extension_module_emailtemplate->getTemplate('customer.question');

		if ($template) {
            $data['emailtemplate_question_url'] = $this->url->link('extension/module/emailtemplate/template', 'user_token=' . $this->session->data['user_token'] . '&id=' . $template['emailtemplate_id'], true);
        }

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);

		if (isset($this->request->post['module_emailtemplate_question_status'])) {
			$data['module_emailtemplate_question_status'] = $this->request->post['module_emailtemplate_question_status'];
		} else {
			$data['module_emailtemplate_question_status'] = $this->config->get('module_emailtemplate_question_status');
		}

		$data['questions'] = array();

		$filter_data = array(
			'filter_name'     => $filter_name,
			'filter_question' => $filter_question,
			'filter_answer'   => $filter_answer,
			'filter_product'  => $filter_product,
			'filter_status'   => $filter_status,
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$this->load->model('extension/module/emailtemplate_question');
		$this->load->model('catalog/product');

		$questions_total = $this->model_extension_module_emailtemplate_question->getTotalQuestions($filter_data);

		$results = $this->model_extension_module_emailtemplate_question->getQuestions($filter_data);

		foreach ($results as $result) {
			$product_name = '';

			$product_info = $this->model_catalog_product->getProduct($result['product_id']);

			if ($product_info) {
				$product_name = $product_info['name'];
			}

			$data['questions'][] = array(
				'question_id'  => $result['question_id'],
				'customer_id'  => $result['customer_id'],
				'question'     => utf8_substr(strip_tags(html_entity_decode($result['question'], ENT_QUOTES, 'UTF-8')), 0, 40),
				'question_full' => html_entity_decode($result['question'], ENT_QUOTES, 'UTF-8'),
				'answer'       => utf8_substr(strip_tags(html_entity_decode($result['answer'], ENT_QUOTES, 'UTF-8')), 0, 100),
				'name'         => $result['name'],
				'email'        => $result['email'],
                'product_name' => $product_name,
				'status'       => $result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled'),
				'date_added'   => date($this->language->get('datetime_format'), strtotime($result['date_added'])),
				'enable'       => $this->url->link('extension/module/emailtemplate_question/enable', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $result['question_id'] . $url, true),
				'disable'      => $this->url->link('extension/module/emailtemplate_question/disable', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $result['question_id'] . $url, true),
				'enabled'      => $result['status'],
				'edit_url'     => $this->url->link('extension/module/emailtemplate_question/edit', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $result['question_id'], true),
				'answer_url'   => $this->url->link('extension/module/emailtemplate_question/answer', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $result['question_id'], true),
				'customer_url' => $this->url->link('customer/customer/edit', 'user_token=' . $this->session->data['user_token'] . '&customer_id=' . $result['customer_id'], true),
				'product_url'  => $this->url->link('catalog/product/edit', 'user_token=' . $this->session->data['user_token'] . '&product_id=' . $result['product_id'], true)
			);
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}

		if (isset($this->request->get['filter_date_added'])) {
			$url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
		}

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_name'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . '&sort=name' . $url, true);
		$data['sort_question'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . '&sort=question' . $url, true);
		$data['sort_answer'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . '&sort=answer' . $url, true);
		$data['sort_product'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . '&sort=product' . $url, true);
		$data['sort_status'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . '&sort=status' . $url, true);
		$data['sort_date_added'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . '&sort=date_added' . $url, true);

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $questions_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($questions_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($questions_total - $this->config->get('config_limit_admin'))) ? $questions_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $questions_total, ceil($questions_total / $this->config->get('config_limit_admin')));

		$data['user_token'] = $this->session->data['user_token'];

		$data['filter_name']     = $filter_name;
		$data['filter_question'] = $filter_question;
		$data['filter_answer']   = $filter_answer;
		$data['filter_product']  = $filter_product;
		$data['filter_status']   = $filter_status;

		if ($filter_product) {
            $this->load->model('catalog/product');

            $product_info = $this->model_catalog_product->getProduct($filter_product);

            if ($product_info) {
                $data['filter_product_name'] = $product_info['name'];
            }
        }

		$data['sort'] = $sort;
		$data['order'] = $order;

		$this->document->addStyle('view/javascript/summernote/summernote.css');
		$this->document->addScript('view/javascript/summernote/summernote.js');
		$this->document->addScript('view/javascript/summernote/summernote-image-attributes.js');
		$this->document->addScript('view/javascript/summernote/opencart.js');
        $this->document->addScript('view/javascript/module/emailtemplate_question.js');

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/emailtemplate_question/list', $data));
	}

	protected function getForm() {
		if (isset($this->error)) {
		    foreach($this->error as $key => $error) {
                $data['error_' . $key] = $error;
            }
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

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

		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_emailtemplate'),
			'href' => $this->url->link('extension/module/emailtemplate', 'user_token=' . $this->session->data['user_token'], true)
		);
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_name'),
            'href' => $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true)
        );

		if (!isset($this->request->get['question_id'])) {
			$data['action'] = $this->url->link('extension/module/emailtemplate_question/add', 'user_token=' . $this->session->data['user_token'] . $url, true);
		} else {
			$data['action'] = $this->url->link('extension/module/emailtemplate_question/edit', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $this->request->get['question_id'] . $url, true);
		}

		$data['cancel'] = $this->url->link('extension/module/emailtemplate_question', 'user_token=' . $this->session->data['user_token'] . $url, true);

		if (isset($this->request->get['question_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$question_info = $this->model_extension_module_emailtemplate_question->getQuestion($this->request->get['question_id']);
		}

        if (!empty($question_info)) {
            $data['question_id'] = $question_info['question_id'];
        } else {
            $data['question_id'] = '';
        }

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($question_info)) {
			$data['name'] = $question_info['name'];
		} else {
			$data['name'] = '';
		}

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} elseif (!empty($question_info)) {
			$data['email'] = $question_info['email'];
		} else {
			$data['email'] = '';
		}

		if (isset($this->request->post['question'])) {
			$data['question'] = $this->request->post['question'];
		} elseif (!empty($question_info)) {
			$data['question'] = $question_info['question'];
		} else {
			$data['question'] = '';
		}

		if (isset($this->request->post['answer'])) {
			$data['answer'] = $this->request->post['answer'];
		} elseif (!empty($question_info)) {
			$data['answer'] = $question_info['answer'];
		} else {
			$data['answer'] = '';
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($question_info)) {
			$data['status'] = $question_info['status'];
		} else {
			$data['status'] = true;
		}

		if (isset($this->request->post['product_id'])) {
			$data['product_id'] = $this->request->post['product_id'];
		} elseif (!empty($question_info)) {
			$data['product_id'] = $question_info['product_id'];
		} else {
			$data['product_id'] = 0;
		}

		if (isset($this->request->post['customer_id'])) {
			$data['customer_id'] = $this->request->post['customer_id'];
		} elseif (!empty($question_info)) {
			$data['customer_id'] = $question_info['customer_id'];
		} else {
			$data['customer_id'] = 0;
		}

		if (!empty($question_info['customer_id'])) {
			$this->load->model('customer/customer');

			$customer_info = $this->model_customer_customer->getCustomer($question_info['customer_id']);

			if ($customer_info) {
				$data['customer_name'] = $customer_info['firstname'] . ' ' . $customer_info['lastname'];

				$data['customer_edit_url'] = $this->url->link('customer/customer/edit', 'user_token=' . $this->session->data['user_token'] . '&customer_id=' . $customer_info['customer_id']);
			}
		}

		if ($data['product_id']) {
			$this->load->model('catalog/product');

			$product_info = $this->model_catalog_product->getProduct($data['product_id']);

			if ($product_info) {
				$data['product_name'] = $product_info['name'];
			}
		}

		if (!empty($question_info['answer'])) {
		    $data['answer_action'] = $this->url->link('extension/module/emailtemplate_question/answer', 'user_token=' . $this->session->data['user_token'] . '&question_id=' . $question_info['question_id']);
        }

		$this->document->addStyle('view/javascript/summernote/summernote.css');
		$this->document->addScript('view/javascript/summernote/summernote.js');
		$this->document->addScript('view/javascript/summernote/summernote-image-attributes.js');
		$this->document->addScript('view/javascript/summernote/opencart.js');
        $this->document->addScript('view/javascript/module/emailtemplate_question.js');

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/emailtemplate_question/form', $data));
	}

    public function install() {
        $this->load->model('setting/setting');

        // Languages
        $this->load->model('localisation/language');

        $languages = $this->model_localisation_language->getLanguages();

        $replace_language_vars = defined('REPLACE_LANGUAGE_VARIABLES') ? REPLACE_LANGUAGE_VARIABLES : true;

        $settings = $this->model_setting_setting->getSetting('module_emailtemplate_question');
        $settings['module_emailtemplate_question_status'] = 1;

        $this->model_setting_setting->editSetting('module_emailtemplate_question', $settings);

        $this->load->model('extension/module/emailtemplate');

        $this->load->language('extension/module/emailtemplate_question');

        $template_key = 'customer.question';

        $template_info = $this->model_extension_module_emailtemplate->getTemplate($template_key);

        if (!$template_info) {
            $template_data = array();
            $template_data['emailtemplate_label'] = 'Product Question';
            $template_data['emailtemplate_key'] = $template_key;
            $template_data['emailtemplate_type'] = 'admin';
            $template_data['emailtemplate_showcase'] = 0;
            $template_data['emailtemplate_language_files'] = 'extension/module/emailtemplate_question';

            $emailtemplate_id = $this->model_extension_module_emailtemplate->insertTemplate($template_data);

            foreach ($languages as $language) {
                $template_description_data = array(
                    'emailtemplate_description_subject' => $this->language->get('text_question_subject'),
                    'emailtemplate_description_content1' => $this->language->get('text_question_content1')
                );

                if ($replace_language_vars) {
                    $oLanguage = new Language($language['code']);

                    if (method_exists($oLanguage, 'setPath') && substr($template_key, 0, 6) != 'admin.' && defined('DIR_CATALOG')) {
                        $oLanguage->setPath(DIR_CATALOG . 'language/');
                    }

                    $oLanguage->load($language['code']);
                    $langData = $oLanguage->load('extension/module/emailtemplate/emailtemplate');

                    if (!empty($template_data['emailtemplate_language_files'])) {
                        $language_files = explode(',', $template_data['emailtemplate_language_files']);
                        if ($language_files) {
                            foreach ($language_files as $language_file) {
                                if ($language_file) {
                                    $_langData = $oLanguage->load(trim($language_file));
                                    if ($_langData) {
                                        $langData = array_merge($langData, $_langData);
                                    }
                                }
                            }
                        }
                    }

                    $find = array();
                    $replace = array();

                    foreach ($langData as $i => $val) {
                        if ((is_string($val) && (strpos($val, '%s') === false) || is_int($val))) {
                            $find[$i] = '{{ ' . $i . ' }}';
                            $replace[$i] = $val;
                        }
                    }

                    foreach ($template_description_data as $col => $val) {
                        if ($val && is_string($val)) {
                            $template_description_data[$col] = str_replace($find, $replace, $val);
                        }
                    }

                }

                $template_description_data['language_id'] = $language['language_id'];

                $template_description_data['emailtemplate_id'] = $emailtemplate_id;

                $this->model_extension_module_emailtemplate->insertTemplateDescription($template_description_data);
            }
        }

        $template_key = 'admin.question_answer';

        $template_info = $this->model_extension_module_emailtemplate->getTemplate($template_key);

        if (!$template_info) {
            $template_data = array();
            $template_data['emailtemplate_label'] = 'Question Answer';
            $template_data['emailtemplate_key'] = $template_key;
            $template_data['emailtemplate_type'] = 'customer';
			$template_data['emailtemplate_language_files'] = 'extension/module/emailtemplate_question';

            $emailtemplate_id = $this->model_extension_module_emailtemplate->insertTemplate($template_data);

            foreach ($languages as $language) {
                $template_description_data = array(
                    'emailtemplate_description_subject' => $this->language->get('text_question_answer_subject'),
                    'emailtemplate_description_content1' => $this->language->get('text_question_answer_content1')
                );

                if ($replace_language_vars) {
                    $oLanguage = new Language($language['code']);

                    if (method_exists($oLanguage, 'setPath') && substr($template_key, 0, 6) != 'admin.' && defined('DIR_CATALOG')) {
                        $oLanguage->setPath(DIR_CATALOG . 'language/');
                    }

                    $oLanguage->load($language['code']);
                    $langData = $oLanguage->load('extension/module/emailtemplate/emailtemplate');

                    if (!empty($template_data['emailtemplate_language_files'])) {
                        $language_files = explode(',', $template_data['emailtemplate_language_files']);
                        if ($language_files) {
                            foreach ($language_files as $language_file) {
                                if ($language_file) {
                                    $_langData = $oLanguage->load(trim($language_file));
                                    if ($_langData) {
                                        $langData = array_merge($langData, $_langData);
                                    }
                                }
                            }
                        }
                    }

                    $find = array();
                    $replace = array();

                    foreach ($langData as $i => $val) {
                        if ((is_string($val) && (strpos($val, '%s') === false) || is_int($val))) {
                            $find[$i] = '{{ ' . $i . ' }}';
                            $replace[$i] = $val;
                        }
                    }

                    foreach ($template_description_data as $col => $val) {
                        if ($val && is_string($val)) {
                            $template_description_data[$col] = str_replace($find, $replace, $val);
                        }
                    }

                }

                $template_description_data['language_id'] = $language['language_id'];

                $template_description_data['emailtemplate_id'] = $emailtemplate_id;

                $this->model_extension_module_emailtemplate->insertTemplateDescription($template_description_data);
            }
        }

        // Modification
        $this->load->model('setting/modification');

        $modification_info = $this->model_setting_modification->getModificationByCode('emailtemplate_question');

        if ($modification_info && !$modification_info['status']){
            $this->model_setting_modification->enableModification($modification_info['modification_id']);
        }

        $this->model_extension_module_emailtemplate->clear();

        $this->model_extension_module_emailtemplate->updateModification();

        $this->load->model('extension/module/emailtemplate_question');

        $this->model_extension_module_emailtemplate_question->install();
    }

    public function uninstall() {
        // Modification
        $this->load->model('setting/modification');

        $modification_info = $this->model_setting_modification->getModificationByCode('emailtemplate_question');

        if ($modification_info && $modification_info['status'] == 1) {
            $this->model_setting_modification->disableModification($modification_info['modification_id']);
        }
    }

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/emailtemplate_question')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}

}