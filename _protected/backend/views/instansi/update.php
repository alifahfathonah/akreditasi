<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Instansi */

$this->title = 'Update Instansi: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Instansis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ins_id, 'url' => ['view', 'id' => $model->ins_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="instansi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
