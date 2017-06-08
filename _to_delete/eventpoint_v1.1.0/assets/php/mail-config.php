<?php
/* ..............................................................................
 * Author:--------------- Themearth Team
 * AuthorEmail:-----------themearth.info@gmail.com
 * Technical Support:---- http://themearth.com/
 * Websites:------------- http://themearth.com/
 * Copyright:------------ Copyright (C) 2015 logichunt.com. All Rights Reserved.
 * License:-------------- http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 * ..............................................................................
 * File:- mail-config.php
 ................................................................................ */

//---------------------------------------------------------------------------------
        //LGX ALL EMAIL CONFIGURATION
//---------------------------------------------------------------------------------

$admin_email_to        = 'logichunt.info@gmail.com'; /* Admin Email; Who Will Get The Contact Email Alert */

$admin_email_name   = "LogicHunt Admin"; /* Admin Name/Company name who will get the email alert */

$admin_email_from       = 'system.logichunt@gmail.com'; /* Admin email from which email address email will be sent */

$admin_email_from_name  = 'LogicHunt System'; /* Admin name from which email will be sent */


$use_custom_subject = false; /* If you want to use custom subject then set true. To use form subject just ignore it. */

$admin_email_subject = 'A new message from LogicHunt Demo'; /* Custom email subject what the admin will get as contact email alert*/

$copy_email_subject = 'Thanks for contact'; /* Email subject what the user will get if the user agreed or select "copy me" */


/**
 * To save all contacted email address is a csv file
 * @type boolean
 * @value Either true or false
 * @default true
 */

$save_in_csv = false; /*If You Want to save as csv then just make it true */


/**
 * keep false for default mail, set true for smtp
 * if you set true, make sure configure smtp properly
 * @value false|true
 * @default: false
 */
$mail_send_type = false; /*if $mail_send_type is set to smtp, then complete this config*/

//---------------------------------------------------------------------------------
        //LGX MAIL CONFIGURATION END
//---------------------------------------------------------------------------------



/******* SMTP CONFIGURATION *************
 * SMTP hosts.
 * Either a single hostname or multiple semicolon-delimited hostnames.
 * You can also specify a different port
 * for each host by using this format: [hostname:port]
 * (e.g. "smtp1.example.com:25;smtp2.example.com").
 * You can also specify encryption type, for example:
 * (e.g. "tls://smtp1.example.com:587;ssl://smtp2.example.com:465").
 * Hosts will be tried in order.
 * @type string
 * @default localhost
 */
$smtp_host = 'localhost';

/**
 * Whether to use SMTP authentication.
 * Uses the Username and Password properties.
 * @type boolean
 * @see $smtp_user_name
 * @see $smtp_password
 */

$smtp_auth = true;

$smtp_user_name = '';

$smtp_password = '';

//Either tls or ssl
$smtp_secure = 'tls';

/**
 * @type numeric
 * @default 587
 */
$smtp_port = 587;


/**
 * @type string
 * @value html/text
 * @default text
 */
$email_body_content_type = 'text';