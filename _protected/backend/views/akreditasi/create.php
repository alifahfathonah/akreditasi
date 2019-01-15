<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Akreditasi */

$this->title = 'Create Akreditasi';
$this->params['breadcrumbs'][] = ['label' => 'Akreditasis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="akreditasi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
