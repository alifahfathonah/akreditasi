<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanNegeri */

$this->title = $model->pn_id;
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Negeris', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengadilan-negeri-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->pn_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->pn_id], [
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
            'pn_id',
            'pn_nama',
            'pn_alamat:ntext',
            'pn_kelas',
            'pn_akreditasi',
            'pn_ketua',
            'pn_email:email',
            'pn_website',
            'pn_telp',
            'pn_fax',
            'pn_pegawai',
            'pn_honorer',
            'created_by',
            'created_at',
            'updated_by',
            'updated_at',
        ],
    ]) ?>

</div>
