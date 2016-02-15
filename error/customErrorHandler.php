<?php
function errorLoging($type, $text, $file, $line)
{
    $error = error_get_last();
    $date = date('Y-m-d H:i:s');
    $logFile = '/var/www/html/error/error.log';
    $errorLogString = $date . ' ' . $type . ' ' . $text . ' ' . $file . ' ' . $line . "\n";
    file_put_contents($logFile, $errorLogString, FILE_APPEND);
}

function checkForFatal()
{
    ob_start();

    $error = error_get_last();

    $type = $error["type"];

    switch ($type):
        case E_ERROR:
        case E_PARSE:
        case E_USER_ERROR:
            errorLoging($error["type"], $error["message"], $error["file"], $error["line"]);
            echo "Критическая ошибка!";
            ob_get_contents();
            break;
        case E_WARNING:
        case E_USER_WARNING:
            errorLoging($error["type"], $error["message"], $error["file"], $error["line"]);
            echo "Осторожно!";
            ob_get_contents();
        break;
        case E_NOTICE:
        case E_USER_NOTICE:
            errorLoging($error["type"], $error["message"], $error["file"], $error["line"]);
            echo "Внимание!";
            ob_get_contents();
            break;
        default:
            ob_get_contents();
    endswitch;


}

register_shutdown_function('checkForFatal');
ini_set("display_errors", "off");
include_once 'error.php';