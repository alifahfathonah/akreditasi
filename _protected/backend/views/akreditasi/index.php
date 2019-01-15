<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AkreditasiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Akreditasis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="akreditasi-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Akreditasi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'akreditasi_id',
            'pn_id',
            'akreditasi_sk',
            'akreditasi_tgl_sk',
            'akreditasi',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
