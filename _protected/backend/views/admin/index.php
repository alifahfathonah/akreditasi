<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AdminSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Admins';
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
<div class="admin-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Admin', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= Tabs::widget([
        'items' => [
            [
                'label' => 'Daftar Admin Memiliki Login',
                'content' => GridView::widget([
                  'dataProvider' => $dataProvider1,
                  'filterModel' => $searchModel,
                  'columns' => [
                      ['class' => 'yii\grid\SerialColumn'],

                      'ua_id',
                      'ua_nama',
                      'ua_email:email',
                      'ua_alamat:ntext',
                      'ua_telp',
                      'ua_jk',
                      //'ua_tgl_lahir',
                      //'ua_tempat_lahir',
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
                'label' => 'Daftar Admin Belum Memiliki Login',
                'content' => GridView::widget([
                  'dataProvider' => $dataProvider2,
                  'filterModel' => $searchModel,
                  'columns' => [
                      ['class' => 'yii\grid\SerialColumn'],

                      'ua_id',
                      'ua_nama',
                      'ua_email:email',
                      'ua_alamat:ntext',
                      'ua_telp',
                      'ua_jk',
                      //'ua_tgl_lahir',
                      //'ua_tempat_lahir',
                      //'created_by',
                      //'created_at',
                      //'updated_by',
                      //'updated_at',

                      [
                        'class' => 'yii\grid\ActionColumn',
                        'template' => '{view} {update} {delete} {login}',
                        'buttons' => [
                            'login' => function($url,$model,$key){
                                return  Html::a(Html::tag('i','',['class'=>'fa fa-key','title'=>'Generate Login']), ['generatelogin','email'=>$model->ua_email,'pkey'=>$model->ua_id,'tgl'=>$model->ua_tgl_lahir],['data-toggle'=>'modal','data-target'=>'#myModal','data-title'=>'Generate Login',]);
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
