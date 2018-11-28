<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use yii\widgets\Pjax;
use yii\helpers\Url;
use common\models\Instansi;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'E-Musrenbang';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="musrenbang-index">

    <h1><?= Html::encode($this->title) ?></h1>



    <?php if(Yii::$app->user->isGuest){
    ?>
        <?php $form = ActiveForm::begin(); ?>
            <?= $form->field($model, 'ins_id')->dropDownList(
                ArrayHelper::map($data,'ins_id','ins_nama'),
                [
                  'prompt'=>'Semua',
                  'onchange'=>'
                    $.pjax.reload({
                        url: "'.Url::to(['index']).'?MusrenbangSearch[ins_id]="+$(this).val(),
                        container: "#pjax-gridview",
                        timeout: 1000,
                    });',
                ]
            ) ?>
        <?php ActiveForm::end(); ?>

        <?php Pjax::begin(['id' => 'pjax-gridview']) ?>
        <?= GridView::widget([
            'dataProvider' => $dataProvider2,
            //'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                //'m_id',
                [
                  'attribute'=>'ins_id',
                  'format' => 'text',
                  'value' => function($data){
                        $ins = new Instansi();
                        $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                        return $nama->ins_nama;
                  },
                ],
                'm_kegiatan',
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
                //'created_by',
                //'created_at',
                //'updated_by',
                //'updated_at',
                //'m_status',
            ],
        ]); ?>
        <?php Pjax::end() ?>
    <?php
  }else{
  ?>
          <p>
              <?= Html::a('Create Musrenbang', ['create'], ['class' => 'btn btn-primary']) ?>
          </p>
          <?= Tabs::widget([
              'items' => [
                  [
                      'label' => 'Daftar Musrenbang',
                      'content' => GridView::widget([
                        'dataProvider' => $dataProvider,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],

                            //'m_id',
                            [
                              'attribute'=>'ins_id',
                              'format' => 'text',
                              'value' => function($data){
                                    $ins = new Instansi();
                                    $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                                    return $nama->ins_nama;
                              },
                            ],
                            'm_kegiatan',
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
                            //'created_by',
                            //'created_at',
                            //'updated_by',
                            //'updated_at',
                            //'m_status',

                            [
                              'class' => 'yii\grid\ActionColumn',
                              'template' => '{update} {delete}'
                            ],
                        ],
                      ]),
                      'active' => true,
                  ],
                  [
                      'label' => 'Daftar Musrenbang Per-Instansi',
                      'content' => GridView::widget([
                        'dataProvider' => $dataProvider3,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],

                            //'m_id',
                            [
                              'attribute'=>'ins_id',
                              'format' => 'text',
                              'value' => function($data){
                                    $ins = new Instansi();
                                    $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                                    return $nama->ins_nama;
                              },
                            ],
                            'm_kegiatan',
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
                            //'created_by',
                            //'created_at',
                            //'updated_by',
                            //'updated_at',
                            //'m_status',
                        ],
                      ]),
                  ],
                  [
                      'label' => 'Daftar Semua Musrenbang',
                      'content' => GridView::widget([
                        'dataProvider' => $dataProvider2,
                        //'filterModel' => $searchModel,
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],

                            //'m_id',
                            [
                              'attribute'=>'ins_id',
                              'format' => 'text',
                              'value' => function($data){
                                    $ins = new Instansi();
                                    $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                                    return $nama->ins_nama;
                              },
                            ],
                            'm_kegiatan',
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
                            //'created_by',
                            //'created_at',
                            //'updated_by',
                            //'updated_at',
                            //'m_status',
                        ],
                      ]),
                  ],
              ],
          ]); ?>
  <?php
  } ?>


</div>
