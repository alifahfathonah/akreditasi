<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Profile */

$this->title = 'Create Struktur';
$this->params['breadcrumbs'][] = ['label' => 'Struktur Organisasi', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="profile-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
