<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */
/* @var $form yii\widgets\ActiveForm */
?>

<?php $form = ActiveForm::begin(['id' => 'someform']); ?>
  <?= $form->field($model, 'username')->textInput(['value'=>Yii::$app->user->identity->username, 'readonly'=>true]) ?>
  <?= $form->field($model, 'oldpassword')->passwordInput(['autofocus' => true]) ?>
  <?= $form->field($model, 'newpassword',['template'=>"{beginWrapper}\n{label} <span style='color:red; font-size:12px;'>(Min. 6 karakter)<span>\n{input}\n{error}\n{endWrapper}"])->passwordInput()->hint('a') ?>
  <?= $form->field($model, 'newpassword_repeat')->passwordInput() ?>
  <div class="form-group">
	<?= Html::button('Save', [
		'class' => 'btn btn-primary',
		'onclick' =>'
		  $.post({
			url: "' . Url::to(['biodata/gantipassword']).'",
			data:  {username: $("#gantipwd-username").val(), 
			oldpassword: $("#gantipwd-oldpassword").val(),
			newpassword: $("#gantipwd-newpassword").val(),
			newpassword_repeat: $("#gantipwd-newpassword_repeat").val(),},
			success: function(res){
			  if(res=="success"){
				  location.href = "'.Url::to(Yii::$app->params['backendLogout']).'";
			  }else{
				  $("#myModal").find(".modal-body").html(res);
			  }
			  
			}
		  });
		',
	]) ?>
  </div>
<?php ActiveForm::end(); ?>
