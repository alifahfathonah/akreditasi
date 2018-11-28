<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Instansi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="instansi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'mk_kelompok')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mk_status')->dropDownList([ 'y' => 'Y', 'n' => 'N'], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
