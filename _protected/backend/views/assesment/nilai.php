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
$p = new Pertanyaan();
$pertanyaan = $p->getlistPertanyaan($model->pertanyaan_id);
$a = $p->getnilaiA($model->pertanyaan_id);
$b = $p->getnilaiB($model->pertanyaan_id);
$c = $p->getnilaiC($model->pertanyaan_id);

?>

<?php $form = ActiveForm::begin(['id' => 'someform']); ?>
  <?= $form->field($model, 'audit_id')->textInput(['readonly'=>true])->label(false) ?>

  <?= $form->field($model, 'pertanyaan')->textarea(['value'=>$pertanyaan, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:100px; word-wrap:break-word;']) ?>
  <?= $form->field($model, 'Nilai_A')->textInput(['value'=>$a, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:50px; word-wrap:break-word;']) ?>
  <?= $form->field($model, 'Nilai_B')->textInput(['value'=>$b, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:50px; word-wrap:break-word;']) ?>
  <?= $form->field($model, 'Nilai_C')->textInput(['value'=>$c, 'readonly'=>true, 'style'=>'font-size:11px; overflow:auto; max-width:100%; height:50px; word-wrap:break-word;']) ?>
  
  <?= $form->field($model, 'audit_nilai')->dropDownList(
            ['A' =>'A', 'B' =>'B', 'C' =>'C'],['prompt'=>'-pilih nilai-']
    ); ?>
  <?= $form->field($model, 'audit_temuan')->dropDownList(
            ['minor' =>'MINOR', 'mayor' =>'MAYOR', 'observasi' =>'OBSERVASI'],
            ['prompt'=>'-pilih status temuan-']
    ); ?>
  <?= $form->field($model, 'audit_keterangan')->textarea(['style'=>'font-size:11px; overflow:auto; max-width:100%; height:75px; word-wrap:break-word;']) ?>


  <div class="form-group">
	<?= Html::button('Save', [
		'class' => 'btn btn-primary',
		'onclick' =>'
		  $.post({
			url: "'.Url::to(['assesment/nilai','id'=>$model->audit_id]).'",
			data:  {
				audit_id: $("#audit-audit_id").val(),
				audit_nilai: $("#audit-audit_nilai").val(),
				audit_temuan: $("#audit-audit_temuan").val(),
				audit_keterangan: $("#audit-audit_keterangan").val(),
			},
			success: function(res){
			  if(res=="success"){
				  location.href = "'.Url::to(['audit','id'=>$model->assesment_id]).'";
			  }else{
				  $("#myModal").find(".modal-body").html(res);
			  }
			  
			}
		  });
		',
	]) ?>
  </div>
  
<?php ActiveForm::end(); ?>
