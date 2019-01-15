<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use dosamigos\multiselect\MultiSelect;
use yii\web\JsExpression;
use kartik\select2\Select2;
use common\models\Pegawai;

/* @var $this yii\web\View */
/* @var $model common\models\Assesment */
/* @var $form yii\widgets\ActiveForm */
$data = ArrayHelper::map(Pegawai::find()->asArray()->all(),'pegawai_id', 'pegawai_nama'); 
?>

<div class="assesment-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'assesment_surat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'assesment_surat_tanggal')->widget(\yii\jui\DatePicker::class,
        ['dateFormat' => 'yyyy-MM-dd'])->textInput() ?>

    <?= $form->field($model, 'pn_id')->dropDownList(
        ArrayHelper::map($dataPN,'pn_id','pn_nama')
    ) ?>

    <?= $form->field($model, 'assesment_jenis')->dropDownList(
        ArrayHelper::map($jenis,'jenis_id','jenis_nama')
    ) ?>

    <?= $form->field($model, 'assesment_tanggal_mulai')->widget(\yii\jui\DatePicker::class,
        ['dateFormat' => 'yyyy-MM-dd'])->textInput() ?>

    <?= $form->field($model, 'assesment_tanggal_selesai')->widget(\yii\jui\DatePicker::class,
        ['dateFormat' => 'yyyy-MM-dd'])->textInput() ?>

    <?= $form->field($model, 'assesment_ketua')->dropDownList(
        ArrayHelper::map($dataPG,'pegawai_id','pegawai_nama')
    ) ?>

    <?= $form->field($model, 'assesment_anggota')->widget(Select2::classname(), [
        'data' => $data,
        //'name' => 'id_barang[]',
        'options' => ['placeholder' => '-Select anggota-'],
        'pluginOptions' => [
            'tags' => true,
            'allowClear' => true,
            'multiple' => true
        ],
    ]); ?>

    <!-- ?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?> -->

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
