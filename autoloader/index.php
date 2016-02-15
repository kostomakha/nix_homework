<?php
/**
 * Created by PhpStorm.
 * User: roach
 * Date: 07.01.16
 * Time: 15:20
 */

namespace Itcourses;

use Itcourses\Users\User;
use Itcourses\Users\Admin;

ini_set('display_errors',1);
error_reporting(E_ALL);

include_once 'lib/autoloader.php';

$user = new User();

$admin = new Admin();