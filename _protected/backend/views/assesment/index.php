<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Pegawai;
use common\models\PengadilanNegeri;
use common\models\PnKelas;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AssesmentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Assesments';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assesment-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Assesment', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'assesment_id',
            'assesment_surat',
            'assesment_tanggal_mulai',
            'assesment_tanggal_selesai',
            [
              'attribute'=>'assesment_ketua',
              'format' => 'text',
              'value' => function($data){
                    $c = new Pegawai;
                   return $c->getlistPeg($data->assesment_ketua);
               },
            ],
            [
              'attribute'=>'assesment_anggota',
              'format' => 'text',
              'value' => function($data){
                    $c = new Pegawai;
                   return $c->getlistPeg($data->assesment_anggota);
               },
            ],
            [
              'attribute'=>'kelas_id',
              'format' => 'text',
              'value' => function($data){
                    $c = new PnKelas;
                   return $c->getlistKelas($data->kelas_id);
               },
            ],
            [
              'attribute'=>'pn_id',
              'format' => 'text',
              'value' => function($data){
                    $c = new PengadilanNegeri;
                   return $c->getlistPN($data->pn_id);
               },
            ],
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
