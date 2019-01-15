<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Pertanyaan;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Tujuan;
use common\models\Kriteria;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AuditSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pasca Audit';
//$this->pn = $model->pn_nama;
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="audit-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <div class="col-md-9">
    <h3><?php echo $model->pn_nama ?></h3>
  </div><div class="col-md-3">
    <p><?php echo 'bobot total = '.$bobotTotal ?></p>
    <p><?php echo 'Nilai = '.$bobotNilai;  echo '&nbsp;';?></p>
  </div>

<!-- . -->
<div class="row">
  <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['audit','id'=>$_GET['id']],
        'method' => 'get',
        'fieldConfig' => [
            'template' => "{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
        ],
    ]); ?>

    <div class="col-md-2">
      <?= $form->field($searchModel, 'tujuan_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
        ArrayHelper::map($datatj,'tujuan_id','tujuan_nama'),['prompt'=>'Semua Tujuan','class' => 'form-control input-sm']
      ) ?>
    </div>
    <div class="col-md-2">
      <?= $form->field($searchModel, 'kriteria_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
        ArrayHelper::map($datakrit,'kriteria_id','kriteria_nama'),['prompt'=>'Semua Kriteria','class' => 'form-control input-sm']
      ) ?>
    </div>
    <div class="col-md-4">
      <?= Html::submitButton('Search', ['class' => 'btn btn-info btn-sm', 'style'=>'float:left;']) ?>
</div>
</div>
    <?php ActiveForm::end(); ?>
<!-- . -->

    <p>
      <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-primary']);
    ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'options' => ['class' => 'grid-view2','style'=>'font-size:11px; overflow:auto; height:400px; max-width:100%; word-wrap:break-word;'],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'audit_id',
            //'assesment_id',
            //'pertanyaan_id',
            [
              'attribute'=>'tujuan_id',
              'format' => 'text',
              'value' => function($data){
                    $c = new Tujuan;
                   return $c->getlistTujuan($data->tujuan_id);
               },
            ],
            [
              'attribute'=>'kriteria_id',
              'format' => 'text',
              'value' => function($data){
                    $c = new Kriteria;
                   return $c->getlistKriteria($data->kriteria_id);
               },
            ],
            'pertanyaan',
            'audit_ket_praaudit',
            'bobot',
            // 'audit_nilai',
            'audit_nilai_angka',
            'audit_temuan',
            'audit_keterangan:ntext',
            'audit_ket_pascaaudit',
            'audit_pencegahan',
            [
              'class' => 'yii\grid\ActionColumn',
              'template' => '{nilaipasca}{fileuser}{printlka}',
              'buttons' => [
                  'nilaipasca' => function($url,$model,$key){
                      return  Html::a(Html::tag('i','nilai pasca',['class'=>'fa fa-edit','style' => 'height: 30px;']),
                        ['nilaipasca','id'=>$model->audit_id,
                        'assesment_id'=>$model->assesment_id]);
                  },
                  'fileuser' => function($url,$model,$key){
                      return  Html::a(Html::tag('i','lihat file',['class'=>'fa fa-edit','style' => 'height: 30px;']),
                        ['fileuser','id'=>$model->audit_id]);
                  },
                  'printlka' => function($url,$model,$key){
                      return  Html::a(Html::tag('i','print',['class'=>'fa fa-print','style' => 'height: 30px;']),
                        ['printlka','id'=>$model->audit_id]);
                  },
              ],
            ],
        ],
    ]); 
    ?>

    <?php
      Modal::begin([
        'id' =>'myModal',
        'header' => '<h4 class="modal-title">...</h4>',
      ]);
      Modal::end();
    ?>

</div>
