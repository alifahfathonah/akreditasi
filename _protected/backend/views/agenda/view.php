<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Agenda */

$this->title = $model->a_id;
$this->params['breadcrumbs'][] = ['label' => 'Agendas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agenda-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Update', ['update', 'id' => $model->a_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->a_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'a_id',
            'a_judul',
            'a_isi:ntext',
            'a_location',
            [
              'attribute'=>'a_tanggal',
              'format'=>'raw',
              'value'=>function($model){
                  if($model->a_tanggal!=''){
                    return date('d/m/Y',$model->a_tanggal);
                  }
              },
            ],
            'created_by',
            [
              'attribute'=>'created_at',
              'format'=>'raw',
              'value'=>function($model){
                  if($model->created_at!=''){
                    return date('d/m/Y',$model->created_at);
                  }
              },
            ],
            'updated_by',
            [
              'attribute'=>'updated_at',
              'format'=>'raw',
              'value'=>function($model){
                  if($model->updated_at!=''){
                    return date('d/m/Y',$model->updated_at);
                  }
              },
            ],
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
        ],
    ]) ?>

</div>
