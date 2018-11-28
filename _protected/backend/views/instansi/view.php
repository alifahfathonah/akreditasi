<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Instansi */

$this->title = $model->ins_id;
$this->params['breadcrumbs'][] = ['label' => 'Instansis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="instansi-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->ins_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->ins_id], [
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
            'ins_id',
            'ins_nama',
            'ins_alamat:ntext',
            'ins_telp',
            'ins_email:email',
            'created_by',
            'created_at',
            'updated_by',
            'updated_at',
            'ins_status',
        ],
    ]) ?>

</div>
