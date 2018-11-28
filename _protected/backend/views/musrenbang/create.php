<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Musrenbang */

$this->title = 'Create Musrenbang';
$this->params['breadcrumbs'][] = ['label' => 'Musrenbangs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="musrenbang-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'data' => $data,
		'datakat' => $datakat,
        'uug' => $uug,
        'tahun' => $tahun,
    ]) ?>

</div>
