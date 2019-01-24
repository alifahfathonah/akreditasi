<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;
use backend\components\SideBWidget;
use yii\helpers\Url;


$asset = AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="<?= $asset->baseUrl."/tmptest/assets/img/apple-icon.png" ?>">
	<link rel="icon" type="image/png" sizes="96x96" href="<?= $asset->baseUrl."/tmptest/assets/img/favicon.png" ?>"><link rel="shortcut icon" href="<?php echo Yii::$app->params['backendUrl']; ?>/logo.ico" type="image/x-icon" />

    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode('Akreditasi Pengadilan Negeri - '.$this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div id="wrapper">
    <?php
	 if (Yii::$app->user->isGuest) {
	?>
		<?= Alert::widget() ?>
				<?= $content ?>

	<?php
	 }else{
    NavBar::begin([
        'brandLabel' => '<nav class=navbar-brand>'.Yii::$app->name.'</nav>',
        'brandUrl' => Yii::$app->homeUrl,
		    'headerContent'=>'<div class="navbar-btn"><button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button></div>',
        'options' => [
            'class' => 'navbar navbar-default navbar-fixed-top',
        ],
    ]);
    //$menuItems = [
    //    ['label' => 'Home', 'url' => ['/site/index']],
    //];

	?>
	<?php
    echo Nav::widget([
		'encodeLabels' => false,
		'items' => [
			[

				'label' => '<i class="fa fa-user-circle-o"></i>'.Yii::$app->user->identity->username,

				'items' => [
					 ['label' => Html::img(Yii::$app->params['backendUrl'].'/user.png',['class'=>'img-circle','style'=>'height:90px; width:90px; border:3px solid; border-color:white;']).'<p style=\'color:white; font-size:15px;\'>'.Yii::$app->user->identity->username.'</p>','options'=>['style'=>'background-color:#2B333E; text-align:center;']],
					// ['label' => '<i class="fa fa-eercast"></i> Site Home','url' => Url::to(Yii::$app->params['frontHome'])],
					 //['label' => '<i class="fa fa-cogs"></i> Biodata','url' => Url::to(['biodata/index'])],
					 ['label' => '<i class="fa fa-sign-out"></i> Logout', 'url' => Url::to(['site/logout'])],
				],
			],
			[
				'label' => 'Login',
				'url' => ['site/login'],
				'visible' => Yii::$app->user->isGuest
			],
		],
        'options' => ['class' => 'navbar-nav navbar-right'],
        //'items' => $menuItems,
    ]);
    NavBar::end();
	?>
	<?= SideBWidget::widget() ?>
	<div class="main">
		<div class="main-content">
			<div class="container-fluid">
				<!--
				<?= Breadcrumbs::widget([
					'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
				]) ?>
				-->
				<?= Alert::widget() ?>
				<?= $content ?>
			</div>
		</div>
		<div class="main-content" style="margin-top:30px;">
			<footer>
				<div class="container-fluid">
					<p class="copyright">&copy; 2019 Pengadilan Tinggi Jawa Timur.</p>
				</div>
			</footer>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
	 <?php } ?>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
