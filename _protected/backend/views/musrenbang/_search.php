<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

/* I Wayan Rizky Wijaya */
/* @var $this yii\web\View */
/* @var $model app\models\ItemSearch */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="row">

    <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['index'],
        'method' => 'get',
        'fieldConfig' => [
            'template' => "{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
            //'horizontalCssClasses' => [
            //    'label' => 'col-sm-3',
                //'offset' => 'col-sm-offset-4',
            //    'wrapper' => 'col-sm-9',
            //    'error' => '',
            //    'hint' => '',
            //],
        ],
    ]); ?>
		
			<div class="col-md-2">
				<?= $form->field($model, 'ins_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
					ArrayHelper::map($data,'ins_id','ins_nama'),['prompt'=>'Semua Instansi','class' => 'form-control input-sm']
				) ?>
			</div>
			<div class="col-md-2">
				<?= $form->field($model, 'mk_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
					ArrayHelper::map($datakat,'mk_id','mk_kelompok'),['prompt'=>'Semua Kelompok','class' => 'form-control input-sm']
				) ?>
			</div>
			<div class="col-md-2">
				<?= $form->field($model, 'm_sifat',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
				[ 'baru' => 'Baru', 'lanjutan' => 'Lanjutan', 'rehab' => 'Rehab', 
				'perluasan' => 'Perluasan', ], ['prompt' => 'Semua Sifat','class' => 
				'form-control input-sm']) ?>
			</div>
			<div class="col-md-2">
				<?= $form->field($model, 'm_tahun',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList([$tahun[0]=>$tahun[0],$tahun[1]=>$tahun[1],$tahun[2]=>$tahun[2],
				$tahun[3]=>$tahun[3],$tahun[4]=>$tahun[4],$tahun[5]=>$tahun[5],$tahun[6]=>$tahun[6],$tahun[7]=>$tahun[7],
				$tahun[8]=>$tahun[8],$tahun[9]=>$tahun[9]], ['class' => 'form-control input-sm']) ?>
			</div>
			<div class="col-md-4">
				<?= Html::submitButton('Search', ['class' => 'btn btn-success btn-sm', 'style'=>'float:left;']) ?>

    <?php ActiveForm::end(); ?>


