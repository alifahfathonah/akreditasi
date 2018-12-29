<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Tujuan;
use common\models\Kriteria;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
// use yii\widgets\Pjax;
// use yii\helpers\Url;
// use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\Pertanyaan1Search */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pertanyaan PN Kelas 1';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pertanyaan1-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
<!-- . -->
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
      <?= $form->field($searchModel, 'tujuan_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
        ArrayHelper::map($data1,'tujuan_id','tujuan_nama'),['prompt'=>'Semua Tujuan','class' => 'form-control input-sm']
      ) ?>
    </div>
    <div class="col-md-2">
      <?= $form->field($searchModel, 'kriteria_id',['horizontalCssClasses'=>['wrapper'=>'col-sm-12']])->dropDownList(
        ArrayHelper::map($data2,'kriteria_id','kriteria_nama'),['prompt'=>'Semua Kriteria','class' => 'form-control input-sm']
      ) ?>
    </div>
    <div class="col-md-4">
      <?= Html::submitButton('Search', ['class' => 'btn btn-info btn-sm', 'style'=>'float:left;']) ?>
</div>
</div>
    <?php ActiveForm::end(); ?>
<!-- . -->
    <p>
        <?= Html::a('Create Pertanyaan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'options' => ['class' => 'grid-view2','style'=>'font-size:11px; overflow:auto; height:400px; max-width:100%; word-wrap:break-word;'],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'tanya_id',
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
            'pertanyaan:ntext',
            'tanya_ket_a:ntext',
            'tanya_ket_b:ntext',
            'tanya_ket_c:ntext',
            'tanya_bobot',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
