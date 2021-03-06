<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Admin */

$this->title = 'Update Admin: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Admins', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ua_id, 'url' => ['view', 'id' => $model->ua_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="admin-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'status' => 'update',
    ]) ?>

</div>
