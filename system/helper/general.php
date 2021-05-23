<?php
function token($length = 32) {
	// Create random token
	$string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

	$max = strlen($string) - 1;

	$token = '';

	for ($i = 0; $i < $length; $i++) {
		$token .= $string[mt_rand(0, $max)];
	}

	return $token;
}

/**
 * Backwards support for timing safe hash string comparisons
 *
 * http://php.net/manual/en/function.hash-equals.php
 */

if(!function_exists('hash_equals')) {
	function hash_equals($known_string, $user_string) {
		$known_string = (string)$known_string;
		$user_string = (string)$user_string;

		if(strlen($known_string) != strlen($user_string)) {
			return false;
		} else {
			$res = $known_string ^ $user_string;
			$ret = 0;

			for($i = strlen($res) - 1; $i >= 0; $i--) $ret |= ord($res[$i]);

			return !$ret;
		}
	}
}

if(!function_exists('array_sort_elements')){
    function array_sort_elements($data = array(), $sort, $order = 'ASC') {
        if(isset($order) && ($order == 'DESC')) {
            $order = SORT_DESC;
        } else {
            $order = SORT_ASC;
        }

        $sort_order = array();

        foreach ($data as $key => $value) {
            $sort_order[$key] = $value[$sort];
        }

        array_multisort($sort_order, $order, $data);

        return $data;
    }
}