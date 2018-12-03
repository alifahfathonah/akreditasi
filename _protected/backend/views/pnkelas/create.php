<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\PnKelas */

$this->title = 'Tambah Kelas';
$this->params['breadcrumbs'][] = ['label' => 'Pn Kelas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pn-kelas-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
