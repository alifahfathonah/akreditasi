<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\models\Slider;

$this->title = 'Home';
$asset = AppAsset::register($this);
?>
<div class="site-index">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <?php $data = Slider::findAll(['s_status'=>'y']); $i=0;?>
          <?php foreach($data as $row){
            if($i==0){
          ?>
              <li data-target="#myCarousel" data-slide-to="<?= $i; ?>" class="active"></li>
          <?php
            }else{
          ?>
              <li data-target="#myCarousel" data-slide-to="<?= $i; ?>"></li>
          <?php
            }
            $i++;
          }
          ?>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <?php $data = Slider::findAll(['s_status'=>'y']); $i=0;?>
          <?php foreach($data as $row){
            if($i==0){
          ?>
                <div class="item active">
                  <img class="d-block " src="<?= Yii::$app->params['backendUrl'].'slider/'.$row->s_nama; ?>">
                </div>
          <?php
            }else{
          ?>
                <div class="item">
                  <img class="d-block " src="<?= Yii::$app->params['backendUrl'].'slider/'.$row->s_nama; ?>">
                </div>
          <?php
            }
            $i++;
          }
          ?>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    <hr>
    <div class="body-content">

        <div class="row ">

            <div style=""class="col-lg-8">
                <h2 style="border-bottom:2px solid #aaa; margin-bottom:20px">Berita</h2>

                <?php foreach($model as $row): ?>
                  <div class="row">
                    <div class="col-sm-9 col-md-9 col-lg-9">
                      <h4 style="margin-top:2px;"><?= Html::a($row->b_nama, ['site/view', 'id'=>$row->b_id], [
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
                      <div  class=" col-sm-3 col-md-3 col-lg-3">
                        <img id="class2" style="margin-top: 10px;width: 100%;height: auto;"src=" <?php echo Yii::$app->params['backendUrl'].'img2/'.$row->b_gambar; ?> " alt="">
                        <!-- AppAsset::register($this)->baseUrl.'/slide/logo.png' -->
                      </div>
                  </div>
                  <hr>
                <?php endforeach; ?>
                <br>
            </div>
            <div class="col-lg-3 col-lg-offset-1">
              <div class="">
                <h3 style="border-bottom:2px solid #aaa;margin-left:2px;height:33px;color:black;margin-bottom:20px">Agenda</h3>
              </div>
              <?php foreach($modelagenda as $row): ?>
                <h4 style="font-size:15px;"><strong><?= Html::a($row->a_judul, ['agenda/index'], [
                  'class' => '',
                  'data' => [
                    'method' => 'post',
                    ],
                  ]); ?>
                </strong></h4>
                <hr>
              <?php endforeach; ?>
            </div>
            <div class="col-lg-3 col-lg-offset-1">
              <div class="" style="">
                <h3 style="border-bottom:2px solid #aaa;margin-left:2px;height:30px;color:black;margin-bottom:20px">Berita Terkini</h3>

              </div>
              <?php foreach($model as $row): ?>
                <h4 style="font-size:15px;"><strong><?= Html::a($row->b_nama, ['site/view', 'id'=>$row->b_id], [
                  'class' => '',
                  'data' => [
                    'method' => 'post',
                    ],
                  ]); ?>
                </strong></h4>
                <hr>
              <?php endforeach; ?>
            </div>

        </div>

    </div>
</div>
