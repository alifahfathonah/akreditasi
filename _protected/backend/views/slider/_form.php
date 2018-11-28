<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
use backend\assets\AppAsset;

/* @var $this yii\web\View */
/* @var $model common\models\Slider */
/* @var $form yii\widgets\ActiveForm */
$asset=AppAsset::register($this);
?>

<div class="slider-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'image')->widget(FileInput::classname(), [
      'options' => ['accept' => 'image/*'],
      'pluginOptions'=>[
          'previewFileType' => 'image',
          'allowedFileExtensions'=>['jpg','png','jpeg'],
          'showUpload' => false,
          'showRemove' => false,
          'showCancel' => false,
      ],
    ]);?>
	
	<?= $form->field($model, 's_label')->textInput(['maxlength'=>true]) ?>

    <?= $form->field($model, 's_status')->dropDownList([ 'y' => 'Y', 'n' => 'N', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
