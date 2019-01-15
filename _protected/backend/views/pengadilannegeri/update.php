<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\PengadilanNegeri */

$this->title = 'Update Pengadilan Negeri: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Negeri', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pn_id, 'url' => ['view', 'id' => $model->pn_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pengadilan-negeri-update">

    <h1><?= Html::encode($this->title) ?></h1>

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


    <?= $form->field($model, 'pn_email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_website')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_telp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'pn_fax')->textInput(['maxlength' => true]) ?>

   <!--  <?= $form->field($model, 'pn_pegawai')->textInput() ?>

    <?= $form->field($model, 'pn_honorer')->textInput() ?> -->


    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

</div>
