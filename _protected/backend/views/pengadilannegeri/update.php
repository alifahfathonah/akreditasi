<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanNegeri */

$this->title = 'Update Pengadilan Negeri: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Negeri', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pn_id, 'url' => ['view', 'id' => $model->pn_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pengadilan-negeri-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data' => $data,
    ]) ?>

</div>
