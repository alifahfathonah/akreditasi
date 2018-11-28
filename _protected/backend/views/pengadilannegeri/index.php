<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PengadilannegeriSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pengadilan Negeris';
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
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'pn_id',
            'pn_nama',
            'pn_alamat:ntext',
            'pn_kelas',
            'pn_akreditasi',
            'pn_ketua',
            'pn_email:email',
            'pn_website',
            'pn_telp',
            'pn_fax',
            'pn_pegawai',
            'pn_honorer',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
