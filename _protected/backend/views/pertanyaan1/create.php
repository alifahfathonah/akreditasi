<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Pertanyaan1 */

$this->title = 'Create Pertanyaan PN Kelas 1';
$this->params['breadcrumbs'][] = ['label' => 'Pertanyaan1s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pertanyaan1-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
		'data1'=>$data1,
        'data2'=>$data2,
    ]) ?>

</div>
