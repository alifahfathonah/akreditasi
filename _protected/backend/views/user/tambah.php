<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use yii\bootstrap\Modal;
use yii\bootstrap\Button;

/* @var $this yii\web\View */
/* @var $model common\models\Kaling */
/* @var $form yii\widgets\ActiveForm */
// $p = new Pertanyaan();
// $pertanyaan = $p->getlistPertanyaan($model->pertanyaan_id);
// $a = $p->getnilaiA($model->pertanyaan_id);
// $b = $p->getnilaiB($model->pertanyaan_id);
// $c = $p->getnilaiC($model->pertanyaan_id);

?>
	<p align="center">
        <?= Html::a('Tambah User Admin', ['admin/admin/create'], ['class' => 'btn btn-success']) ?>
    </p>
	<p align="center">
        <?= Html::a('Tambah User Assesor', ['manageuser/createassesor'], ['class' => 'btn btn-success']) ?>
    </p>
	<p align="center">
        <?= Html::a('Tambah User PN', ['manageuser/create'], ['class' => 'btn btn-success']) ?>
    </p>
    
<?php $form = ActiveForm::begin(['id' => 'someform']); ?>
  


  
  
<?php ActiveForm::end(); ?>
