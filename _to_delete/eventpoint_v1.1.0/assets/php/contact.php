<?php
  /* ..............................................................................
   * Author:--------------- LogicHunt Team
   * AuthorEmail:-----------logichhunt.info@gmail.com
   * Technical Support:---- http://logichhunt.com/
   * Websites:------------- http://logichhunt.com/
   * Copyright:------------ Copyright (C) 2015 logichunt.com. All Rights Reserved.
   * License:-------------- http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
   * ..............................................................................
   * File:- contact.php
   ................................................................................ */

    define('DS', DIRECTORY_SEPARATOR);
    require( './functions.php' );

    $referrer   =   array_key_exists( 'HTTP_ORIGIN', $_SERVER ) ? $_SERVER['HTTP_ORIGIN'] : isset( $_SERVER['HTTP_REFERER'] ) ? $_SERVER['HTTP_REFERER'] : null;
    $host       = $_SERVER['HTTP_HOST'];

    if( is_ajax_request() ) {
        if( $referrer != null && check_cross_domain( $referrer, $host ) ) {
            //if referrer is host or derivative of current host then accept all request
            require_once ('class.validation.php');
            $frm_val = new Validation();
            $frm_val->set_rules( 'lgxname', 'trim|required|alpha_spaces' );
            $frm_val->set_rules( 'lgxemail', 'trim|required|email' );
            $frm_val->set_rules( 'lgxsubject', 'trim|required|alpha_numeric_spaces' );
            $frm_val->set_rules( 'lgxmessage', 'trim|required' );
            $frm_val->run_validation();

            if ( $frm_val->is_valid() ) {
                $lgxname    = $frm_val->get_value ('lgxname');
                $lgxemail   = $frm_val->get_value ('lgxemail');
                $lgxsubject = $frm_val->get_value ('lgxsubject');
                $lgxmessage = $frm_val->get_value ('lgxmessage');
                $lgxsendme  = ( $frm_val->get_value ('lgxsendme') != null ) ? true : false;

                //include php mailer library
                require 'mail-config.php';

                //if save in csv true
                if ($save_in_csv) {
                    $list[] = $lgxname;
                    $list[] = $lgxemail;
                    $list[] = $lgxsubject;
                    $list[] = $lgxsubject;
                    $fp = @fopen('contacts.csv', 'a');
                    @fputcsv($fp, $list);
                    @fclose($fp);
                }
                //end if save is csv true
                // $validation_message['message'] = 'This is success Process';
                //send email


                require 'phpmailer/PHPMailerAutoload.php';

                $mail = new PHPMailer;

                //true for smtp false otherwise
                if( $mail_send_type === true ) {
                    $mail->isSMTP();
                    $mail->Host                 = $smtp_host;
                    $mail->SMTPAuth             = $smtp_auth;
                    $mail->Username             = $smtp_user_name;
                    $mail->Password             = $smtp_password;
                    $mail->SMTPSecure           = $smtp_secure;
                    $mail->Port                 = $smtp_port;
                }

                $mail->From                     = $admin_email_from;//contact form email
                $mail->FromName                 = $admin_email_from_name;//contact form name
                $mail->Subject                  = ( false == $use_custom_subject && !empty( $lgxsubject ) ) ? $lgxsubject : $admin_email_subject;
                $mail->addReplyTo( $lgxemail, $lgxname );//reply to header information
                $mail->addAddress( $admin_email_to, $admin_email_name );//admin email and name


                $mail->isHTML( ( $email_body_content_type == 'html' ) ? true : false );
                $mail->AltBody              = htmlspecialchars_decode( strip_tags( $lgxmessage, '<p><a>' ) );
                $mail->Body                 = htmlspecialchars_decode( strip_tags( $lgxmessage, '<p><a>' ) );

                if( $mail->send() ) {
                    if( $lgxsendme ) {
                        //clear previous mail recipient info
                        $mail->clearAddresses();
                        $mail->clearAllRecipients();
                        $mail->clearReplyTos();

                        $mail->From             = $admin_email_from;//admin from email
                        $mail->FromName         = $admin_email_from_name;//contact form name
                        $mail->Subject          = ( false == $use_custom_subject && !empty( $lgxsubject ) ) ? 'Copy mail: ' . $lgxsubject : 'Copy mail: ' . $copy_email_subject;
                        $mail->addReplyTo( $admin_email_to, $admin_email_name );//reply to header information
                        $mail->addAddress( $lgxemail, $lgxname );//admin email and name

                        $mail->send();
                    }
                } else {
                    $validation_message['error']    = true;
                    $validation_message['message']  = 'Unfortunately we can not process your query. Please try again.';
                }
            } else {
                $validation_message = $frm_val->get_error();
            }
        } else {
            //if the referrer dose not match with host
        }
        echo json_encode ($validation_message);exit;
    } else {
        //if any one try with direct execution
    }

