<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use common\models\Content;
use yii\widgets\ActiveForm;
use rmrevin\yii\fontawesome\FA;
use yii\helpers\Url;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--title icon-->
	<link rel="shortcut icon" href="<?php echo Yii::$app->params['backendUrl']; ?>/logo.ico" type="image/x-icon" />
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode('Lembaga Pemberdayaan Masyarakat (LPM) Kel.Benoa - '.$this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
  <div class="">
    <?php
    NavBar::begin([

        'brandLabel' =>Html::img(AppAsset::register($this)->baseUrl.'/slide/logo.png').Yii::$app->name,
        //'brandLabel' =>Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'style'=>'background-color:white; z-index:1050; height: 80px; margin-bottom: 0px;',
            'class' => 'navbar',
        ],
    ]);
    // $menuItems[] = '<li>'
    //     . Html::beginForm(['/site/cari'], 'get',['class'=>'form-inline','style'=>'margin-top:10px'])
    //     . Html::textinput('id','',['class'=>'form-control ','type'=>'search','placeholder'=>'Search'])
    //     . Html::submitButton(
    //         '<i class="fa fa-search fa-2x"></i>',
    //         ['class' => 'btn btn-link',]
    //     )
    //     . Html::endForm()
    //     . '</li>';
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        /*'items' => $menuItems,*/
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>
    <?php
    NavBar::begin([

        // 'brandLabel' =>Html::img(AppAsset::register($this)->baseUrl.'/slide/logo.png'),
        // 'brandUrl' => Yii::$app->homeUrl,
        'options' => ['style'=>'box-shadow: -4px 10px 6px -6px #999; z-index:1040',
            'class' => 'navbar-inverse'
        ],
    ]);

    $menuItems1 = [
       ['label' => '<i class="fa fa-home"></i> Home','url' => ['/site/index']],
       ['label' => '<i class="fa fa-user-circle"></i> Profil',
			'items' => [
				['label' => '<i class="fa fa-money"></i> Anggaran Dasar', 'url' => Url::to(['profileanggaran/index'])],
				['label' => '<i class="fa fa-sitemap"></i> Struktur Organisasi', 'url' => Url::to(['profilestruktur/index'])],
			],
	   ],
       ['label' => '<i class="fa fa-file-text"></i> Kegiatan', 'url' => ['/agenda/index']],
       ['label' => '<i class="fa fa-phone"></i> Kontak', 'url' => ['/kontak/index']],
       ['label' => '<i class="fa fa-file-o"></i> E-Musrenbang', 'url' => ['/musrenbang/index']],
       ['label' => '<i class="fa fa-newspaper-o"></i> Berita', 'url' => ['/berita/index']],
    ];
	
	$menuItem;
	if(Yii::$app->user->isGuest){
		$menuItem=[
			[
				'label' => 'Login',
				'url' => ['site/login'],
				'visible' => Yii::$app->user->isGuest
			],
		];
	}else{
		$menuItem=[
			[

				'label' => '<i class="fa fa-user-circle-o"></i> '.Yii::$app->user->identity->username,

				'items' => [
					 ['label' => Html::img(Yii::$app->params['backendUrl'].'/user.png',['class'=>'img-circle','style'=>'height:90px; width:90px; border:3px solid; border-color:white;']).'<p style=\'color:white; font-size:15px;\'>'.Yii::$app->user->identity->username.'</p>','options'=>['style'=>'background-color:#2B333E; text-align:center;']],
					 //['label' => '<i class="fa fa-user-circle-o"></i>Profile','url' => Url::to(['site/index'])],
					 ['label' => '<i class="fa fa-eercast"></i> Dashboard', 'url' => Url::to(Yii::$app->params['backendLogin'])],
					 ['label' => '<i class="fa fa-sign-out"></i> Logout', 'url' => Url::to(['site/logout'])],
				],
			],
		];
	}
   
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItem,
        'encodeLabels' => false,
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-left'],
        'items' => $menuItems1,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>
    </div>
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => ['id'=>'menu',
            'class' => 'navbar-inverse navbar-fixed-top'
        ],
    ]);

	
    $menuItems = [
        ['label' => '<i class="fa fa-home"></i> Home','url' => ['/site/index']],
        ['label' => '<i class="fa fa-user-circle"></i> Profil',
			'items' => [
				['label' => '<i class="fa fa-money"></i> Anggaran Dasar', 'url' => Url::to(['profileanggaran/index'])],
				['label' => '<i class="fa fa-sitemap"></i> Struktur Organisasi', 'url' => Url::to(['profilestruktur/index'])],
			],
		],
        ['label' => '<i class="fa fa-file-text"></i> Kegiatan', 'url' => ['/agenda/index']],
        ['label' => '<i class="fa fa-phone"></i> Kontak', 'url' => ['/kontak/index']],
        ['label' => '<i class="fa fa-file-o"></i> E-Musrenbang', 'url' => ['/musrenbang/index']],
        ['label' => '<i class="fa fa-newspaper-o"></i> Berita', 'url' => ['/berita/index']],
    ];
	
	if(Yii::$app->user->isGuest){
		$menuItems[] = 
			[
				'label' => 'Login',
				'url' => ['site/login'],
				
			];
		
	}else{
		$menuItems[] = 
			[
				'label' => '<i class="fa fa-user-circle-o"></i> '.Yii::$app->user->identity->username,
				
				'items' => [
					 ['label' => Html::img(Yii::$app->params['backendUrl'].'/user.png',['class'=>'img-circle','style'=>'height:90px; width:90px; border:3px solid; border-color:white;']).'<p style=\'color:white; font-size:15px;\'>'.Yii::$app->user->identity->username.'</p>','options'=>['style'=>'background-color:#2B333E; text-align:center;']],
					 //['label' => '<i class="fa fa-user-circle-o"></i>Profile','url' => Url::to(['site/index'])],
					 ['label' => '<i class="fa fa-eercast"></i> Dashboard', 'url' => Url::to(Yii::$app->params['backendLogin'])],
					 ['label' => '<i class="fa fa-sign-out"></i> Logout', 'url' => Url::to(['site/logout'])],
				],
				
			];
		
	}

    
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; <?= Html::encode(Yii::$app->name) ?> <?= date('Y') ?></p>

        <!--<p class="pull-right"><?= Yii::powered() ?></p>-->
    </div>
</footer>

<?php $this->endBody() ?>
</body>

<!-- SCRIPT -->
<script type="text/javascript">
(function($) {
    $(document).ready(function(){
        $(window).scroll(function(){
            if ($(this).scrollTop() > 130) {
                $('#menu').fadeIn(200);
            } else {
                $('#menu').fadeOut(200);
            }
        });
    });
})(jQuery);

$('ul.nav li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
});
</script>

</html>
<?php $this->endPage() ?>
