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

function calculateGst($totals = array()){
	//Custom GST Module
	//To count no. of tax rates
	$gstcount = 0;
	foreach($totals as $gsttotal){
		if($gsttotal['title'] == 'GST'){
			$gstcount++; 
		}
	}
	
	$taxTotalAmt = 0;
	if($gstcount > 0){
		for($i = 0;$i<=count($totals);$i++){
			if($totals[$i]['title']=='GST'){
				$taxTotalAmt += $totals[$i]['value'];
				unset($totals[$i]);
			}
		}

		$gstArray = array(
			'code' => 'tax',
			'title' => 'GST',
			'value' => $taxTotalAmt,
			'sort_order' => 5,
		);

		array_push($totals, $gstArray);
	}

	return $totals;
	//Custom GST Module end
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