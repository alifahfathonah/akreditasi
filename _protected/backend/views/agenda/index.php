<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Agenda';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agenda-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php //echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Agenda', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>
	
	<div style="width:100%; height:400px; overflow-y:auto; overflow-x:auto;">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'a_id',
            'a_judul',
            'a_isi:ntext',
            'a_location',
            [
              'attribute'=>'a_tanggal',
              'value'=>function($model){
                  if($model->a_tanggal!=''){
                    return date('d/m/Y',$model->a_tanggal);
                  }
              },
            ],
            [
              'attribute'=>'a_tanggal_akhir',
              'value'=>function($model){
                  if($model->created_at!=''){
                    return date('d/m/Y',$model->a_tanggal_akhir);
                  }
              },
            ],
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',
            [
              'attribute'=>'a_status',
              'format'=>'raw',
              'value'=>function($model){
                  if($model->a_status!=''){
                    $ex=explode('_',$model->a_status);
                    return ucwords($ex[0].' '.$ex[1]);
                  }
              },
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
	</div>
</div>
