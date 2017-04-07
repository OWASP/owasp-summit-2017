<?php
  /* ..............................................................................
   * Author:--------------- Themearth Team
   * AuthorEmail:-----------themearth.info@gmail.com
   * Technical Support:---- http://themearth.com/
   * Websites:------------- http://themearth.com/
   * Copyright:------------ Copyright (C) 2015 logichunt.com. All Rights Reserved.
   * License:-------------- http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
   * ..............................................................................
   * File:- class.validation.php
   ................................................................................ */

	class Validation {

        private $field_name = '';
        private $field_value = '';
		private $valid = true;
		private $required = false;
		private $trim = false;
        private $post = array();
        private $rules = array();

		private $error_collection = array(
			'validation' => true,
			'error_list' => array()
		);

        private $validation_message = array (
            'error'       => false,
            'error_field' => array (),
            'message'     => array ()
        );

		public function __construct() {
			foreach ($_POST as $key => $value) {
				$this->post[$key] = $value;
			}
		}

        private function set_error($key_name, $msg) {
            $this->error_collection['validation']               = false;
            $this->validation_message['error']                  = true;
            $this->error_collection['error_list'][$key_name]    = $msg;
            return false;
        }

        private function validate($key_name, $rules_str) {
            $this->_init();
            $this->field_name = $key_name;
            $this->field_value = $this->post[$key_name];
            $rules = explode('|', $rules_str);
            $this->trim = (in_array('trim', $rules)) ? true : false;
            $this->required = (in_array('required', $rules)) ? true : false;

            //var_dump($this->required);
            //print_r($rules);
            foreach ($rules as $rule) {
                if (method_exists($this, $rule)) {
                    if (!call_user_func(array($this, $rule), $this->field_value)) {
                        break;
                    }
                }
            }
        }

		public function get_value($key) {
            return isset( $this->post[$key] ) ? $this->post[$key] : null;
		}

		private function _init() {
			$this->valid = true;
			$this->required = false;
			$this->trim = false;
			$this->field_name = '';
			$this->field_value = '';
		}

		private function alpha($str) {
			if ($this->required($str)) {
				return (ctype_alpha($this->field_value)) ? true : $this->set_error($this->field_name, 'This field allowed only alphabetic charecter');
			} else {
				return false;
			}
		}

		private function alpha_numeric_spaces($str) {
			if ($this->required($str)) {
				return ((bool) preg_match('/^[A-Z0-9 .,@*"]+$/i', $this->field_value)) ? true : $this->set_error($this->field_name, 'This field allowed only alphabetic charecter and spaces');
			} else {
				return false;
			}
		}

		private function alpha_spaces($str) {
			if ($this->required($str)) {
				return ((bool) preg_match('/^[A-Z .,]+$/i', $this->field_value)) ? true : $this->set_error($this->field_name, 'This field allowed only alphabetic charecter and spaces');
			} else {
				return false;
			}
		}

		private function alpha_numeric($str) {
			if ($this->required($str)) {
				return (ctype_alnum((string) $this->field_value)) ? true : $this->set_error($this->field_name, 'This field allowed only alpha numeric charecter');
			} else {
				return false;
			}
		}

		private function numeric($str) {
			if ( $this->required( $str ) && !empty( $str ) ) {
				return (bool) preg_match('/^[\-+]?[0-9]*\.?[0-9]+$/', $this->field_value) ? true : $this->set_error($this->field_name, 'This field allowed numbers only');
			} else {
				return false;
			}
		}

		private function strip_html_tags($str) {

		}

		private function strip_php_tag($str) {

		}

		private function clean_xss($str) {
			
		}

		private function email($str) {
			if ( $this->required( $str ) ) {
				if (function_exists('idn_to_ascii') && $atpos = strpos($this->field_value, '@')) {
					$this->field_value = substr($this->field_value, 0, ++$atpos).idn_to_ascii(substr($this->field_value, $atpos));
				}
				return (filter_var($this->field_value, FILTER_VALIDATE_EMAIL)) ? true : $this->set_error($this->field_name, 'Email is not valid');
			} else {
				return false;
			}
		}

		private function required($str) {
            //echo $this->field_name;
			if ($this->required) {
				$this->required = false;
				if ($this->trim) {
					$this->trim = false;
					$this->filed_value = trim($str);
				}

				if (empty($this->filed_value)) {
                    //echo 'test';
					return $this->set_error($this->field_name, 'This field is required');
				}
				return true;
			}
			return true;
		}

        public function set_rules($field_name, $rules_str) {
            $this->rules[$field_name] = $rules_str;
        }

        public function run_validation() {
            foreach ($this->rules as $post_key => $rule) {
                //echo $post_key."\n";
                //echo $rule."\n";
                $this->validate ($post_key, $rule);
            }

            if ( $this->error_collection['validation'] == false ) {
                foreach( $this->error_collection['error_list'] as $error_field => $message ) {
                    $this->validation_message['error_field'][]           = $error_field;
                    $this->validation_message['message'][ $error_field ] = $message;
                }
            }
        }

        public function is_valid() {
            return $this->error_collection['validation'];
        }

        public function get_error() {
            return $this->validation_message;
        }
	}
