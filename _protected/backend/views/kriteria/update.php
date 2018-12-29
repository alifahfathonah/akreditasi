<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kriteria */

$this->title = 'Update Kriteria: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Kriterias', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->kriteria_id, 'url' => ['view', 'id' => $model->kriteria_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kriteria-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
