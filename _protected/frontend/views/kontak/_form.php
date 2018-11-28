<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\captcha\Captcha;

/* @var $this yii\web\View */
/* @var $model common\models\Kontak */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kontak-form">

    <?php $form = ActiveForm::begin(); ?>

		<?= $form->field($model, 'k_judul')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'k_nama')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'k_email')->textInput() ?>

		<?= $form->field($model, 'k_pesan')->textarea(['rows' => 6]) ?>

		<?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
			'template' => '<div class="row"><div class="col-lg-4">{image}</div><div class="col-lg-6">{input}</div></div>',
		]) ?>

		<div class="form-group">
			<?= Html::submitButton('Submit', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
		</div>

    <?php ActiveForm::end(); ?>

</div>
