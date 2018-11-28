<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */

$this->title = $model->uk_id;
$this->params['breadcrumbs'][] = ['label' => 'Kep. Instansi', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kaling-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->uk_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->uk_id], [
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
            'uk_id',
            'uk_nama',
            'ins_id',
            'uk_email:email',
            'uk_alamat:ntext',
            'uk_telp',
            'uk_jk',
            'uk_tgl_lahir',
            'uk_tempat_lahir',
            'created_by',
            'created_at',
            'updated_by',
            'updated_at',
        ],
    ]) ?>

</div>
