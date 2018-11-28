<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AdminSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="admin-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'ua_id') ?>

    <?= $form->field($model, 'ua_nama') ?>

    <?= $form->field($model, 'ua_alamat') ?>

    <?= $form->field($model, 'ua_telp') ?>

    <?= $form->field($model, 'ua_jk') ?>

    <?php // echo $form->field($model, 'ua_tgl_lahir') ?>

    <?php // echo $form->field($model, 'ua_tempat_lahir') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
