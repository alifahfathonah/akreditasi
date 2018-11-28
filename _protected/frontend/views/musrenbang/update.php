<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Musrenbang */

$this->title = 'Update Musrenbang: '.$model->m_kegiatan;
$this->params['breadcrumbs'][] = ['label' => 'Musrenbangs', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="musrenbang-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
