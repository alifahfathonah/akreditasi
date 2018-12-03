<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanTinggi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengadilan-tinggi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pt_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_alamat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_pimpinan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_website')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_fax')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_pegawai')->textInput() ?>

    <?= $form->field($model, 'pt_honorer')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
