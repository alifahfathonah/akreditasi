<?php
return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
        '@webi'  => 'http://localhost/akreditasi/_protected/backend/',
        '@img'  => 'http://localhost/akreditasi/_protected/backend/web/uploads/img1/'
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],
];
