<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */
/* @var $form yii\widgets\ActiveForm */
?>

<?php $form = ActiveForm::begin(); ?>
  <?= $form->field($model, 'username')->textInput() ?>
  <div class="form-group">
      <?= Html::submitButton('Save', ['class' => 'btn btn-primary']) ?>
  </div>
<?php ActiveForm::end(); ?>
