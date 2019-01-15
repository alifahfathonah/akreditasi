<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use yii\bootstrap\Modal;
use common\models\Pertanyaan;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */
/* @var $form yii\widgets\ActiveForm */

?>
<div class="assesment-nilaiuser">
<?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['nilaiuser','id'=>$_GET['id']],
        'method' => 'post',
        'options' => ['enctype' => 'multipart/form-data'],
    ]); ?>

  <?= $form->field($model, 'audit_id')->textInput(['readonly'=>true])->label(false) ?>

  <?= $form->field($model, 'pertanyaan')->textarea(['value'=>$model->pertanyaan, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:100px; word-wrap:break-word;']) ?>
  <!-- <?= $form->field($model, 'Nilai_A')->textInput(['value'=>$model->nilai_a, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:50px; word-wrap:break-word;']) ?>
  <?= $form->field($model, 'Nilai_B')->textInput(['value'=>$model->nilai_b, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:50px; word-wrap:break-word;']) ?>
  <?= $form->field($model, 'Nilai_C')->textInput(['value'=>$model->nilai_c, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:50px; word-wrap:break-word;']) ?> -->
  <?= $form->field($model, 'bobot')->textInput(['value'=>$model->bobot, 'readonly'=>true]) ?>
  
  <?= $form->field($model, 'audit_ket_praaudit')->textarea(['style'=>'font-size:11px; overflow:auto; max-width:100%; height:75px; word-wrap:break-word;']) ?>
  <?= $form->field($model, 'audit_upload[]')->fileInput(['multiple' => true])->label('Upload') ?>


  <div class="form-group" align="center">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
        <?= Html::a('Kembali', ['audit','id'=>$model->assesment_id], 
        ['class' => 'btn btn-info']) ?>
  </div>
  
<?php ActiveForm::end(); ?>
</div>
