<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */

$this->title = 'Update Kaling: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Kalings', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->uk_id, 'url' => ['view', 'id' => $model->uk_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kaling-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
