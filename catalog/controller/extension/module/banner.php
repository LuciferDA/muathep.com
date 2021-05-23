<?php
class ControllerExtensionModuleBanner extends Controller {
    public function index($setting) {
        static $module = 0;

        $this->load->model('design/banner');
        $this->load->model('tool/image');

        $this->document->addStyle('catalog/view/javascript/jquery/swiper/css/swiper.min.css');
        $this->document->addStyle('catalog/view/javascript/jquery/swiper/css/opencart.css');
        $this->document->addScript('catalog/view/javascript/jquery/swiper/js/swiper.jquery.js');

        $data['banners'] = array();

        $results = $this->model_design_banner->getBanner($setting['banner_id']);

        foreach ($results as $result) {

            if (is_file(DIR_IMAGE . $result['image'])) {
                $today = new Datetime("now");
                $now = $today->setTimezone(new DateTimeZone('Asia/Ho_Chi_Minh'));
                $end = new Datetime($result['date_added']);
                if( $now < $end && $result['date_added'] != '0000-00-00 00:00:00'){
                $time = $now->diff($end);
                $data['banners'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']),
                    'date_added' => $result['date_added'],
                    'days'  =>  $time->format('%a'),
                    'hours' =>  $time->format('%h'),
                    'min' =>  $time->format('%i'),
                    'sec' =>  $time->format('%s')
                );
                //var_dump($results);die();
                }else{
                    $data['banners'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']),
                    /*'date_added' => "0000-00-00 00:00:00"*/
                    );
                }

                
            }



        }


        $data['module'] = $module++;

        return $this->load->view('extension/module/banner', $data);
    }
}