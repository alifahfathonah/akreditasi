<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

/* I Wayan Rizky Wijaya */
/* @var $this yii\web\View */
/* @var $model app\models\ItemSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="item-search">
    <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['index'],
        'method' => 'get',
        'fieldConfig' => [
            'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
            //'horizontalCssClasses' => [
            //    'label' => 'col-sm-5',
            //    //'offset' => 'col-sm-offset-4',
            //    'wrapper' => 'col-sm-7',
            //    'error' => '',
            //    'hint' => '',
            //],
        ],
    ]); ?>
		<div class="row">
			<div class="col-md-3">
				<?= $form->field($model, 'ins_id',['horizontalCssClasses'=>['label'=>'col-sm-3','wrapper'=>'col-sm-9']])->dropDownList(
					ArrayHelper::map($data,'ins_id','ins_nama'),['prompt'=>'Semua','class' => 'form-control input-sm']
				) ?>
			</div>
			<div class="col-md-3">
				<?= $form->field($model, 'mk_id',['horizontalCssClasses'=>['label'=>'col-sm-3','wrapper'=>'col-sm-9']])->dropDownList(
					ArrayHelper::map($datakat,'mk_id','mk_kelompok'),['prompt'=>'Semua','class' => 'form-control input-sm']
				) ?>
			</div>
			<div class="col-md-2">
				<?= $form->field($model, 'm_sifat',['horizontalCssClasses'=>['label'=>'col-sm-3','wrapper'=>'col-sm-9']])->dropDownList(
				[ 'baru' => 'Baru', 'lanjutan' => 'Lanjutan', 'rehab' => 'Rehab', 
				'perluasan' => 'Perluasan', ], ['prompt' => 'Semua','class' => 
				'form-control input-sm']) ?>
			</div>
			<div class="col-md-2">
				<?= $form->field($model, 'm_tahun',['horizontalCssClasses'=>['label'=>'col-sm-3','wrapper'=>'col-sm-9']])->dropDownList([$tahun[0]=>$tahun[0],$tahun[1]=>$tahun[1],$tahun[2]=>$tahun[2],
				$tahun[3]=>$tahun[3],$tahun[4]=>$tahun[4],$tahun[5]=>$tahun[5],$tahun[6]=>$tahun[6],$tahun[7]=>$tahun[7],
				$tahun[8]=>$tahun[8],$tahun[9]=>$tahun[9]], ['class' => 'form-control input-sm']) ?>
			</div>
			
			<?= Html::submitButton('Search', ['class' => 'btn btn-primary btn-sm', 'style'=>'float:left;']) ?>
			
		</div>

      <!-- <?= $form->field($model, 'created_at')->dropDownList(
          ArrayHelper::map($data,'created_at','created_at'),['prompt'=>'Semua','class' => 'form-control input-sm']
      ) ?> -->

      <!-- <?= $form->field($model, 'm_kegiatan')->textInput(['class' => 'form-control input-sm']) ?>

      <?= $form->field($model, 'm_location')->textInput(['class' => 'form-control input-sm']) ?> -->

      <!-- <?= $form->field($model, 'm_volume')->textInput(['class' => 'form-control input-sm']) ?>

      <?= $form->field($model, 'm_biaya')->textInput(['class' => 'form-control input-sm']) ?> -->

      <!--<div class="form-group">
        <div class="col-sm-8">
          
        </div>
      </div>-->

    <?php ActiveForm::end(); ?>

</div>
