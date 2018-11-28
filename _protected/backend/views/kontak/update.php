<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kontak */

$this->title = 'Update Kontak: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Kontaks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->k_id, 'url' => ['view', 'id' => $model->k_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kontak-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
