<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Pertanyaan2 */

$this->title = 'Create Pertanyaan PN Kelas 2';
$this->params['breadcrumbs'][] = ['label' => 'Pertanyaan2s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pertanyaan2-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
		'data1'=>$data1,
        'data2'=>$data2,
    ]) ?>

</div>
