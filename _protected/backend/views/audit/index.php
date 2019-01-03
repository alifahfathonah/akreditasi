<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AuditSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Audits';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="audit-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Audit', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'audit_id',
            'assesment_id',
            'tujuan_id',
            'kriteria_id',
            'pertanyaan:ntext',
            //'nilai_a:ntext',
            //'nilai_b:ntext',
            //'nilai_c:ntext',
            //'bobot',
            //'audit_nilai',
            //'audit_nilai_angka',
            //'audit_temuan',
            //'audit_keterangan:ntext',
            //'audit_penyelesaian',
            //'created_by',
            //'created_at',
            //'updated_by',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
