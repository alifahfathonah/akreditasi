<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kaling-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'uk_id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'uk_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'uk_alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'uk_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'uk_jk')->dropDownList([ 'l' => 'L', 'p' => 'P', '' => '', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'uk_tgl_lahir')->textInput() ?>

    <?= $form->field($model, 'uk_tempat_lahir')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
