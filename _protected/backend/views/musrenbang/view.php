<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use common\models\Instansi;
use common\models\Musrenbangkat;

/* @var $this yii\web\View */
/* @var $model common\models\Musrenbang */

$this->title = $model->m_id;
$this->params['breadcrumbs'][] = ['label' => 'E-Musrenbang', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="musrenbang-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->m_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->m_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'm_id',
            [
              'attribute'=>'ins_id',
              'format' => 'text',
              'value' => function($data){
                    $ins = new Instansi();
                    $nama = $ins->find()->where(['ins_id'=>$data->ins_id])->one();
                    return $nama->ins_nama;
              },
            ],
			[
              'attribute'=>'mk_id',
              'format' => 'text',
              'value' => function($data){
                    $mkat = new Musrenbangkat();
                    $namakat = $mkat->find()->where(['mk_id'=>$data->mk_id])->one();
                    return $namakat->mk_kelompok;
              },
            ],
            'm_kegiatan',
            'm_location',
            'm_sifat',
            'm_volume',
            [
              'attribute'=>'m_biaya',
              'format' => 'text',
              'value' => function($data){
                    return 'Rp. '.number_format($data->m_biaya,'0',',','.');
              },
            ],
			'm_tahun',
			'm_prioritas',
            'created_by',
            'created_at',
            'updated_by',
            'updated_at',
            'm_status',
        ],
    ]) ?>

</div>
