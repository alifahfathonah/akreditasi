<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\BagPn */

$this->title = 'Tambah Bagian';
$this->params['breadcrumbs'][] = ['label' => 'Bag Pns', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bag-pn-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data' => $data,
    ]) ?>

</div>
