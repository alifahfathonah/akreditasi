<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PengadilantinggiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pengadilan Tinggis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengadilan-tinggi-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Pengadilan Tinggi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'pt_id',
            'pt_nama',
            'pt_alamat',
            'pt_pimpinan',
            'pt_website',
            'pt_email:email',
            'pt_telp',
            'pt_fax',
            'pt_pegawai',
            'pt_honorer',
            //'pt_logo',
            [
              'attribute' => 'pt_logo',
              'format' => 'raw',
              'value' => function ($data) {
                if(!is_null($data->pt_logo)){
                  return Html::img(Yii::$app->params['backendUrl'].'img2/'.$data->pt_logo,
                    ['style'=>'width:50px; height:auto;']
                  );
                }else{
                  return NULL;
                }
              },
            ],
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
