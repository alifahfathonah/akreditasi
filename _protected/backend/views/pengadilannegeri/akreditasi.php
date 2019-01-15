<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Kelas;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PengadilannegeriSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Akreditasi';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengadilan-negeri-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <h3><?php echo $model->pn_nama ?></h3>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Update Akreditasi', ['akreditasiadd','id'=>$_GET['id']], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Kembali', ['index'], ['class' => 'btn btn-info']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'akreditasi_id',
            //'pn_id',
            'akreditasi_sk',
            'akreditasi_tgl_sk',
            'akreditasi',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{delete} ',
                'buttons' => [
                    'delete' => function($url,$model,$key){
                        return  
                        //Html::a('Audit', ['audit','id'=>$model->assesment_id], ['class' => 'btn btn-success']);
                         Html::a(Html::tag('i','',['class'=>'fa fa-trash', 'title'=>'Delete']), ['akreditasidelete','id'=>$model->akreditasi_id,'pn_id'=>$model->pn_id]);
                    },
                ],
            ],
        ],
    ]); ?>
</div>
