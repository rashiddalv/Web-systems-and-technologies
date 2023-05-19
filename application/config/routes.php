<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/


// ========================USER SIDE========================

$route['default_controller']                               = 'UserController';
$route['index']                                            = 'UserController/index';
$route['about']                                            = 'UserController/about';
$route['courses']                                          = 'UserController/courses';
$route['trainers']                                         = 'UserController/trainers';
$route['contact']                                          = 'UserController/contact';
$route['course_details/(.*)']                              = 'UserController/course_details/$1';
$route['trainer_details/(.*)']                             = 'UserController/trainer_details/$1';

// ========================USER SIDE========================

// ========================ADMIN SIDE=======================

$route['login_dashboard']                                  = 'AdminController/index';
$route['login_act']                                        = 'AdminController/login_act';
$route['log_out']                                          = 'AdminController/log_out';
$route['register_dashboard']                               = 'AdminController/register';
$route['register_act']                                     = 'AdminController/register_act';
$route['dashboard']                                        = 'AdminController/dashboard';
$route['dashboard_account_settings']                       = 'AdminController/dashboard_account_settings';
$route['account_settings_act']                             = 'AdminController/account_settings_act';
$route['account_img_delete/(.*)']                          = 'AdminController/account_img_delete/$1';


$route['reset_password']                                   = 'ResetPassword/index';
$route['reset_password/send']                              = 'ResetPassword/send';
$route['reset_password/token/(:any)']                      = 'ResetPassword/token/$1';
$route['reset_password/update']                            = 'ResetPassword/update';
$route['reset_password/reset_password_token_form']         = 'ResetPassword/reset_password_token_form';


$route['verify_account']                                   = 'AdminController/verify_account';
$route['verify_acc_token/(.*)']                            = 'AdminController/verify_acc_token/$1';




$route['dashboard_courses']                                = 'AdminController/dashboard_courses';
$route['course_create']                                    = 'AdminController/course_create';
$route['course_create_act']                                = 'AdminController/course_create_act';
$route['course_delete/(.*)']                               = 'AdminController/course_delete/$1';
$route['course_detail/(.*)']                               = 'AdminController/course_detail/$1';
$route['course_img_delete/(.*)']                           = 'AdminController/course_img_delete/$1';
$route['delete_course_detail/(.*)']                        = 'AdminController/delete_course_detail/$1';
$route['course_edit/(.*)']                                 = 'AdminController/course_edit/$1';
$route['course_edit_act/(.*)']                             = 'AdminController/course_edit_act/$1';



$route['dashboard_trainers']                               = 'AdminController/dashboard_trainers';
$route['trainer_create']                                   = 'AdminController/trainer_create';
$route['trainer_create_act']                               = 'AdminController/trainer_create_act';
$route['trainer_delete/(.*)']                              = 'AdminController/trainer_delete/$1';
$route['trainer_detail/(.*)']                              = 'AdminController/trainer_detail/$1';
$route['delete_trainers_detail/(.*)']                      = 'AdminController/delete_trainers_detail/$1';
$route['trainer_edit/(.*)']                                = 'AdminController/trainer_edit/$1';
$route['trainer_edit_act/(.*)']                            = 'AdminController/trainer_edit_act/$1';
$route['trainer_img_delete/(.*)']                          = 'AdminController/trainer_img_delete/$1';



$route['dashboard_contact']                                = 'AdminController/dashboard_contact';
$route['contact_send_act']                                 = 'AdminController/contact_send_act';
$route['contact_detail/(.*)']                              = 'AdminController/contact_detail/$1';
$route['contact_detail_viewed/(.*)']                       = 'AdminController/contact_detail_viewed/$1';
$route['contact_detail_not_viewed/(.*)']                   = 'AdminController/contact_detail_not_viewed/$1';
$route['contact_detail_delete/(.*)']                       = 'AdminController/contact_detail_delete/$1';




$route['dashboard_about']                                  = 'AdminController/dashboard_about';
$route['about_edit/(.*)']                                  = 'AdminController/about_edit/$1';
$route['about_edit_act/(.*)']                              = 'AdminController/about_edit_act/$1';
$route['about_detail/(.*)']                                = 'AdminController/about_detail/$1';



$route['emails']                                           = 'AdminController/emails';

// ========================ADMIN SIDE=======================



$route['404_override']                                     = 'AdminController/override404';
$route['translate_uri_dashes']                             = false;
