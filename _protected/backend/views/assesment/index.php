<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Pegawai;
use common\models\PengadilanNegeri;
use common\models\Kelas;
use common\models\Jenis;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AssesmentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Assesments';
$this->params['breadcrumbs'][] = $this->title;

$uug = Yii::$app->user->identity->ug_id;
?>
<div class="assesment-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <!-- <?php // echo $this->render('_search', ['model' => $searchModel]); ?> -->
    
    <p><?php
        if($uug=='01' or $uug=='07'){
             echo Html::a('Create Assesment', ['create'], ['class' => 'btn btn-success']) ;
        }
    ?>
    </p>

<?php if($uug=='01'or $uug=='07'){ ?>
<div class="row">
  <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['index'],
        'method' => 'get',
        'fieldConfig' => [
            'template' => "{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
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
<?php }?>
    

    <?php if($uug=='01' or $uug=='07'){
    echo GridView::widget([
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
            //'pn_kelas_type',
            [
              'attribute'=>'pn_kelas_type',
              'format' => 'text',
              'value' => function($data){
                    $c = new Kelas;
                   return $c->getlistKelas($data->pn_kelas_type);
               },
            ],
            [
              'attribute'=>'assesment_jenis',
              'format' => 'text',
              'value' => function($data){
                    $c = new Jenis;
                   return $c->getlistJenis($data->assesment_jenis);
               },
            ],
            [
              'attribute'=>'assesment_ketua',
              'format' => 'text',
              'value' => function($data){
                    $c = new Pegawai;
                   return $c->getlistPeg($data->assesment_ketua);
               },
            ],
            'assesment_tanggal_mulai',
            'assesment_tanggal_selesai',
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{audit} {update} {delete} ',
                'buttons' => [
                    'audit' => function($url,$model,$key){
                        return  
                        //Html::a('Audit', ['audit','id'=>$model->assesment_id], ['class' => 'btn btn-success']);
                         Html::a(Html::tag('i','',['class'=>'fa fa-file', 'title'=>'Audit']), ['audit','id'=>$model->assesment_id]);
                    },
                ],
            ],
        ],
    ]);
  }else{
      echo GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'assesment_id',
            'assesment_surat',
            'assesment_surat_tanggal',
            [
              'attribute'=>'assesment_jenis',
              'format' => 'text',
              'value' => function($data){
                    $c = new Jenis;
                   return $c->getlistJenis($data->assesment_jenis);
               },
            ],
            [
              'attribute'=>'assesment_ketua',
              'format' => 'text',
              'value' => function($data){
                    $c = new Pegawai;
                   return $c->getlistPeg($data->assesment_ketua);
               },
            ],
            'assesment_tanggal_mulai',
            'assesment_tanggal_selesai',
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{audit}  {pasca}',
                'buttons' => [
                    'audit' => function($url,$model,$key){
                        return  
                        //Html::a('View', ['audit','id'=>$model->assesment_id], ['class' => 'btn btn-success']);
                         Html::a(Html::tag('i','pra audit',['class'=>'fa fa-arrow-up', 'title'=>'Audit']), ['audit','id'=>$model->assesment_id]);
                    },
                    'pasca' => function($url,$model,$key){
                        return  
                        //Html::a('View', ['audit','id'=>$model->assesment_id], ['class' => 'btn btn-success']);
                         Html::a(Html::tag('i','pasca audit',['class'=>'fa fa-arrow-down', 'title'=>'Pasca Audit']), ['auditpasca','id'=>$model->assesment_id]);
                    },
                ],
            ],
        ],
    ]);
  } ?>
</div>
