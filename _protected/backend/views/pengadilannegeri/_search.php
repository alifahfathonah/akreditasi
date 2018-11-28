<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PengadilannegeriSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengadilan-negeri-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'pn_id') ?>

    <?= $form->field($model, 'pn_nama') ?>

    <?= $form->field($model, 'pn_alamat') ?>

    <?= $form->field($model, 'pn_kelas') ?>

    <?= $form->field($model, 'pn_akreditasi') ?>

    <?php // echo $form->field($model, 'pn_ketua') ?>

    <?php // echo $form->field($model, 'pn_email') ?>

    <?php // echo $form->field($model, 'pn_website') ?>

    <?php // echo $form->field($model, 'pn_telp') ?>

    <?php // echo $form->field($model, 'pn_fax') ?>

    <?php // echo $form->field($model, 'pn_pegawai') ?>

    <?php // echo $form->field($model, 'pn_honorer') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
