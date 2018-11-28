<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Beritas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="berita-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Berita', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'b_id',
            'b_nama',
            [
              'attribute' => 'b_isi',
              'format' => 'text',
              'value' => function ($data) {
                if(strlen($data->b_isi)>60){
                  return substr($data->b_isi,0,60).'...';
                }else{
                  return $data->b_isi;
                }
              },
            ],
            [
              'attribute' => 'b_gambar',
              'format' => 'raw',
              'value' => function ($data) {
                if(!is_null($data->b_gambar)){
                  return Html::img(Yii::$app->params['backendUrl'].'img2/'.$data->b_gambar,
                    ['style'=>'width:50px; height:auto;']
                  );
                }else{
                  return NULL;
                }
              },
            ],
            [
              'attribute'=>'b_tgl',
              'value'=>function($model){
                  if($model->b_tgl!=''){
                    return date('d/m/Y',$model->b_tgl);
                  }
              },
            ],
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',
            'b_status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
