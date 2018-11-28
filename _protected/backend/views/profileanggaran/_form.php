<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\tinymce\TinyMce;

/* @var $this yii\web\View */
/* @var $model common\models\Profile */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="profile-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pa_isi')->widget(TinyMce::className(), [
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

    <?= $form->field($model, 'pa_status')->dropDownList([ 'y' => 'Y', 'n' => 'N', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
