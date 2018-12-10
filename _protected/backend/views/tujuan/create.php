<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Tujuan */

$this->title = 'Create Tujuan';
$this->params['breadcrumbs'][] = ['label' => 'Tujuans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tujuan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
