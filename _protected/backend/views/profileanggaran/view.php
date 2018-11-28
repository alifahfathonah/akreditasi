<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Profile */

$this->title = $model->pa_id;
$this->params['breadcrumbs'][] = ['label' => 'Profile Anggaran', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="profile-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->pa_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->pa_id], [
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
            'pa_id',
            'pa_isi:ntext',
            'created_at',
            'created_by',
            'updated_at',
            'updated_by',
            'pa_status',
        ],
    ]) ?>
	
</div>
