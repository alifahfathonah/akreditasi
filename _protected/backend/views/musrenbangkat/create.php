<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Instansi */

$this->title = 'Create Musrenbang Kategori';
$this->params['breadcrumbs'][] = ['label' => 'Musrenbang Kategori', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="instansi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
