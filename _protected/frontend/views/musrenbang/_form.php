<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Musrenbang */
/* @var $form yii\widgets\ActiveForm */

$js='
$("#number").keyup(function(event) {
  if(event.which >= 37 && event.which <= 40) return;
  $(this).val(function(index, value) {
         return value
        .replace(/\D/g, "")
        .replace(/\B(?=(\d{3})+(?!\d))/g, ".");
   });
});
';
$this->registerJs($js);
?>

<div class="musrenbang-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'm_kegiatan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'm_location')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'm_sifat')->dropDownList([ 'baru' => 'Baru', 'lanjutan' => 'Lanjutan', 'rehab' => 'Rehab', 'perluasan' => 'Perluasan', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'm_volume')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'm_biaya')->textInput(['id'=>'number']) ?>

    <?= $form->field($model, 'm_status')->dropDownList([ 'y' => 'Y', 'n' => 'N', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
