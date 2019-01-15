<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Assesment */

$this->title = $model->assesment_id;
$this->params['breadcrumbs'][] = ['label' => 'Assesments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assesment-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->assesment_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->assesment_id], [
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
            'assesment_id',
            'assesment_surat',
            'assesment_tanggal_mulai',
            'assesment_tanggal_selesai',
            'assesment_ketua',
            //'assesment_anggota',
            'kelas_id',
            'pn_id',
            'created_by',
            'created_at',
            'updated_by',
            'updated_at',
        ],
    ]) ?>

</div>
