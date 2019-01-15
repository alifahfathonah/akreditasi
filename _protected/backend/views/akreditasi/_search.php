<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AkreditasiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="akreditasi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'akreditasi_id') ?>

    <?= $form->field($model, 'pn_id') ?>

    <?= $form->field($model, 'akreditasi_sk') ?>

    <?= $form->field($model, 'akreditasi_tgl_sk') ?>

    <?= $form->field($model, 'akreditasi') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
