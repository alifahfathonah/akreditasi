<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

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

    <?php if($uug=="01"){ ?>
      <?= $form->field($model, 'ins_id')->dropDownList(
          ArrayHelper::map($data,'ins_id','ins_nama'),['prompt'=>'Pilih Instansi']
      ) ?>
	  <?= $form->field($model, 'm_prioritas')->dropDownList(
          ['1'=>'Priotitas 1','2'=>'Priotitas 2','3'=>'Priotitas 3','4'=>'Priotitas 4',
		  '5'=>'Priotitas 5','6'=>'Priotitas 6','7'=>'Priotitas 7','8'=>'Priotitas 8',
		  '9'=>'Priotitas 9','10'=>'Priotitas 10','11'=>'Priotitas 11','12'=>'Priotitas 12',
		  '13'=>'Priotitas 13','14'=>'Priotitas 14','15'=>'Priotitas 15','16'=>'Priotitas 16',
		  '17'=>'Priotitas 17','18'=>'Priotitas 18','19'=>'Priotitas 19','20'=>'Priotitas 20'],['prompt' => 'Pilih Prioritas']
      ) ?>
    <?php } ?>
	
	<?= $form->field($model, 'mk_id')->dropDownList(
		ArrayHelper::map($datakat,'mk_id','mk_kelompok'),['prompt'=>'Pilih Kelompok']
	) ?>

    <?= $form->field($model, 'm_location')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'm_sifat')->dropDownList([ 'baru' => 'Baru', 'lanjutan' => 'Lanjutan', 'rehab' => 'Rehab', 'perluasan' => 'Perluasan', ], ['prompt' => 'Pilih Sifat']) ?>

    <?= $form->field($model, 'm_volume')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'm_biaya')->textInput(['id'=>'number']) ?>

    <?= $form->field($model, 'm_status')->dropDownList([ 'y' => 'Aktif', 'n' => 'Tidak Aktif', '' => '', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
