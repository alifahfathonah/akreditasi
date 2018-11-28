<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\User;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\InstansiSeacrh */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'List User Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="instansi-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            //'expire',
            //'data',
			[
				'attribute'=>'user_id',
				'format' => 'text',
				'value' => function($data){
					$u = new User();
					$uname = $u->find()->where(['id'=>$data->user_id])->one();
					return $uname->username;
				},
			],
        ],
    ]); ?>
</div>
