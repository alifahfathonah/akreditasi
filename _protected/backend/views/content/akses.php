<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\UserAccess;

/* @var $this yii\web\View */
/* @var $model common\models\Content */

$this->title = $name;
$this->params['breadcrumbs'][] = ['label' => 'Contents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$i=1;

$js='
$("#input").on("change", function() {
  var value = $(this).val();
  var value2 = '.$id.'
  $.ajax({
		url: "' .Yii::$app->urlManager->createUrl('content/get') . '",
		data: {value: value, value2: value2},
		type: "POST",
		success: function(data) {
			if(data=="success"){
        $("#out").prop("checked","checked");
      }else{
        $("#out").prop("checked","");
      }
		}
	});
});
';
$this->registerJs($js);
?>
<div class="content-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>

    </p>

    <div class="content-form">
      <?php $form = ActiveForm::begin(); ?>
          <?= $form->field($model, 'ug_id')->dropDownList(
              ArrayHelper::map($data,'ug_id','ug_nama'),['prompt'=>'-','id'=>'input']
          ) ?>
          <table class="table">
              <thead>
                  <tr>
                      <th>#</th>
                      <th>Akses</th>
                      <th>Deskripsi</th>
                      <th id='isi'>User Group</th>
                      <th>Option</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td><?= $i ?></td>
                      <td></td>
                      <td>view</td>
                      <td>
                          <?= $form->field($model, 'access')->checkbox(['label'=>'','id'=>'out']); ?>
                      </td>
                  <tr>
              </tbody>
          </table>
          <div class="form-group">
              <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
              <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-success']) ?>
          </div>
      <?php ActiveForm::end(); ?>
    </div>


</div>
