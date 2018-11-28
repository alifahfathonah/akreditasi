<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Instansi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="instansi-form">

    <?php $form = ActiveForm::begin(); ?>

    <!-- <?= $form->field($model, 'ins_id')->textInput(['maxlength' => true]) ?> -->

    <?= $form->field($model, 'ins_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ins_alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'ins_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ins_email')->textInput() ?>

    <?= $form->field($model, 'ins_status')->dropDownList([ 'y' => 'Y', 'n' => 'N', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
