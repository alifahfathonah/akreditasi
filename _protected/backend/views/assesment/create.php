<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Assesment */

$this->title = 'Create Assesment';
$this->params['breadcrumbs'][] = ['label' => 'Assesments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assesment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
            'model2' => $model2,
        'dataPN' => $dataPN,
        'dataPG' => $dataPG,
        'jenis' => $jenis,	
    ]) ?>

</div>
