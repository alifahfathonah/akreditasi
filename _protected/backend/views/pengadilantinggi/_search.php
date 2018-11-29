<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PengadilantinggiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengadilan-tinggi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'pt_id') ?>

    <?= $form->field($model, 'pt_nama') ?>

    <?= $form->field($model, 'pt_alamat') ?>

    <?= $form->field($model, 'pt_pimpinan') ?>

    <?= $form->field($model, 'pt_website') ?>

    <?php // echo $form->field($model, 'pt_email') ?>

    <?php // echo $form->field($model, 'pt_telp') ?>

    <?php // echo $form->field($model, 'pt_fax') ?>

    <?php // echo $form->field($model, 'pt_pegawai') ?>

    <?php // echo $form->field($model, 'pt_honorer') ?>

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
