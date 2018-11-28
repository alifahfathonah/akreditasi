<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\BagPn */

$this->title = 'Update Bagian: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Bag Pns', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->bg_id, 'url' => ['view', 'id' => $model->bg_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="bag-pn-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data'=>$data,
    ]) ?>

</div>
