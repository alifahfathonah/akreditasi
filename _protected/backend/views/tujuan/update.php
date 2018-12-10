<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Tujuan */

$this->title = 'Update Tujuan: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Tujuans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tujuan_id, 'url' => ['view', 'id' => $model->tujuan_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tujuan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
