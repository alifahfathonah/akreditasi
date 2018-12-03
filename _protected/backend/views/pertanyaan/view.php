<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use common\models\BagPn;

/* @var $this yii\web\View */
/* @var $model common\models\Pertanyaan */

$this->title = $model->tanya_id;
$this->params['breadcrumbs'][] = ['label' => 'Pertanyaans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pertanyaan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->tanya_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->tanya_id], [
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
            'tanya_id',
            'pertanyaan:ntext',
            'tanya_ket_a:ntext',
            'tanya_ket_b:ntext',
            'tanya_ket_c:ntext',
            'tanya_bobot',
            [
              'attribute'=>'tanya_bagian',
              'format' => 'text',
              'value' => function($data){
                    $c = new BagPn;
                   return $c->getlistBagian($data->tanya_bagian);
               },
            ],
            'created_by',
            'created_at',
            'updated_by',
            'updated_at',
        ],
    ]) ?>

</div>
