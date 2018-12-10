<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Pertanyaan */

$this->title = 'Update Pertanyaan: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Pertanyaans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tanya_id, 'url' => ['view', 'id' => $model->tanya_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pertanyaan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data1'=>$data1,
        'data2'=>$data2,
    ]) ?>

</div>
