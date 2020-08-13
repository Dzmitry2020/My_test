<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit0852d1eea8f16b23039329fde007f5ff
{
    public static $prefixLengthsPsr4 = array (
        'V' => 
        array (
            'View\\' => 5,
        ),
        'T' => 
        array (
            'TexLab\\MyDB\\' => 12,
            'TexLab\\Html\\' => 12,
        ),
        'M' => 
        array (
            'Model\\' => 6,
        ),
        'C' => 
        array (
            'Core\\' => 5,
            'Controller\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'View\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/View',
        ),
        'TexLab\\MyDB\\' => 
        array (
            0 => __DIR__ . '/..' . '/texlab/mydb/src',
        ),
        'TexLab\\Html\\' => 
        array (
            0 => __DIR__ . '/..' . '/texlab/html/src',
        ),
        'Model\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Model',
        ),
        'Core\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Core',
        ),
        'Controller\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Controller',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit0852d1eea8f16b23039329fde007f5ff::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit0852d1eea8f16b23039329fde007f5ff::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
