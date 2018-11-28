<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\InstansiSeacrh */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Musrenbang Kategori';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="instansi-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Kategori', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'mk_id',
            'mk_kelompok',
            // 'created_by',
            // 'created_at',
            // 'updated_by',
            // 'updated_at',
            'mk_status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
