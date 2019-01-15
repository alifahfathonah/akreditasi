<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
use backend\assets\AppAsset;
use dosamigos\tinymce\TinyMce;
use common\models\Pegawai;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanTinggi */
/* @var $form yii\widgets\ActiveForm */
//$p = new Pegawai();
$peg = Pegawai::find()
    ->where(['pegawai_status' => 'Pegawai Tetap'])
    ->count();

$honorer = Pegawai::find()
    ->where(['pegawai_status' => 'Pegawai Honorer'])
    ->count();
?>

<div class="pengadilan-tinggi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pt_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_alamat')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_pimpinan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_website')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pt_fax')->textInput(['maxlength' => true]) ?>

    <!-- <?= $form->field($model, 'pt_pegawai')->textInput(['readonly' => true, 'value' => $peg]) ?>

    <?= $form->field($model, 'pt_honorer')->textInput(['readonly' => true, 'value' => $honorer]) ?> -->

    <?php if($status=="create" || is_null($model->pt_logo)) {?>
      <?= $form->field($model, 'image')->widget(FileInput::classname(), [
        'options' => ['accept' => 'image/*'],
        'pluginOptions'=>[
            'previewFileType' => 'image',
            'allowedFileExtensions'=>['jpg','png','jpeg'],
            'showUpload' => false,
            'showRemove' => false,
        ],
      ]);   ?>
    <?php }else{ ?>
      <?= $form->field($model, 'image')->widget(FileInput::classname(), [
        'options' => ['accept' => 'image/*'],
        'pluginOptions'=>[
            'initialPreviewShowDelete' => false,
            'initialpreviewFileType' => 'image',
            'allowedFileExtensions'=>['jpg','png','jpeg'],
            'showUpload' => false,
            'showRemove' => false,
            'initialPreview'=> [
                Html::img(Yii::$app->params['backendUrl'].'img2/'.$model->pt_logo,['class' => 'file-preview-image','style'=>'width: auto; height: auto; max-width: 100%; max-height: 100%; margin-top: 0px;']),
            ],
            'initialPreviewConfig' => [
                ['caption'=>$model->pt_logo]
            ],
            'initialCaption'=>$model->pt_logo,
        ],
      ]);   ?>
    <?php } ?>


    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
