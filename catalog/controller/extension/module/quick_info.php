<?php
class ControllerExtensionModuleQuickInfo extends Controller {
	public function index($setting) {

		static $module = 0;

		if ($setting['module_description']){
            $data['infos'] = array();
            foreach ($setting['module_description'] as $info) {
                if ($info['status']){
                    $data['infos'][] = array(
                        'title' => $info['title'][$this->config->get('config_language_id')],
                        'description' => $info['description'][$this->config->get('config_language_id')],
                        'sort_order' => (int)$info['sort_order'],
                    );
                }
		    }

            $data['infos'] = array_sort_elements($data['infos'], 'sort_order', 'ASC');

            $data['module'] = $module++;
            return $this->load->view('extension/module/quick_info', $data);
        }
	}
}