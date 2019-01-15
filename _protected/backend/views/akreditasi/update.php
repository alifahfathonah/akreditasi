<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Akreditasi */

$this->title = 'Update Akreditasi: ' . $model->akreditasi_id;
$this->params['breadcrumbs'][] = ['label' => 'Akreditasis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->akreditasi_id, 'url' => ['view', 'id' => $model->akreditasi_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="akreditasi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
