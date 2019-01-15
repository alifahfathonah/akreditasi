<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanNegeri */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengadilan-negeri-form">

    <?php $form = ActiveForm::begin(); ?>

    <!-- <?= $form->field($model, 'pn_id')->textInput(['maxlength' => true]) ?>  -->

    <?= $form->field($model, 'pn_nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'pn_kelas')->dropDownList(
        ArrayHelper::map($data,'kelas_id','kelas_nama'),['prompt' => '-Select kelas-',
            'onchange'=>'
                $.post( "'.Yii::$app->urlManager->createUrl('pengadilannegeri/lists?id=').'"+$(this).val(), function( data ) 
                {
                    $( "select#pengadilannegeri-pn_kelas_type" ).html( data );
                });'
        ]);
     ?>

    <?= $form->field($model, 'pn_kelas_type')->dropDownList(
        ArrayHelper::map($data2,'kelas_id','kelas_nama'),['prompt' => '--']
    )->label(false) ?>

    <?= $form->field($model, 'pn_akreditasi')->textInput(['maxlength' => true]) ?>

    <!-- <?= $form->field($model, 'pn_ketua')->textInput(['maxlength' => true]) ?> -->

    <?= $form->field($model, 'pn_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_website')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_fax')->textInput(['maxlength' => true]) ?>

   <!--  <?= $form->field($model, 'pn_pegawai')->textInput() ?>

    <?= $form->field($model, 'pn_honorer')->textInput() ?> -->

   <!--  <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?> -->

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
