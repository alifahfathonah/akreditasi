<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kontak';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kontak-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
      Silahkan tinggalkan pesan melalui form berikut.
    </p>
	
	<div class="row">
        <div class="col-lg-4">
			<?= $this->render('_form', [
				'model' => $model,	
			]) ?>
		</div>
	</div>
   
</div>
