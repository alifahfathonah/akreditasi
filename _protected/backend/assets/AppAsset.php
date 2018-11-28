<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
    		'tmptest/assets/vendor/bootstrap/css/bootstrap.min.css',
    		'tmptest/assets/vendor/font-awesome/css/font-awesome.min.css',
    		'tmptest/assets/vendor/linearicons/style.css',
    		'tmptest/assets/css/bootstrap.min.css',
    		'tmptest/assets/css/main.css',
		'',
    ];
    public $js = [
		    'tmptest/assets/scripts/klorofil-common.js',
        'tmptest/assets/vendor/jquery-slimscroll/jquery.slimscroll.js',
        'tmptest/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
        '\rmrevin\yii\fontawesome\AssetBundle',
    ];
}
