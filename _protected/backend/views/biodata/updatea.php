<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */

$this->title = 'Update Biodata';
$this->params['breadcrumbs'][] = ['label' => 'Biodata', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kaling-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_forma', [
        'model' => $model,
    ]) ?>

</div>
