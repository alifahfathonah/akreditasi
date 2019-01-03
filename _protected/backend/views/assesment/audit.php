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

$this->title = 'Audit';
//$this->pn = $model->pn_nama;
$this->params['breadcrumbs'][] = $this->title;

$this->registerJs("
    $('#myModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var modal = $(this)
        var title = button.data('title')
        var href = button.attr('href')
        modal.find('.modal-title').html(title)
        modal.find('.modal-body').html('<i class=\"fa fa-spinner fa-spin\"></i>')
        $.post(href)
            .done(function( data ) {
                modal.find('.modal-body').html(data)
            });
        })
");
?>
<div class="audit-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <h3><?php echo $model->pn_nama ?></h3>
    <!-- <p><?php echo 'bobot total = '.$bobotTotal ?></p>
    <p><?php echo 'Nilai = '.$bobotNilai ?></p> -->

<!-- . -->
<div class="row">
  <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['audit','id'=>$_GET['id']],
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
        <?= Html::a('Tambah Pertanyaan', ['tambah','id'=>$_GET['id']], ['class' => 'btn btn-success']) ?>
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
            'nilai_a',
            'nilai_b',
            'nilai_c',
            'bobot',
            'audit_nilai',
            'audit_nilai_angka',
            'audit_temuan',
            'audit_keterangan:ntext',
            'audit_penyelesaian',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            //['class' => 'yii\grid\ActionColumn'],
            [
              'class' => 'yii\grid\ActionColumn',
              'template' => '{nilai}',
              'buttons' => [
                  'nilai' => function($url,$model,$key){
                      return  Html::a(Html::tag('i','',['class'=>'fa fa-edit']),
                        ['nilai','id'=>$model->audit_id,
                        //'pertanyaan_id'=>$model->pertanyaan_id,
                        'assesment_id'=>$model->assesment_id],['data-toggle'=>'modal','data-target'=>'#myModal','data-title'=>'Penilaian',]);
                  },
              ],
            ],
        ],
    ]); ?>

    <?php
      Modal::begin([
        'id' =>'myModal',
        'header' => '<h4 class="modal-title">...</h4>',
      ]);
      Modal::end();
    ?>

</div>
