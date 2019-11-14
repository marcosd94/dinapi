<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => '',
	"database" => 'dinapi',
	"path" => '',
);

// Set the site locale
i18n::set_locale('es_PY');
setlocale(LC_TIME, 'es_PY.utf8'); 

// log errors and warnings
SS_Log::add_writer(new SS_LogFileWriter('dinapi-silverstripe-errors-warnings.log'), SS_Log::WARN, '<=');

// or just errors
SS_Log::add_writer(new SS_LogFileWriter('dinapi-silverstripe-errors.log'), SS_Log::ERR);

// or notices (e.g. for Deprecation Notifications)
SS_Log::add_writer(new SS_LogFileWriter('dinapi-silverstripe-errors-notices.log'), SS_Log::NOTICE);


// Activar la búsqueda
FulltextSearchable::enable();


HtmlEditorConfig::get('cms')->setOption('valid_elements', "*");

HtmlEditorConfig::get('cms')->insertButtonsBefore('formatselect', 'fontselect');
HtmlEditorConfig::get('cms')->insertButtonsBefore('formatselect', 'fontsizeselect');
HtmlEditorConfig::get('cms')->insertButtonsBefore('formatselect', 'forecolor');

HtmlEditorConfig::get('cms')->setOption(
    'extended_valid_elements',
	'div[*],'.
	'input[*],'.
	'textarea[class|type|data|id|name|maxlenght|required|style|placeholder|rows|value],'.
	'select[class|data|id|name|maxlenght|required|style|placeholder],'.
	'option[value|selected|disabled],'.
	'optgroup[value|label|selected|disabled],'.
	'form[*],'.
	'label[*],'.
	'button[*],'.
	'fieldset[*],'.
	'a[class|data|id|style|href],'.
	'i[*],'.
	'span[*],'.
  'img[*],' .
  'h1[*],' .
  'h2[*],' .
  'h3[*],' .
  'H1[*],' .
  'H2[*],' .
  'H3[*],' .
  'button[class|data|id|name|maxlenght|required|style|placeholder|onclick|location|href],'.
  'iframe[src|name|width|height|title|align|allowfullscreen|frameborder|marginwidth|marginheight|scrolling]'
);


define('SMTPMAILER_SMTP_SERVER_ADDRESS', 'mail.konecta.com.py'); //SMTP server address
define('SMTPMAILER_DO_AUTHENTICATE', true); //Turn on SMTP server authentication. Set to false for an anonymous connection
define('SMTPMAILER_FROM', 'jhony.benitez@konecta.com.py'); //SMTP server username, if SMTPAUTH == true
define('SMTPMAILER_USERNAME', 'jhony.benitez@konecta.com.py'); //SMTP server username, if SMTPAUTH == true
define('SMTPMAILER_PASSWORD', 'cambiar123'); //SMTP server password, if SMTPAUTH == true

//Optional:
define('SMTPMAILER_CHARSET_ENCODING', 'utf-8'); //Email characters encoding, e.g. : 'utf-8' or 'iso-8859-1'
define('SMTPMAILER_USE_SECURE_CONNECTION', 'tls'); //SMTP encryption method : Set to '', 'tls', or 'ssl'
define('SMTPMAILER_SMTP_SERVER_PORT', 25); //SMTP server port. Set to 25 if no encryption is used, 465 if ssl or tls is activated
define('SMTPMAILER_DEBUG_MESSAGING_LEVEL', 0); //Print debugging informations. 0 = no debuging, 1 = print errors, 2 = print errors and messages, 4 = print full activity
define('SMTPMAILER_LANGUAGE_OF_MESSAGES', 'es'); //Language for messages. Look into smtp/code/vendor/language/ for available languages
