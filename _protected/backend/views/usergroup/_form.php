<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\UserGroup */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-group-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ug_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ug_table_relation')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ug_pkey_relation')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
