<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\PnKelas;


/* @var $this yii\web\View */
/* @var $model common\models\Assesment */

$this->title = 'Tambah Pertanyaan';
$this->params['breadcrumbs'][] = ['label' => 'Assesments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assesment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'action' => ['tambah','id'=>$_GET['id']],
        'method' => 'post',
    ]); ?>

    <?= $form->field($model, 'assesment_id')->textInput(['rows' => 6,'value'=>$_GET['id'],'readonly'=>true])->label(false) ?>

    <?= $form->field($model, 'tujuan_id')->dropDownList(
        ArrayHelper::map($datatjn,'tujuan_id','tujuan_nama')
    ) ?>

    <?= $form->field($model, 'kriteria_id')->dropDownList(
        ArrayHelper::map($datakrit,'kriteria_id','kriteria_nama')
    ) ?>

    <?= $form->field($model, 'pertanyaan')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nilai_a')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nilai_b')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nilai_c')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'bobot')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
