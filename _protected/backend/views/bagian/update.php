<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Bagian */

$this->title = 'Update Bagian: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Bagians', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->bagian_id, 'url' => ['view', 'id' => $model->bagian_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="bagian-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
		'data'=>$data,
    ]) ?>

</div>
