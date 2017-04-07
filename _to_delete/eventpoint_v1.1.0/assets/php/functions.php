<?php
/**
 * Created by PhpStorm.
 * User: logichunt
 * Date: 5/30/2015
 * Time: 2:09 AM
 */

$validation_message = array (
    'error'       => false,
    'message'     => 'Mail send successfully. Thanks for contacting us.'
);

function is_ajax_request() {
    return isset( $_SERVER['HTTP_X_REQUESTED_WITH'] ) ? $_SERVER['HTTP_X_REQUESTED_WITH'] : false === 'XMLHttpRequest';
}


function check_cross_domain($referrer, $host) {
    $referrer = str_ireplace( 'www.', '', parse_url( $referrer, PHP_URL_HOST ) );
    $pattern = '/' . $host . '/';
    return preg_match($pattern, $referrer);
}