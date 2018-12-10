<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Bagian */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bagian-form">

    <?php $form = ActiveForm::begin(); ?>

    <!-- <?= $form->field($model, 'bagian_id')->textInput(['maxlength' => true]) ?> -->

    <?= $form->field($model, 'tujuan_id')->dropDownList(
        ArrayHelper::map($data,'tujuan_id','tujuan_nama')
    ) ?>

    <?= $form->field($model, 'bagian_nama')->textInput(['maxlength' => true]) ?>

    <!-- <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?> -->

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
