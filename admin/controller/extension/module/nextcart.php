<?php
/* 
 * @package Next-Cart: OpenCart Migration Module
 * Description: A powerful flexible tool help migrating from your online store to OpenCart.
 * Version: 1.0.0.0
 * Author: Next-Cart
 * Author URI: https://next-cart.com
 */
class ControllerExtensionModuleNextcart extends Controller
{

    private $error = array();
    const APP_URL = 'https://demo.next-cart.com/app/migration/';
    const SITE_URL = 'https://next-cart.com/';

    public function index() {
        $this->load->language('extension/module/nextcart');
        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('setting/module');
	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
		if (!isset($this->request->get['module_id'])) {
			$this->model_setting_module->addModule('nextcart', $this->request->post);
		} else {
			$this->model_setting_module->editModule($this->request->get['module_id'], $this->request->post);
		}
		$this->session->data['success'] = $this->language->get('text_success');
		$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
	}
	if (isset($this->error['warning'])) {
		$data['error_warning'] = $this->error['warning'];
	} else {
		$data['error_warning'] = '';
	}
	if (isset($this->error['name'])) {
		$data['error_name'] = $this->error['name'];
	} else {
		$data['error_name'] = '';
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
	if (!isset($this->request->get['module_id'])) {
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/nextcart', 'user_token=' . $this->session->data['user_token'], true)
		);
	} else {
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/nextcart', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true)
		);
	}
	if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
		$module_info = $this->model_setting_module->getModule($this->request->get['module_id']);
	}
	if (isset($this->request->post['name'])) {
		$data['name'] = $this->request->post['name'];
	} elseif (!empty($module_info)) {
		$data['name'] = $module_info['name'];
	} else {
		$data['name'] = '';
	}
	if (isset($this->request->post['status'])) {
		$data['status'] = $this->request->post['status'];
	} elseif (!empty($module_info)) {
		$data['status'] = $module_info['status'];
	} else {
		$data['status'] = '';
	}
        $data['app_url'] = self::APP_URL . '?store=' . HTTPS_CATALOG . '&target=opencart';
	$data['header'] = $this->load->controller('common/header');
	$data['column_left'] = $this->load->controller('common/column_left');
	$data['footer'] = $this->load->controller('common/footer');
	$this->response->setOutput($this->load->view('extension/module/nextcart', $data));
    }
    
    protected function validate() {
        
    }

    public function install() {
        $this->load->model('setting/setting');
	$this->model_setting_setting->editSetting('module_nextcart', ['module_nextcart_status' => 1]);
    }

    public function uninstall() {
        $this->load->model('setting/setting');
	$this->model_setting_setting->deleteSetting('module_nextcart');
    }

}
