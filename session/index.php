<?php
ini_set('display_errors',1);
error_reporting(E_ALL);
require_once ('src/sess.php');
sess_start();
echo $_SESS["id"];
echo $_SESS["name"];
$_SESS["id"] = 42;
$_SESS["name"] = 'Kos';