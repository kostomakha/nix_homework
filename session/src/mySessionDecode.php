<?php
/**
 * Created by PhpStorm.
 * User: roach
 * Date: 04.01.16
 * Time: 12:55
 */
session_start();
echo $_SESSION['id'];
$_SESSION['id'] = 1;
$_SESSION['name'] = 'Jhon';
$_SESSION['age'] = 54;

function sessionDecode() {

    $mySessSavePath = ini_get('session.save_path');

    $file = $loadFile = $mySessSavePath . '/' . $_COOKIE['PHPSESSID'];

    $data = file_get_contents($file);

    $token = strtok($data, ";");

    while ($token !== false) {
        $SESS = [];
        $temp = $token;
        $key = substr($temp, 0, strpos($temp, "|"));
        $value = trim(substr($temp, strrpos($temp, ":") + 1), "\"");
        $SESS[$key] = $value;
        $token = strtok(";");
    }
}

var_dump(sessionDecode());
