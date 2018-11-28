<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;
use yii\helpers\ArrayHelper;
use yii\bootstrap\ActiveForm;
use yii\widgets\Pjax;
use yii\helpers\Url;
use common\models\Instansi;
use common\models\Musrenbangkat;
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'E-Musrenbang';
$this->params['breadcrumbs'][] = $this->title;


?>
<div class="musrenbang-index">

	<h1><?= Html::encode($this->title) ?></h1>

	<?php Pjax::begin(['id' => 'pjax-gridview']) ?>
	<!--search-->
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
			<?= $form->field($searchModel, 'mk_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
				ArrayHelper::map($datakat,'mk_id','mk_kelompok'),['prompt'=>'Semua Kelompok','class' => 'form-control input-sm']
			) ?>
		</div>
		<div class="col-md-2">
			<?= $form->field($searchModel, 'ins_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
				ArrayHelper::map($data,'ins_id','ins_nama'),['prompt'=>'Semua Instansi','class' => 'form-control input-sm']
			) ?>
		</div>
		<div class="col-md-2">
			<?= $form->field($searchModel, 'm_sifat',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
			[ 'baru' => 'Baru', 'lanjutan' => 'Lanjutan', 'rehab' => 'Rehab', 
			'perluasan' => 'Perluasan', ], ['prompt' => 'Semua Sifat','class' => 
			'form-control input-sm']) ?>
		</div>
		<div class="col-md-2">
			<?= $form->field($searchModel, 'm_tahun',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList([$tahun[0]=>$tahun[0],$tahun[1]=>$tahun[1],$tahun[2]=>$tahun[2],
			$tahun[3]=>$tahun[3],$tahun[4]=>$tahun[4],$tahun[5]=>$tahun[5],$tahun[6]=>$tahun[6],$tahun[7]=>$tahun[7],
			$tahun[8]=>$tahun[8],$tahun[9]=>$tahun[9]], ['class' => 'form-control input-sm']) ?>
		</div>
		<div class="col-md-4">
			<?= Html::submitButton('Search', ['class' => 'btn btn-success btn-sm', 'style'=>'float:left;']) ?>
	<?php ActiveForm::end(); ?>
	<!--button excel and create-->
	<?= Html::a('Download Excel',NULL, ['style'=>'margin-left:3px;','class' => 'btn btn-primary btn-sm','onclick'=>'
		var query;
		$.ajax({
			type: "GET",
			url:"'.Url::to([
				'excel',
				Html::getInputName($searchModel,'ins_id')=>Html::getAttributeValue($searchModel,'ins_id'),
				Html::getInputName($searchModel,'mk_id')=>Html::getAttributeValue($searchModel,'mk_id'),
				Html::getInputName($searchModel,'m_kegiatan')=>Html::getAttributeValue($searchModel,'m_kegiatan'),
				Html::getInputName($searchModel,'m_location')=>Html::getAttributeValue($searchModel,'m_location'),
				Html::getInputName($searchModel,'m_sifat')=>Html::getAttributeValue($searchModel,'m_sifat'),
				Html::getInputName($searchModel,'m_volume')=>Html::getAttributeValue($searchModel,'m_volume'),
				Html::getInputName($searchModel,'m_biaya')=>Html::getAttributeValue($searchModel,'m_biaya'),
			]).'",
			data:query,
			success:function(response){
				response = response.replace(/^\s+|\s+$/g,"");
				location.href = response;
			}
		})
	']) ?>
		</div><!--end col-->
	</div><!-- end row -->
	<!--grid view-->
	<div style="overflow:auto;">
	<table class="table table-bordered2" style="margin-top:10px; table-layout:fixed; border: 1px solid #ddd !important; width:100%; word-break: keep-all;">
		<thead>
			<tr>
				<th rowspan="2" style="text-align:center; vertical-align:middle; font-size:11px; width:3%; border: 1px solid #ddd !important;">#</th>
				<!--<th rowspan="2" style="text-align:center; vertical-align:middle; width:13%; font-size:11px;">Kelompok</th>-->
				<th rowspan="2" style="text-align:center; vertical-align:middle; font-size:11px; width:6%; border: 1px solid #ddd !important;">Instansi</th>
				<th rowspan="2" style="text-align:center; vertical-align:middle; font-size:11px; border: 1px solid #ddd !important;">Kegiatan</th>
				<th rowspan="2" style="text-align:center; vertical-align:middle; font-size:11px; border: 1px solid #ddd !important;">Lokasi</th>
				<th colspan="4" style="text-align:center; vertical-align:middle; font-size:11px; width:22%; border: 1px solid #ddd !important;">Sifat</th>
				<th rowspan="2" style="text-align:center; vertical-align:middle; font-size:11px; width:12%; border: 1px solid #ddd !important;">Volume</th>
				<th rowspan="2" style="text-align:center; vertical-align:middle; font-size:11px; width:8%; border: 1px solid #ddd !important;">Biaya (Rp)</th>
			</tr>
			<tr>
				<th style="text-align:center; vertical-align:middle; font-size:10px; border: 1px solid #ddd !important;">Baru</th>
				<th style="text-align:center; vertical-align:middle; font-size:10px; border: 1px solid #ddd !important;">Lanjutan</th>
				<th style="text-align:center; vertical-align:middle; font-size:10px; border: 1px solid #ddd !important;">Rehab</th>
				<th style="text-align:center; vertical-align:middle; font-size:10px; border: 1px solid #ddd !important;">Perluasan</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$p = Yii::$app->request->get('page');
			$no=1;
			if($p=='' || $p=='1'){
				$no=1;  
			}else{
				$no=($p*10)-9;  
			}
		  
			foreach($dataProvider2 as $row){
				$ins = new Instansi();
				$nama = $ins->find()->where(['ins_id'=>$row->ins_id])->one();
				$mkat = new Musrenbangkat();
				$namakat = $mkat->find()->where(['mk_id'=>$row->mk_id])->one();
			?>
			<tr>
				<td style="text-align:center; vertical-align:middle; font-size:10px; border: 1px solid #ddd !important;"><?= $no ?></td>
				<!--<td style="font-size:10px;"><?= $namakat->mk_kelompok ?></td>-->
				<td style="font-size:10px; border: 1px solid #ddd !important;"><?= $nama->ins_nama ?></td>
				<td style="font-size:10px; border: 1px solid #ddd !important;"><?= $row->m_kegiatan ?></td>
				<td style="font-size:10px; border: 1px solid #ddd !important;"><?= $row->m_location ?></td>
				<td style="text-align:center; vertical-align:middle; border: 1px solid #ddd !important;"><?= $row->m_sifat=="baru"?"&#8730":"" ?></td>
				<td style="text-align:center; vertical-align:middle; border: 1px solid #ddd !important;"><?= $row->m_sifat=="lanjutan"?"&#8730":"" ?></td>
				<td style="text-align:center; vertical-align:middle; border: 1px solid #ddd !important;"><?= $row->m_sifat=="rehab"?"&#8730":"" ?></td>
				<td style="text-align:center; vertical-align:middle; border: 1px solid #ddd !important;"><?= $row->m_sifat=="perluasan"?"&#8730":"" ?></td>
				<td style="font-size:10px; border: 1px solid #ddd !important;"><?= $row->m_volume ?></td>
				<td style="font-size:10px; border: 1px solid #ddd !important;"><div style="text-align:right;"><?= number_format($row->m_biaya,'0',',','.') ?></div></td>
			<tr>
			<?php $no++; } ?>
		</tbody>
	</table>
	</div><!--close overflow-->
    <?= LinkPager::widget([
		'pagination' => $pagination,
	]); ?>
	<?php Pjax::end() ?>
 
</div>
