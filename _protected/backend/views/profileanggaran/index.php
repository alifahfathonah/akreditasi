<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Anggaran Dasar';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="profile-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="alert alert-warning"><strong>Perhatian ! </strong>Data Profile Anggaran Hanya Dapat Diinputkan Sekali</div>

    <p>
        <?= Html::a('Create Profile Anggaran', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>
	
	<div style="width:100%; height:300px; overflow-y:auto; overflow-x:auto;">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'pa_id',
            [
              'attribute'=>'pa_isi',
              'contentOptions' => ['style' => 'width:70%; white-space: normal;'],
            ],
            //'created_at',
            //'created_by',
            //'updated_at',
            //'updated_by',
            'pa_status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
	</div>
</div>
