<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model common\models\Agenda */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="agenda-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'a_judul')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'a_isi')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'a_location')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'a_tanggal')->widget(DatePicker::classname(), [
        'options' => [
          'placeholder' => 'Masukkan tanggal mulai pelaksanaan...',
          'value' => $model->a_tanggal,
        ],
        'pluginOptions' => [
            'autoclose'=>true,
            'format'=>'dd/mm/yyyy',
        ],

    ]);?>

    <?= $form->field($model, 'a_tanggal_akhir')->widget(DatePicker::classname(), [
        'options' => [
          'placeholder' => 'Masukkan tanggal akhir pelaksanaan...',
          'value' => $model->a_tanggal_akhir,
        ],
        'pluginOptions' => [
            'autoclose'=>true,
            'format'=>'dd/mm/yyyy',
        ],

    ]);?>

    <?= $form->field($model, 'a_status')->dropDownList([ 'sudah_terlaksana' => 'Sudah terlaksana', 'belum_terlaksana' => 'Belum terlaksana', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
