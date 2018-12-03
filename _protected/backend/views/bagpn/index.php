<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\PengadilanNegeri;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\BagpnSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Bagian Pengadilan Negeri';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bag-pn-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php  //echo $this->render('_search', ['model' => $searchModel,'data' => $data]); ?>

    <p>
        <?= Html::a('Tambah Bagian', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'bg_id',
            // 'pn_id',
            // [
            //   'attribute'=>'pn_id',
            //   'format' => 'text',
            //   'value' => function($data){
            //         $c = new PengadilanNegeri;
            //        return $c->getlistPN($data->pn_id);
            //    },
            // ],
            'bg_nama',
            // 'created_by',
            // 'created_at',
            //'updated_by',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
