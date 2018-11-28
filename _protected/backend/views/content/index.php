<?php

use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Content;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Contents';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="content-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Content', ['create'], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'c_id',
            'c_name',
            'c_icon',
            'c_page',
            [
              'attribute'=>'c_pkey',
              'format' => 'text',
              'value' => function($data){
                    $c = new Content;
                   return $c->getInduk($data->c_pkey);
               },
            ],
            //'c_urut',
            'c_status',

            [
              'class' => 'yii\grid\ActionColumn',
              'template' => '{update} {delete} {akses}',
              'buttons' => [
                  'akses' => function($url,$model,$key){
                      return  Html::a(Html::tag('i','',['class'=>'fa fa-check-square', 'title'=>'Set Akses']), ['akses','id'=>$model->c_id,'name'=>$model->c_name]);
                  },
              ],
            ],
        ],
    ]); ?>
</div>
