<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use frontend\assets\AppAsset;
use kartik\social\FacebookPlugin;

/* @var $this yii\web\View */
/* @var $model frontend\models\Berita */

$this->title = $model->b_nama;
$this->params['breadcrumbs'][] = ['label' => 'Beritas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="berita-view">



      <div class="row">
        <div class="col-lg-8" style="margin-left:2px">
          <h1><?= Html::encode($this->title) ?></h1>
          <h6 style="margin-top:0px; margin-bottom:0px;"><i class="fa fa-clock-o fa-lg"></i> <?php if($model->b_tgl!=''){echo date('D, d F Y', $model->b_tgl);} ?> </h6>
          <hr class="style">
          <img style="margin-top:10px;width: 100%;height: auto;"src=" <?php echo Yii::$app->params['backendUrl'].'/img2/'.$model->b_gambar; ?> " alt="">
          <br></br>
          <p style="margin-left:100px;"><?php echo $model->b_isi ?></p>
		  <p><?= FacebookPlugin::widget(['appId'=>'FACEBOOK_APP_ID','type'=>FacebookPlugin::SHARE, 'settings' => ['size'=>'small', 'layout'=>'button_count', 'mobile_iframe'=>'false']]) ?></p>
        </div>
        <!-- <div class="col-lg-3">
          <div class="">
            <h3 style="margin-top:60px;margin-left:2px;height:30px;color:black">Agenda</h3>
            <div class="" style="border-bottom:2px solid"></div>
          </div>
          <?php foreach($model1 as $row): ?>
            <h4 style="font-size:15px;"><strong><?= Html::a($row->b_nama, ['site/view', 'id'=>$row->b_id], [
              'class' => '',
              'data' => [
                'method' => 'post',
                ],
              ]); ?>
            </strong></h4>
            <hr class="style">
          <?php endforeach; ?>
        </div> -->
        <div class="col-lg-3">
          <div class="">
            <h3 style="margin-left:2px;height:30px;color:black">Recent News</h3>
            <div class="" style="border-bottom:2px solid"></div>
          </div>
          <?php foreach($model1 as $row): ?>
            <h4 style="font-size:15px;"><strong><?= Html::a($row->b_nama, ['site/view', 'id'=>$row->b_id], [
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
    <p><?= FacebookPlugin::widget(['appId'=>'FACEBOOK_APP_ID','type'=>FacebookPlugin::COMMENT, 'settings' => ['data-width'=>1000, 'data-numposts'=>5]]); ?></p>
