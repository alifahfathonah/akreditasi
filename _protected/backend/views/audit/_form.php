<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Audit */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="audit-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'assesment_id')->textInput() ?>

    <?= $form->field($model, 'tujuan_id')->textInput() ?>

    <?= $form->field($model, 'kriteria_id')->textInput() ?>

    <?= $form->field($model, 'pertanyaan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nilai_a')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nilai_b')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nilai_c')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'bobot')->textInput() ?>

    <?= $form->field($model, 'audit_nilai')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'audit_nilai_angka')->textInput() ?>

    <?= $form->field($model, 'audit_temuan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'audit_keterangan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'audit_penyelesaian')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
