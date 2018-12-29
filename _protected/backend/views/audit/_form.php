<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Audit */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="audit-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'assesment_id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pertanyaan_id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'audit_nilai')->dropDownList(
            ['a' =>'A', 'b' =>'B', 'c' =>'C'],
            ['prompt' => '--Select--']
    ); ?>

    <?= $form->field($model, 'audit_temuan')->dropDownList(
            ['minor' =>'Minor', 'major' =>'Major', 'observasi' =>'Observasi'],
            ['prompt' => '--Select--']
    ); ?>

    <?= $form->field($model, 'audit_keterangan')->textarea(['rows' => 6]) ?>

    <!-- <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?> -->

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
