<?php
/**
 * Created by PhpStorm.
 * User: roach
 * Date: 07.01.16
 * Time: 22:56
 */
function classLoader($class)
{

    $path = __DIR__ . '/../';

    $projectDir = '/src/';

    $classPath = str_replace('\\', '/', $class);

    $break = strrpos($classPath, '/');

    $relativePath = strtolower(substr($classPath, 0, $break));

    $relativeClass = substr($classPath, $break);

    $file = $path . $relativePath . $relativeClass . '.php';

    require_once ($file);

}

spl_autoload_register('classLoader');