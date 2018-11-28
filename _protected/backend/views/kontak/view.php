<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Kontak */

$this->title = $model->k_id;
$this->params['breadcrumbs'][] = ['label' => 'Kontaks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kontak-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Update', ['update', 'id' => $model->k_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->k_id], [
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
            'k_id',
            'k_judul',
            'k_nama',
            'k_email:email',
            'k_pesan:ntext',
            'k_jawab:ntext',
            'created_at',
			'updated_at',
            'k_status_jawab',
        ],
    ]) ?>

</div>
