<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\tinymce\TinyMce;
use kartik\file\FileInput;
use backend\assets\AppAsset;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model common\models\Berita */
/* @var $form yii\widgets\ActiveForm */

$asset=AppAsset::register($this);
?>

<div class="berita-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'b_nama')->textInput(['maxlength' => true]) ?>

  	<?= $form->field($model, 'b_isi')->widget(TinyMce::className(), [
  		'options' => ['rows' => 6],
  		'clientOptions' => [
  			'height'=>320,
  			'menubar'=> true,
  			'plugins' => [
  				"advlist autolink lists link charmap print preview anchor",
  				"searchreplace visualblocks code fullscreen",
  				"insertdatetime media table contextmenu paste image"
  			],
  			'toolbar' => "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | removeformat code"
  		]
  	]);?>

    <?php if($status=="create" || is_null($model->b_gambar)) {?>
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
                Html::img(Yii::$app->params['backendUrl'].'img2/'.$model->b_gambar,['class' => 'file-preview-image','style'=>'width: auto; height: auto; max-width: 100%; max-height: 100%; margin-top: 0px;']),
            ],
            'initialPreviewConfig' => [
                ['caption'=>$model->b_gambar]
            ],
            'initialCaption'=>$model->b_gambar,
        ],
      ]);   ?>
    <?php } ?>

    <?= $form->field($model, 'b_tgl')->widget(DatePicker::classname(), [
        'options' => [
          'placeholder' => 'Masukkan tanggal terbit (dd/mm/yyyy)',
          'value' => $model->b_tgl,
        ],
        'pluginOptions' => [
            'autoclose'=>true,
            'format'=>'dd/mm/yyyy',
        ],

    ]);?>

    <?= $form->field($model, 'b_status')->dropDownList([ 'y' => 'Y', 'n' => 'N', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
