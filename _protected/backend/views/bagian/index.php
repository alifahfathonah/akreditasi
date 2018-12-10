<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Tujuan;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\BagianSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Bagian';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bagian-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Bagian', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'bagian_id',
            [
              'attribute'=>'tujuan_id',
              'format' => 'text',
              'value' => function($data){
                    $c = new Tujuan;
                   return $c->getlistTujuan($data->tujuan_id);
               },
            ],
            'bagian_nama',
            // 'created_by',
            // 'created_at',
            //'updated_by',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
