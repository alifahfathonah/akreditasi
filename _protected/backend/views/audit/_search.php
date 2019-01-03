<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AuditSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="audit-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'audit_id') ?>

    <?= $form->field($model, 'assesment_id') ?>

    <?= $form->field($model, 'tujuan_id') ?>

    <?= $form->field($model, 'kriteria_id') ?>

    <?= $form->field($model, 'pertanyaan') ?>

    <?php // echo $form->field($model, 'nilai_a') ?>

    <?php // echo $form->field($model, 'nilai_b') ?>

    <?php // echo $form->field($model, 'nilai_c') ?>

    <?php // echo $form->field($model, 'bobot') ?>

    <?php // echo $form->field($model, 'audit_nilai') ?>

    <?php // echo $form->field($model, 'audit_nilai_angka') ?>

    <?php // echo $form->field($model, 'audit_temuan') ?>

    <?php // echo $form->field($model, 'audit_keterangan') ?>

    <?php // echo $form->field($model, 'audit_penyelesaian') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
