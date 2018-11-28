<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use yii\widgets\Pjax;
use yii\helpers\Url;
use common\models\Instansi;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'E-Musrenbang';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="musrenbang-index">

  <h1><?= Html::encode($this->title) ?></h1>

  <?php  echo $this->render('_search', ['model' => $searchModel,'data'=>$data]); ?>

  <p style="margin-top:30px;"><?= Html::a('Create Musrenbang', ['create'], ['class' => 'btn btn-primary']) ?></p>

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#daftar_musrenbang">Daftar Musrenbang</a></li>
    <li><a data-toggle="tab" href="#daftar_musrenbang_instansi">Daftar Musrenbang Per-Instansi</a></li>
    <li><a data-toggle="tab" href="#daftar_semua_musrenbang">Daftar Semua Musrenbang</a></li>
  </ul>

  <div class="tab-content">
    <div id="daftar_musrenbang" class="tab-pane fade in active">
      <?php Pjax::begin(['id' => 'pjax-gridview']) ?>
      <div style="margin-top:30px;">
      <?= Html::a('Download Excel',NULL, ['class' => 'btn btn-primary','onclick'=>'
          var query;
          $.ajax({
            type: "GET",
            url:"'.Url::to([
              'excel2',
              Html::getInputName($searchModel,'ins_id')=>Html::getAttributeValue($searchModel,'ins_id'),
              Html::getInputName($searchModel,'m_kegiatan')=>Html::getAttributeValue($searchModel,'m_kegiatan'),
              Html::getInputName($searchModel,'m_location')=>Html::getAttributeValue($searchModel,'m_location'),
              Html::getInputName($searchModel,'m_sifat')=>Html::getAttributeValue($searchModel,'m_sifat'),
              Html::getInputName($searchModel,'m_volume')=>Html::getAttributeValue($searchModel,'m_volume'),
              Html::getInputName($searchModel,'m_biaya')=>Html::getAttributeValue($searchModel,'m_biaya'),
              'id'=>'1',
            ]).'",
            data:query,
            success:function(response){
              response = response.replace(/^\s+|\s+$/g,"");
              location.href = response;
            }
          })
      ']) ?>
      </div>

      <table class="table table-bordered" style="margin-top:10px;">
        <thead>
          <tr>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">#</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Instansi</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Kegiatan</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Lokasi</th>
            <th colspan="4" style="text-align:center; vertical-align:middle;">Sifat</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Volume</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Perkiraan Baya</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Option</th>
          </tr>
          <tr>
            <th style="text-align:center; vertical-align:middle;">Baru</th>
            <th style="text-align:center; vertical-align:middle;">Lanjutan</th>
            <th style="text-align:center; vertical-align:middle;">Rehab</th>
            <th style="text-align:center; vertical-align:middle;">Perluasan</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no=1;
          foreach($dataProvider->models as $row){
            $ins = new Instansi();
            $nama = $ins->find()->where(['ins_id'=>$row->ins_id])->one();
          ?>
            <tr>
              <td><?= $no ?></td>
              <td><?= $nama->ins_nama ?></td>
              <td><?= $row->m_kegiatan ?></td>
              <td><?= $row->m_location ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="baru"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="lanjutan"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="rehab"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="perluasan"?"&#8730":"" ?></td>
              <td><?= $row->m_volume ?></td>
              <td><?= 'Rp. '.number_format($row->m_biaya,'0',',','.') ?></td>
              <td>
                <?= Html::a(Html::tag('i','',['class'=>'fa fa-pencil', 'title'=>'Update']), ['update','id'=>$row->m_id]).' '.
                Html::a(Html::tag('i','',['class'=>'fa fa-trash-o', 'title'=>'Delete']), ['delete', 'id' =>$row->m_id],[
                    'data' => [
                        'confirm' => 'Are you sure you want to delete this item?',
                        'method' => 'post',
                    ],
                ]) ?>
              </td>
            <tr>
          <?php $no++; } ?>
        </tbody>
      </table>

      <?php Pjax::end() ?>
    </div>
    <div id="daftar_musrenbang_instansi" class="tab-pane fade">
      <?php Pjax::begin(['id' => 'pjax-gridview2']) ?>
      <div style="margin-top:30px;">
      <?= Html::a('Download Excel',NULL, ['class' => 'btn btn-primary','onclick'=>'
          var query;
          $.ajax({
            type: "GET",
            url:"'.Url::to([
              'excel2',
              Html::getInputName($searchModel,'ins_id')=>Html::getAttributeValue($searchModel,'ins_id'),
              Html::getInputName($searchModel,'m_kegiatan')=>Html::getAttributeValue($searchModel,'m_kegiatan'),
              Html::getInputName($searchModel,'m_location')=>Html::getAttributeValue($searchModel,'m_location'),
              Html::getInputName($searchModel,'m_sifat')=>Html::getAttributeValue($searchModel,'m_sifat'),
              Html::getInputName($searchModel,'m_volume')=>Html::getAttributeValue($searchModel,'m_volume'),
              Html::getInputName($searchModel,'m_biaya')=>Html::getAttributeValue($searchModel,'m_biaya'),
              'id'=>'2',
            ]).'",
            data:query,
            success:function(response){
              response = response.replace(/^\s+|\s+$/g,"");
              location.href = response;
            }
          })
      ']) ?>
      </div>

      <table class="table table-bordered" style="margin-top:10px;">
        <thead>
          <tr>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">#</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Instansi</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Kegiatan</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Lokasi</th>
            <th colspan="4" style="text-align:center; vertical-align:middle;">Sifat</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Volume</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Perkiraan Baya</th>
          </tr>
          <tr>
            <th style="text-align:center; vertical-align:middle;">Baru</th>
            <th style="text-align:center; vertical-align:middle;">Lanjutan</th>
            <th style="text-align:center; vertical-align:middle;">Rehab</th>
            <th style="text-align:center; vertical-align:middle;">Perluasan</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no=1;
          foreach($dataProvider3->models as $row){
            $ins = new Instansi();
            $nama = $ins->find()->where(['ins_id'=>$row->ins_id])->one();
          ?>
            <tr>
              <td><?= $no ?></td>
              <td><?= $nama->ins_nama ?></td>
              <td><?= $row->m_kegiatan ?></td>
              <td><?= $row->m_location ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="baru"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="lanjutan"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="rehab"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="perluasan"?"&#8730":"" ?></td>
              <td><?= $row->m_volume ?></td>
              <td><?= 'Rp. '.number_format($row->m_biaya,'0',',','.') ?></td>
            <tr>
          <?php $no++; } ?>
        </tbody>
      </table>

      <?php Pjax::end() ?>
    </div>
    <div id="daftar_semua_musrenbang" class="tab-pane fade">
      <?php Pjax::begin(['id' => 'pjax-gridview3']) ?>
      <div style="margin-top:30px;">
      <?= Html::a('Download Excel',NULL, ['class' => 'btn btn-primary','onclick'=>'
          var query;
          $.ajax({
            type: "GET",
            url:"'.Url::to([
              'excel2',
              Html::getInputName($searchModel,'ins_id')=>Html::getAttributeValue($searchModel,'ins_id'),
              Html::getInputName($searchModel,'m_kegiatan')=>Html::getAttributeValue($searchModel,'m_kegiatan'),
              Html::getInputName($searchModel,'m_location')=>Html::getAttributeValue($searchModel,'m_location'),
              Html::getInputName($searchModel,'m_sifat')=>Html::getAttributeValue($searchModel,'m_sifat'),
              Html::getInputName($searchModel,'m_volume')=>Html::getAttributeValue($searchModel,'m_volume'),
              Html::getInputName($searchModel,'m_biaya')=>Html::getAttributeValue($searchModel,'m_biaya'),
              'id'=>'3',
            ]).'",
            data:query,
            success:function(response){
              response = response.replace(/^\s+|\s+$/g,"");
              location.href = response;
            }
          })
      ']) ?>
      </div>

      <table class="table table-bordered" style="margin-top:10px;">
        <thead>
          <tr>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">#</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Instansi</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Kegiatan</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Lokasi</th>
            <th colspan="4" style="text-align:center; vertical-align:middle;">Sifat</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Volume</th>
            <th rowspan="2" style="text-align:center; vertical-align:middle;">Perkiraan Baya</th>
          </tr>
          <tr>
            <th style="text-align:center; vertical-align:middle;">Baru</th>
            <th style="text-align:center; vertical-align:middle;">Lanjutan</th>
            <th style="text-align:center; vertical-align:middle;">Rehab</th>
            <th style="text-align:center; vertical-align:middle;">Perluasan</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no=1;
          foreach($dataProvider2->models as $row){
            $ins = new Instansi();
            $nama = $ins->find()->where(['ins_id'=>$row->ins_id])->one();
          ?>
            <tr>
              <td><?= $no ?></td>
              <td><?= $nama->ins_nama ?></td>
              <td><?= $row->m_kegiatan ?></td>
              <td><?= $row->m_location ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="baru"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="lanjutan"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="rehab"?"&#8730":"" ?></td>
              <td style="text-align:center; vertical-align:middle;"><?= $row->m_sifat=="perluasan"?"&#8730":"" ?></td>
              <td><?= $row->m_volume ?></td>
              <td><?= 'Rp. '.number_format($row->m_biaya,'0',',','.') ?></td>
            <tr>
          <?php $no++; } ?>
        </tbody>
      </table>

      <?php Pjax::end() ?>
    </div>
  </div>

</div>
