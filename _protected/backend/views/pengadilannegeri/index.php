<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Kelas;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PengadilannegeriSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pengadilan Negeri';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengadilan-negeri-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Pengadilan Negeri', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'pn_id',
            'pn_nama',
            'pn_alamat:ntext',
            // [
            //   'attribute'=>'pn_kelas',
            //   'format' => 'text',
            //   'value' => function($data){
            //         $c = new Kelas;
            //        return $c->getlistKelas($data->pn_kelas);
            //    },
            // ],
            [
              'attribute'=>'pn_kelas_type',
              'format' => 'text',
              'value' => function($data){
                    $c = new Kelas;
                   return $c->getlistKelas($data->pn_kelas_type);
               },
            ],
            'pn_akreditasi',
            // 'pn_ketua',
            'pn_email:email',
            'pn_website',
            'pn_telp',
            'pn_fax',
            // 'pn_pegawai',
            // 'pn_honorer',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{akreditasi} {update} {delete}',
                'buttons' => [
                    'akreditasi' => function($url,$model,$key){
                        return  
                        //Html::a('View', ['audit','id'=>$model->assesment_id], ['class' => 'btn btn-success']);
                         Html::a(Html::tag('i','',['class'=>'fa fa-list-alt', 'title'=>'Akreditasi']), ['akreditasi','id'=>$model->pn_id]);
                    },
                ],
            ],
        ],
    ]); ?>
</div>
