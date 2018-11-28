<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KalingSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kaling-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'uk_id') ?>

    <?= $form->field($model, 'uk_nama') ?>

    <?= $form->field($model, 'uk_alamat') ?>

    <?= $form->field($model, 'uk_telp') ?>

    <?= $form->field($model, 'uk_jk') ?>

    <?php // echo $form->field($model, 'uk_tgl_lahir') ?>

    <?php // echo $form->field($model, 'uk_tempat_lahir') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
