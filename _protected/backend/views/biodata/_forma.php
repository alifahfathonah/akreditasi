<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kaling-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ua_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ua_email')->textInput() ?>

    <?= $form->field($model, 'ua_alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'ua_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ua_jk')->dropDownList([ 'l' => 'Laki - laki', 'p' => 'Perempuan', '' => '', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'ua_tgl_lahir')->widget(DatePicker::classname(), [
        'options' => [
          'placeholder' => 'Masukkan tanggal lahir (dd/mm/yyyy)',
          'value' => $model->ua_tgl_lahir,
        ],
        'pluginOptions' => [
            'autoclose'=>true,
            'format'=>'dd/mm/yyyy',
        ],
    ]);?>

    <?= $form->field($model, 'ua_tempat_lahir')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
