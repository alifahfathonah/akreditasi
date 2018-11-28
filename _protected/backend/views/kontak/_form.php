<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\tinymce\TinyMce;

/* @var $this yii\web\View */
/* @var $model common\models\Kontak */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kontak-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'k_id')->textInput(['maxlength' => true,'readonly'=>true]) ?>

    <?= $form->field($model, 'k_judul')->textInput(['maxlength' => true,'readonly'=>true]) ?>

    <?= $form->field($model, 'k_nama')->textInput(['maxlength' => true,'readonly'=>true]) ?>

    <?= $form->field($model, 'k_email')->textInput(['maxlength' => true,'readonly'=>true]) ?>

    <?= $form->field($model, 'k_pesan')->textarea(['rows' => 6,'readonly'=>true]) ?>

    <?= $form->field($model, 'k_jawab')->widget(TinyMce::className(), [
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

    <?= $form->field($model, 'created_at')->textInput(['readonly'=>true]) ?>

	<?= $form->field($model, 'updated_at')->textInput(['readonly'=>true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
