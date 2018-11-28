<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\InstansiSeacrh */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="instansi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'ins_id') ?>

    <?= $form->field($model, 'ins_nama') ?>

    <?= $form->field($model, 'ins_alamat') ?>

    <?= $form->field($model, 'ins_telp') ?>

    <?= $form->field($model, 'ins_email') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
