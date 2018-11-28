<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Berita */

$this->title = $model->b_id;
$this->params['breadcrumbs'][] = ['label' => 'Beritas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="berita-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
		    <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Update', ['update', 'id' => $model->b_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->b_id], [
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
            'b_id',
            'b_nama',
            'b_isi:ntext',
            'b_gambar',
            [
              'attribute'=>'b_tgl',
              'value'=>function($model){
                  if($model->b_tgl!=''){
                    return date('d/m/Y',$model->b_tgl);
                  }
              },
            ],
            'created_by',
            [
              'attribute'=>'created_at',
              'value'=>function($model){
                  if($model->created_at!=''){
                    return date('d/m/Y',$model->created_at);
                  }
              },
            ],
            'updated_by',
            [
              'attribute'=>'updated_at',
              'value'=>function($model){
                  if($model->updated_at!=''){
                    return date('d/m/Y',$model->updated_at);
                  }
              },
            ],
            'b_status',
        ],
    ]) ?>

    <?= Html::img(Yii::$app->homeUrl . '/uploads/img2/'.$model->b_gambar) ?>

</div>
