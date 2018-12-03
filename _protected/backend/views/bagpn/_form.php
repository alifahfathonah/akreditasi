<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\BagPn */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bag-pn-form">

    <?php $form = ActiveForm::begin(); ?>

    <!-- <?= $form->field($model, 'bg_id')->textInput(['maxlength' => true]) ?> -->

    <!-- <?= $form->field($model, 'pn_id')->dropDownList(
        ArrayHelper::map($data,'pn_id','pn_nama')
    ) ?> -->

    <?= $form->field($model, 'bg_nama')->textInput(['maxlength' => true]) ?>

<<<<<<< HEAD
<!-- <<<<<<< HEAD
======= -->
=======
<<<<<<< HEAD
=======
>>>>>>> e1d34b4ff3d9308ca261999547369f19d0b2c3ee
    <!-- <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?> -->

<<<<<<< HEAD
<!-- >>>>>>> refs/remotes/origin/master -->
=======
>>>>>>> refs/remotes/origin/master
>>>>>>> e1d34b4ff3d9308ca261999547369f19d0b2c3ee
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
