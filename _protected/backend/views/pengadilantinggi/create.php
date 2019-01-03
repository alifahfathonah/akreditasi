<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\PengadilanTinggi */

$this->title = 'Create Pengadilan Tinggi';
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Tinggis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$status='create';
?>
<div class="pengadilan-tinggi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'status' => $status,
    ]) ?>

</div>
