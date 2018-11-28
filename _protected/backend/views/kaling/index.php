<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;
use yii\bootstrap\Modal;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KalingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kep. Instansi';
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
<div class="kaling-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Kep. Instansi', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>



    <?= Tabs::widget([
        'items' => [
            [
                'label' => 'Daftar Kep. Instansi Memiliki Login',
                'content' => GridView::widget([
                  'dataProvider' => $dataProvider1,
                  'filterModel' => $searchModel,
                  'columns' => [
                      ['class' => 'yii\grid\SerialColumn'],

                      'uk_id',
                      'uk_nama',
                      'ins_id',
                      'uk_alamat:ntext',
                      'uk_telp',
                      'uk_jk',
                      //'uk_tgl_lahir',
                      //'uk_tempat_lahir',
                      //'created_by',
                      //'created_at',
                      //'updated_by',
                      //'updated_at',

                      ['class' => 'yii\grid\ActionColumn'],
                  ],
                ]),
                'active' => true,
            ],
            [
                'label' => 'Daftar Kep. Instansi Belum Memiliki Login',
                'content' => GridView::widget([
                  'dataProvider' => $dataProvider2,
                  'filterModel' => $searchModel,
                  'columns' => [
                      ['class' => 'yii\grid\SerialColumn'],

                      'uk_id',
                      'uk_nama',
                      'ins_id',
                      'uk_email:email',
                      'uk_alamat:ntext',
                      'uk_telp',
                      'uk_jk',
                      //'uk_tgl_lahir',
                      //'uk_tempat_lahir',
                      //'created_by',
                      //'created_at',
                      //'updated_by',
                      //'updated_at',

                      [
                        'class' => 'yii\grid\ActionColumn',
                        'template' => '{view} {update} {delete} {login}',
                        'buttons' => [
                            'login' => function($url,$model,$key){
                                return  Html::a(Html::tag('i','',['class'=>'fa fa-key','title'=>'Generate Login']),['generatelogin','email'=>$model->uk_email,'pkey'=>$model->uk_id,'tgl'=>$model->uk_tgl_lahir],['data-toggle'=>'modal','data-target'=>'#myModal','data-title'=>'Generate Login',]);
                            },
                        ],
                      ],
                  ],
                ]),
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
