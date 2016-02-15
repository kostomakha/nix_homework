<?php
/**
 * Created by PhpStorm.
 * User: roach
 * Date: 04.01.16
 * Time: 19:23
 */
try {
    include_once 'error.php';
    throw new Exception("Ooops!");
} catch (Exception $e) {
    echo "Исключение: {$e->getMessage()}";
} finally {
    echo "Hello!";
    echo "Исключение: {$e->getMessage()}";
}