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

    <?= $form->field($model, 'uk_nama')->textInput(['maxlength' => true]) ?>
	
	<?= $form->field($model, 'ins_id')->textInput(['readonly'=>true]) ?>

    <?= $form->field($model, 'uk_email')->textInput() ?>

    <?= $form->field($model, 'uk_alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'uk_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'uk_jk')->dropDownList([ 'l' => 'Laki - laki', 'p' => 'Perempuan', '' => '', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'uk_tgl_lahir')->widget(DatePicker::classname(), [
        'options' => [
          'placeholder' => 'Masukkan tanggal lahir (dd/mm/yyyy)',
          'value' => $model->uk_tgl_lahir,
        ],
        'pluginOptions' => [
            'autoclose'=>true,
            'format'=>'dd/mm/yyyy',
        ],
    ]);?>

    <?= $form->field($model, 'uk_tempat_lahir')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
