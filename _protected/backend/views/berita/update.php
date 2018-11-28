<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Berita */

$this->title = 'Update Berita: '.$model->b_id;
$this->params['breadcrumbs'][] = ['label' => 'Beritas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->b_id, 'url' => ['view', 'id' => $model->b_id]];
$this->params['breadcrumbs'][] = 'Update';
$status='update';
?>
<div class="berita-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'status' => $status,
    ]) ?>

</div>
