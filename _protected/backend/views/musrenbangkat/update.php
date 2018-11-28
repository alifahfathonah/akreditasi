<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Instansi */

$this->title = 'Update Musrenbang Kategori: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Musrenbang Kategori', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->mk_id, 'url' => ['view', 'id' => $model->mk_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="instansi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
