<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Akreditasi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="akreditasi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pn_id')->textInput() ?>

    <?= $form->field($model, 'akreditasi_sk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'akreditasi_tgl_sk')->textInput() ?>

    <?= $form->field($model, 'akreditasi')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
