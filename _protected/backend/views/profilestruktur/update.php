<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Profile */

$this->title = 'Update Profile: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Struktur Organisasi', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ps_id, 'url' => ['view', 'id' => $model->ps_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="profile-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
