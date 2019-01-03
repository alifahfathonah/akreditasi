<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Pegawai;
use common\models\PengadilanNegeri;
use common\models\Kelas;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AssesmentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Assesments';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assesment-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <!-- <?php // echo $this->render('_search', ['model' => $searchModel]); ?> -->
    
    <p>
        <?= Html::a('Create Assesment', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

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
      <?= $form->field($searchModel, 'pn_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
        ArrayHelper::map($datapn,'pn_id','pn_nama'),['prompt'=>'Semua PN','class' => 'form-control input-sm']
      ) ?>
    </div>
    <div class="col-md-4">
      <?= Html::submitButton('Search', ['class' => 'btn btn-info btn-sm', 'style'=>'float:left;']) ?>
</div>
</div>
    <?php ActiveForm::end(); ?>
<!-- . -->
    

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'assesment_id',
            'assesment_surat',
            'assesment_surat_tanggal',
            [
              'attribute'=>'pn_id',
              'format' => 'text',
              'value' => function($data){
                    $c = new PengadilanNegeri;
                   return $c->getlistPN($data->pn_id);
               },
            ],
            'assesment_jenis',
            // [
            //   'attribute'=>'assesment_ketua',
            //   'format' => 'text',
            //   'value' => function($data){
            //         $c = new Pegawai;
            //        return $c->getlistPeg($data->assesment_ketua);
            //    },
            // ],
            // [
            //   'attribute'=>'assesment_anggota',
            //   'format' => 'text',
            //   'value' => function($data){
            //         $c = new Pegawai;
            //        return $c->getlistPeg($data->assesment_anggota);
            //    },
            // ],
            'assesment_tanggal_mulai',
            'assesment_tanggal_selesai',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete} {audit}',
                'buttons' => [
                    'audit' => function($url,$model,$key){
                        return  Html::a(Html::tag('i','',['class'=>'fa fa-check-square', 'title'=>'Audit']), ['audit','id'=>$model->assesment_id]);
                    },
                ],
              ],
        ],
    ]); ?>
</div>
