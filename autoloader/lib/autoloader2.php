<?php
/**
 * Created by PhpStorm.
 * User: roach
 * Date: 07.01.16
 * Time: 20:36
 **/
namespace Itcourses;

class autoClassLoader
{
    protected $prefixes = array();

    protected $defaultNamespace = '';

    protected $defaultSrcDir =

    protected  $projectPath = '';

    public function register($namespace = '', $srcDir = '', $projectPath = '')

    {
        $this->defaultNamespace[$namespace] = $srcDir;

        $this->projectSrcDir = $srcDir;

        $this->projectPath = $projectPath;

        spl_autoload_register(array($this, 'loadClass'));
    }



    public function addNamespace($prefix, $base_dir, $prepend = false)

    {
        $prefix = trim($prefix, '\\') . '\\';

        if (isset($this->defaultNamespace[0])) {
            $name =
            $prefix = $this->defaultNamespace[0] . '\\' . $prefix;
        } else {
            $prefix = __NAMESPACE__ . '\\' . $prefix;
        }

        if (isset($this->projectPath) ) {
            $projectDir =  $this->projectPath . '/';
        } else {
            $prefix = trim($prefix, '\\') . '\\';
            $projectDir =  dirname(__DIR__) . '/';

        }

        echo "</br>class $projectDir";
        $base_dir = $projectDir . rtrim($base_dir, DIRECTORY_SEPARATOR) . '/';
        //echo $base_dir;
        if (isset($this->prefixes[$prefix]) === false) {
            $this->prefixes[$prefix] = array();
        }

        if ($prepend) {
            array_unshift($this->prefixes[$prefix], $base_dir);
        } else {
            array_push($this->prefixes[$prefix], $base_dir);
        }
    }

    public function loadClass($class)
    {
        echo "</br>class $class";
        $prefix = $class;
        echo "</br>" . __METHOD__ . "</br>" . $prefix;
        while (false !== $pos = strrpos($prefix, '\\')) {

            $prefix = substr($class, 0, $pos + 1);
            echo "</br>while $prefix";
            $relative_class = substr($class, $pos + 1);
            echo "</br>while2 $relative_class";
            $mapped_file = $this->loadMappedFile($prefix, $relative_class);

            if ($mapped_file) {

                return $mapped_file;

            }

            $prefix = rtrim($prefix, '\\');

        }

        return false;

    }

    protected function loadMappedFile($prefix, $relative_class)
    {
        if (isset($this->prefixes[$prefix]) === false) {
            return false;
        }

        foreach ($this->prefixes[$prefix] as $base_dir) {

            $file = $base_dir
                . str_replace('\\', '/', $relative_class)
                . '.php';
            echo "</br> $file";
            if ($this->requireFile($file)) {
                return $file;
            }
        }

        return false;
    }

    protected function requireFile($file)
    {
        if (file_exists($file)) {
            echo "</br> $file";
            require $file;
            return true;
        }
        return false;
    }
}


$classLoader = new autoClassLoader();

$classLoader->register('Itcourses', 'src');

$classLoader->addNamespace('Settings', 'src/control');
$classLoader->addNamespace('Courses', 'src/courses');
$classLoader->addNamespace('Users', 'src/users');
$classLoader->addNamespace('Users\\Admin', 'src/users');
$classLoader->addNamespace('Tests', 'src/tests');
