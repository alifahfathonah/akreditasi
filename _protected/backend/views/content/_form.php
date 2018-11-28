<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Content */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="content-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'c_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'c_icon')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'c_page')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'c_pkey')->dropDownList(
        ArrayHelper::map($data,'c_id','c_name'),['prompt'=>'Root']
    ) ?>

    <?= $form->field($model, 'c_urut')->textInput() ?>

    <?= $form->field($model, 'c_status')->dropDownList([ 'y' => 'Y', 'n' => 'N', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
