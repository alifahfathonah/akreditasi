<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Assesment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="assesment-form">

    <?php $form = ActiveForm::begin(); ?>

    <!-- <?= $form->field($model, 'assesment_id')->textInput(['maxlength' => true]) ?> -->

    <?= $form->field($model, 'assesment_surat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'assesment_tanggal_mulai')->widget(\yii\jui\DatePicker::class, [
        'dateFormat' => 'yyyy-MM-dd',
        'options' => ['class' => 'form-control'],
    ]) ?>

    <?= $form->field($model, 'assesment_tanggal_selesai')->widget(\yii\jui\DatePicker::class, [
        'dateFormat' => 'yyyy-MM-dd',
        'options' => ['class' => 'form-control'],
    ]) ?>
    
    <?= $form->field($model, 'assesment_ketua')->dropDownList(
        ArrayHelper::map($dataPG,'pegawai_id','pegawai_nama')
    ) ?>

    <?= $form->field($model, 'assesment_anggota')->dropDownList(
        ArrayHelper::map($dataPG,'pegawai_id','pegawai_nama')
    ) ?>

    <?= $form->field($model, 'kelas_id')->dropDownList(
        ArrayHelper::map($dataKLS,'kelas_id','kelas_nama'),
        ['prompt'=>'-pilih kelas-',
              'onchange'=>'
                $.post( "'.Yii::$app->urlManager->createUrl('assesment/lists?id=').'"+$(this).val(), 
                function( data ) {
                  $( "select#assesment-pn_id" ).html( data );
                });
            '
        ]
    ) ?>
    <?= $form->field($model, 'pn_id')->dropDownList(
        ArrayHelper::map($dataPN,'pn_id','pn_nama'),
        ['prompt'=>'-pilih Pengadilan Negeri-']
    ) ?>

    <!-- <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>
 -->
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
