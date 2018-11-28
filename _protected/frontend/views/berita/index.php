<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\BeritaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Berita';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="berita-index">

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>



  <div class="row ">
      <div class="col-lg-9">
          <?php foreach($model as $row): ?>
            <div class="row">
              <div class="col-sm-9 col-md-9 col-lg-9" style="margin-left:2px">
                <h4 style="margin-top:2px;"><?= Html::a($row->b_nama, ['berita/view', 'id'=>$row->b_id], [
                  'class' => '',
                  'data' => [
                    'method' => 'post',
                    ],
                  ]); ?>
                </h4>

                <h6 style="margin-top:0px; margin-bottom:0px;"><i class="fa fa-clock-o fa-lg"></i> <?php if($row->b_tgl!=''){echo date('D, d F Y', $row->b_tgl);} ?> </h6>
                <p>
                  <?php
                    if(strlen($row->b_isi)>300){echo strip_tags(substr($row->b_isi,0,300),'<p>').'...';}else{echo $row->b_isi;}
                  ?>
                </p>

              </div>
                <div  class=" col-sm-2 col-md-2 col-lg-2">
                  <img id="class2" style="margin-top: 10px;width: 100%;height: auto;"src=" <?php echo Yii::$app->params['backendUrl'].'/img1/'.$row->b_gambar; ?> " alt="">
                  <!-- AppAsset::register($this)->baseUrl.'/slide/logo.png' -->
                </div>
            </div>
            <hr>
          <?php endforeach; ?>
          <br>

          <?= LinkPager::widget([
              'pagination' => $pagination,
          ]); ?>
      </div>
      <div class="col-lg-3">
        <div class="">
          <h3 style="margin-left:2px;height:30px;color:black">Recent News</h3>
          <div class="" style="border-bottom:2px solid"></div>
        </div>
        <?php foreach($model1 as $row): ?>
          <h4 style="font-size:15px;"><strong><?= Html::a($row->b_nama, ['berita/view', 'id'=>$row->b_id], [
            'class' => '',
            'data' => [
              'method' => 'post',
              ],
            ]); ?>
          </strong></h4>
          <hr class="style">
        <?php endforeach; ?>
      </div>
  </div>
</div>
