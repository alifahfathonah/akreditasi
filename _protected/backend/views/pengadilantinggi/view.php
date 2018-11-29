<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanTinggi */

//$this->title = $model->pt_id;
$this->title = "Profil Pengadilan Tinggi";
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Tinggis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengadilan-tinggi-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->pt_id], ['class' => 'btn btn-primary']) ?>
        <!-- <?= Html::a('Delete', ['delete', 'id' => $model->pt_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?> -->
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'pt_id',
            'pt_nama',
            'pt_alamat',
            'pt_pimpinan',
            'pt_website',
            'pt_email:email',
            'pt_telp',
            'pt_fax',
            'pt_pegawai',
            'pt_honorer',
            // 'created_by',
            // 'created_at',
            // 'updated_by',
            // 'updated_at',
        ],
    ]) ?>

</div>
