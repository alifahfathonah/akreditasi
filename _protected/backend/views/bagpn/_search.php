<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\BagpnSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bag-pn-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

     <!-- <?= $form->field($model, 'bg_id') ?> -->

    <?= $form->field($model, 'pn_id')->dropDownList(
        ArrayHelper::map($data,'pn_id','pn_nama')
    ) ?>

    <!-- <?= $form->field($model, 'bg_nama') ?> -->

    <!-- <?= $form->field($model, 'created_by') ?> -->

    <!-- <?= $form->field($model, 'created_at') ?>  -->

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
