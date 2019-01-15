<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Assesment */

$this->title = 'Update Assesment: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Assesments', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->assesment_id, 'url' => ['view', 'id' => $model->assesment_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="assesment-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'dataPN' => $dataPN,
        'dataPG' => $dataPG,
        'jenis' => $jenis,	
    ]) ?>

</div>
