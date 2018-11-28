<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Slider */

$this->title = 'Create Slider';
$this->params['breadcrumbs'][] = ['label' => 'Sliders', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="slider-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="alert alert-warning"><strong>Perhatian ! </strong>Image yang diupload Width : 1140 Heigh : 300</div>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
