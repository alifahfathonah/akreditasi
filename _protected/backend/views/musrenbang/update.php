<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Musrenbang */

$this->title = 'Update Musrenbang: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Musrenbangs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->m_id, 'url' => ['view', 'id' => $model->m_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="musrenbang-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data' => $data,
		'datakat' => $datakat,
        'uug' => $uug,
        'tahun' => $tahun,
    ]) ?>

</div>
