<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Agenda */

$this->title = 'Update Agenda: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Agendas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->a_id, 'url' => ['view', 'id' => $model->a_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="agenda-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
