<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-frontend',
    'name' => 'LPM Benoa',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'modules' => [
      'social' => [
          // the module class
          'class' => 'kartik\social\Module',

          // the global settings for the disqus widget
          'disqus' => [
              'settings' => ['shortname' => 'DISQUS_SHORTNAME'] // default settings
          ],

          // the global settings for the facebook plugins widget
          'facebook' => [
              'app_id' => 'FACEBOOK_APP_ID',
              'app_secret' => 'FACEBOOK_APP_SECRET',
          ],

          // the global settings for the google plugins widget
          'google' => [
              'clientId' => 'GOOGLE_API_CLIENT_ID',
              'pageId' => 'GOOGLE_PLUS_PAGE_ID',
              'profileId' => 'GOOGLE_PLUS_PROFILE_ID',
          ],

          // the global settings for the google analytic plugin widget
          'googleAnalytics' => [
              'id' => 'TRACKING_ID',
              'domain' => 'TRACKING_DOMAIN',
          ],

          // the global settings for the twitter plugins widget
          'twitter' => [
              'screenName' => 'TWITTER_SCREEN_NAME'
          ],
      ],
    ],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'formatter' => [
            'class' => 'yii\i18n\Formatter',
            //'dateFormat' => 'dd.MM.yyyy',
            'decimalSeparator' => ',',
            'thousandSeparator' => '.',
            'currencyCode' => 'EUR',
        ],
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            //'name' => 'advanced-frontend',
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        'urlManagerBackend' => [
            'class' => 'yii\web\urlManager',
            'baseUrl' => 'http://localhost/yii/projek/backend/web',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
        ],

    ],
    'params' => $params,
];
