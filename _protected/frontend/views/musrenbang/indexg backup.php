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
      <?php Pjax::begin(['id' => 'pjax-gridview']) ?>
      <?= Html::a('Download Excel',NULL, ['class' => 'btn btn-primary','onclick'=>'
          var query;
          $.ajax({
            type: "GET",
            url:"'.Url::to([
              'excel',
              Html::getInputName($searchModel,'ins_id')=>Html::getAttributeValue($searchModel,'ins_id'),
              Html::getInputName($searchModel,'m_kegiatan')=>Html::getAttributeValue($searchModel,'m_kegiatan'),
              Html::getInputName($searchModel,'m_location')=>Html::getAttributeValue($searchModel,'m_location'),
              Html::getInputName($searchModel,'m_sifat')=>Html::getAttributeValue($searchModel,'m_sifat'),
              Html::getInputName($searchModel,'m_volume')=>Html::getAttributeValue($searchModel,'m_volume'),
              Html::getInputName($searchModel,'m_biaya')=>Html::getAttributeValue($searchModel,'m_biaya'),
            ]).'",
            data:query,
            success:function(response){
              response = response.replace(/^\s+|\s+$/g,"");
              location.href = response;
            }
          })
      ']) ?>

        <!-- <?php $form = ActiveForm::begin(); ?>
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
        <?php ActiveForm::end(); ?> -->


        <?= GridView::widget([
            'dataProvider' => $dataProvider2,
            'filterModel' => $searchModel,
            'columns' => [
                [
                  'class' => 'yii\grid\SerialColumn',
                  'headerOptions' => [
                      'rowspan' => '2',
                      //'style' => 'display: none;',
                  ],
                ],

                //'m_id',
                [
                  'headerOptions' => [
                      'rowspan' => '2',
                      //'style' => 'display: none;',
                  ],
                  'attribute'=>'ins_id',
                  'format' => 'text',
                  'filter' => ArrayHelper::map($data,'ins_id','ins_nama'),
                  'value' => function($data){
                        $ins = new Instansi();
                        $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                        return $nama->ins_nama;
                  },
                ],
                [
                  'attribute'=>'m_kegiatan',
                  'headerOptions' => [
                      'rowspan' => '2',
                      //'style' => 'display: none;',
                  ],
                ],
                [
                  'attribute'=>'m_location',
                  'headerOptions' => [
                      'rowspan' => '2',
                      //'style' => 'display: none;',
                  ],
                ],
                [
                  'headerOptions' => [
                      //'rowspan' => '2',
                      'colspan' => '3',
                      //'style' => 'display: none;',
                  ],
                  'attribute'=>'m_sifat',
                  'format' => 'text',
                  'filter' => /*Html::activeCheckboxList($searchModel,'m_sifat',),*/
                  Array('baru' => 'Baru', 'lanjutan' => 'Lanjutan', 'rehab' => 'Rehab', 'perluasan' => 'Perluasan'),
                  'label' => 'Baru',
                ],
                [
                  'attribute'=>'m_volume',
                  'headerOptions' => [
                      'rowspan' => '2',
                      //'style' => 'display: none;',
                  ],
                ],
                [
                  'headerOptions' => [
                      'rowspan' => '2',
                      //'style' => 'display: none;',
                  ],
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


</div>
