<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Jenis */

$this->title = 'Update Jenis: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Jenis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->jenis_id, 'url' => ['view', 'id' => $model->jenis_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="jenis-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
