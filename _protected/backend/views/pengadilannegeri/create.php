<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\PengadilanNegeri */

$this->title = 'Create Pengadilan Negeri';
$this->params['breadcrumbs'][] = ['label' => 'Pengadilan Negeris', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pengadilan-negeri-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
