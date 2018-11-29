<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanTinggi */

$this->title = 'Update Pengadilan Tinggi: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Tinggis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pt_id, 'url' => ['view', 'id' => $model->pt_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pengadilan-tinggi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
