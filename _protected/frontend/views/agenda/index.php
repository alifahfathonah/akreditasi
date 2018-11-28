<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\AgendaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kegiatan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agenda-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php //echo $this->render('_search', ['model' => $searchModel]); ?>

    <!-- <p>
        <?= Html::a('Create Agenda', ['create'], ['class' => 'btn btn-success']) ?>
    </p> -->
	
	<?= Tabs::widget([
		'items' => [
			[
				'label' => 'Kegiatan Belum Terlaksana',
				'content' => 
					GridView::widget([
						'dataProvider' => $dataProvider,
						'filterModel' => $searchModel,
						'options' => ['class' => 'grid-view', 'style'=>'font-size:11px;'],
						'columns' => [
							['class' => 'yii\grid\SerialColumn'],

							//'a_id',
							'a_judul',
							'a_isi:ntext',
							'a_location',
							[
							  'attribute'=>'a_tanggal',
							  'value'=>function($model){
								  if($model->created_at!=''){
									return date('d/m/Y',$model->a_tanggal);
								  }
							  },
							],
							[
							  'attribute'=>'a_tanggal_akhir',
							  'value'=>function($model){
								  if($model->created_at!=''){
									return date('d/m/Y',$model->a_tanggal_akhir);
								  }
							  },
							],
							//'created_by',
							//'created_at',
							//'updated_by',
							//'updated_at',
							//'a_status',

							// [
							//   'class' => 'yii\grid\ActionColumn',
							//   'template' => '',
							// ],
						],
					])
				,
				'active' => true,
			],
			[
				'label' => 'Kegiatan Sudah Terlaksana',
				'content' =>
					GridView::widget([
						'dataProvider' => $dataProvider2,
						'filterModel' => $searchModel,
						'options' => ['class' => 'grid-view', 'style'=>'font-size:11px;'],
						'columns' => [
							['class' => 'yii\grid\SerialColumn'],

							//'a_id',
							'a_judul',
							'a_isi:ntext',
							'a_location',
							[
							  'attribute'=>'a_tanggal',
							  'value'=>function($model){
								  if($model->created_at!=''){
									return date('d/m/Y',$model->a_tanggal);
								  }
							  },
							],
							[
							  'attribute'=>'a_tanggal_akhir',
							  'value'=>function($model){
								  if($model->created_at!=''){
									return date('d/m/Y',$model->a_tanggal_akhir);
								  }
							  },
							],
							//'created_by',
							//'created_at',
							//'updated_by',
							//'updated_at',
							//'a_status',

							// [
							//   'class' => 'yii\grid\ActionColumn',
							//   'template' => '',
							// ],
						],
					])
				,
			],
		],
	]); ?>
</div>
