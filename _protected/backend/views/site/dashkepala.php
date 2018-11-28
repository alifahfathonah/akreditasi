<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;

?>
<div class="row">
  <div class="col-lg-12">
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
			<?= $form->field($searchModel, 'ins_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
				ArrayHelper::map($data,'ins_id','ins_nama'),['prompt'=>'Semua Instansi','class' => 'form-control input-sm']
			) ?>
		</div>
		<div class="col-md-2">
			<?= $form->field($searchModel, 'm_tahun',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList([$tahun[0]=>$tahun[0],$tahun[1]=>$tahun[1],$tahun[2]=>$tahun[2],
			$tahun[3]=>$tahun[3],$tahun[4]=>$tahun[4],$tahun[5]=>$tahun[5],$tahun[6]=>$tahun[6],$tahun[7]=>$tahun[7],
			$tahun[8]=>$tahun[8],$tahun[9]=>$tahun[9]], ['class' => 'form-control input-sm']) ?>
		</div>
		<div class="col-md-2">
			<?= Html::submitButton('Search', ['class' => 'btn btn-success btn-sm', 'style'=>'float:left;']) ?>
		</div>
	<?php ActiveForm::end(); ?>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#3498db; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Musrenbang Baru</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $baru; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#f1c40f; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Musrenbang Lanjutan</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $lanjutan; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#e74c3c; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Musrenbang Rehab</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $rehab; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#239B56; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Musrenbang Perluasan</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $perluasan; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#28B463; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Kelompok Ekonomi & Sumber Daya Alam</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $eko; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#2ECC71	; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Kelompok Pengembangan SDM</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $kembang; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#FBA026; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Kelompok Sarana dan Prasarana Wilayah</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $sarana; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
  <div class="col-lg-3">
	  <div class="panel panel-info">
		  <div class="panel-heading" style="background-color:#AF601A; height:140px">
			<div class="row">
			  <div class="col-xs-2">
				<i class="fa fa-file-o fa-3x" style="color:white;"></i>
			  </div>
			  <div class="col-xs-10 text-right" style="color:white;">
				<p class="announcement-text">Kelompok Sosial Budaya</p>
				<p class="announcement-heading" style="font-size:25px;"><?= $sosbud; ?></p>
			  </div>
			</div>
		  </div>
		  <!-- <a href="#">
			<div class="panel-footer announcement-bottom">
			  <div class="row">
				<div class="col-xs-6">
				  Expand
				</div>
				<div class="col-xs-6 text-right">
				  <i class="fa fa-arrow-circle-right"></i>
				</div>
			  </div>
			</div>
		  </a> -->
	  </div>
  </div>
</div><!-- /.row -->