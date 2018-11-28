<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kontak';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kontak-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <!-- <?= Html::a('Create Kontak', ['create'], ['class' => 'btn btn-success']) ?> -->
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'k_id',
            'k_judul',
            'k_nama',
            'k_email:email',
            'k_pesan:ntext',
            'k_jawab:ntext',
            //'created_at',
			//'updated_at',
            'k_status_jawab',

            [
              'class' => 'yii\grid\ActionColumn',
              'template' => '{update} {view} {delete} {sendmail}',
              'buttons' => [
                  'sendmail' => function($url,$model,$key){
                    if($model->k_status_jawab=='y'){
                      return  Html::a(Html::tag('i','',['class'=>'fa fa-envelope', 'title'=>'Send Mail']), ['sendmail','email'=>$model->k_email,'jawab'=>$model->k_jawab,'judul'=>$model->k_judul,'nama'=>$model->k_nama]);
                    }
                  },
              ],
            ],
        ],
    ]); ?>
</div>
