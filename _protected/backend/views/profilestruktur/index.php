<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Struktur Organisasi';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="profile-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="alert alert-warning"><strong>Perhatian ! </strong>Data Struktur Organisasi Hanya Dapat Diinputkan Sekali</div>

    <p>
        <?= Html::a('Create Struktur Organisasi', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>
	
	<div style="width:100%; height:300px; overflow-y:auto; overflow-x:auto;">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'ps_id',
            [
              'attribute'=>'ps_isi',
              'contentOptions' => ['style' => 'width:70%; white-space: normal;'],
            ],
            //'created_at',
            //'created_by',
            //'updated_at',
            //'updated_by',
            'ps_status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
	</div>
</div>
