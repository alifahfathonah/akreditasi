<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Audit */

$this->title = 'Update Audit: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Audits', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->audit_id, 'url' => ['view', 'id' => $model->audit_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="audit-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
