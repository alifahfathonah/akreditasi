<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AssesmentSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="assesment-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'assesment_id') ?>

    <?= $form->field($model, 'assesment_surat') ?>

    <?= $form->field($model, 'assesment_tanggal_mulai') ?>

    <?= $form->field($model, 'assesment_tanggal_selesai') ?>

    <?= $form->field($model, 'assesment_ketua') ?>

    <?php // echo $form->field($model, 'assesment_anggota') ?>

    <?php // echo $form->field($model, 'kelas_id') ?>

    <?php // echo $form->field($model, 'pn_id') ?>

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
