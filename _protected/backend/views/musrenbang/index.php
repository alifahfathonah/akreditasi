<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Instansi;
use common\models\Musrenbangkat;
use yii\widgets\Pjax;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
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
	<?php
		if($uug=='01'){
	?>
			<?= Html::a('Create', ['create'], ['class' => 'btn btn-primary btn-sm','style'=>'margin-left:3px;']) ?>
	<?php
		}
	?>
	
	<?= Html::a('Excel',NULL, ['style'=>'margin-left:3px;','class' => 'btn btn-warning btn-sm','onclick'=>'
		var query;
		$.ajax({
			type: "GET",
			url:"'.Url::to([
			  'excel',
			  Html::getInputName($searchModel,'ins_id')=>Html::getAttributeValue($searchModel,'ins_id'),
			  Html::getInputName($searchModel,'mk_id')=>Html::getAttributeValue($searchModel,'mk_id'),
			  Html::getInputName($searchModel,'m_sifat')=>Html::getAttributeValue($searchModel,'m_sifat'),
			  Html::getInputName($searchModel,'m_tahun')=>Html::getAttributeValue($searchModel,'m_tahun'),
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
	<div style="">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
		'layout' => '{summary}{items}',
		'options' => ['class' => 'grid-view2','style'=>'font-size:11px; overflow:auto; height:400px; max-width:100%; word-wrap:break-word;'],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
			
			[
              'class' => 'yii\grid\ActionColumn',
              'template' => '{view} {update} {delete} ',
              'buttons' => [
                  'update' => function($url,$model,$key) use ($uug,$uid){
                      return $uug=='01' ?
                      Html::a(Html::tag('i','',['class'=>'fa fa-pencil', 'title'=>'Update']), ['update','id'=>$model->m_id])
                      :$model->created_by==$uid ?
                      Html::a(Html::tag('i','',['class'=>'fa fa-pencil', 'title'=>'Update']), ['update','id'=>$model->m_id])
                      :'';
                  },
                  'delete' => function($url,$model,$key) use ($uug,$uid){
                      return $uug=='01' ?
                      Html::a(Html::tag('i','',['class'=>'fa fa-trash', 'title'=>'Delete']), ['delete','id'=>$model->m_id],['data' => [
                          'confirm' => 'Are you sure you want to delete this item?',
                          'method' => 'post',
                      ],])
                      :$model->created_by==$uid ?
                      Html::a(Html::tag('i','',['class'=>'fa fa-trash', 'title'=>'Delete']), ['delete','id'=>$model->m_id],['data' => [
                          'confirm' => 'Are you sure you want to delete this item?',
                          'method' => 'post',
                      ],])
                      :'';
                  },
              ],
            ],
            //'m_id',
			//[
            //  'attribute'=>'mk_id',
            //  'format' => 'text',
            //  'value' => function($data){
            //        $mkat = new Musrenbangkat();
            //        $namakat = $mkat->find()->where(['mk_id'=>$data->mk_id])->one();
            //        return $namakat->mk_kelompok;
            //  },
            //],
            [
              'attribute'=>'ins_id',
              'format' => 'text',
              'value' => function($data){
                    $ins = new Instansi();
                    $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                    return $nama->ins_nama;
              },
			  'contentOptions' => ['style'=>'width:7%;'],
            ],
			[
				'attribute' => 'm_kegiatan',
				'contentOptions' => ['style'=>'width:20%;'],
			],
            //'m_kegiatan',
            'm_location',
            'm_sifat',
            'm_volume',
            [
              'attribute'=>'m_biaya',
              'format' => 'text',
              'value' => function($data){
                    return 'Rp. '.number_format($data->m_biaya,'0',',','.');
              },
            ],
            //'m_tahun',
			'm_prioritas',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',
            //'m_status',

            
        ],
    ]); ?>
	</div>
	<?= LinkPager::widget([
		'pagination' => $dataProvider->pagination,
	]); ?>
	<?php Pjax::end() ?>
	
</div><!-- close index -->
