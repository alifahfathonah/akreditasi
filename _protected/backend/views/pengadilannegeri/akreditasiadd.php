<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\PengadilanNegeri;


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
        'action' => ['akreditasiadd','id'=>$_GET['id']],
        'method' => 'post',
    ]); ?>

    <?= $form->field($model, 'pn_id')->textInput(['rows' => 6,'value'=>$_GET['id'],'readonly'=>true])->label(false) ?>

    <?= $form->field($model, 'akreditasi_sk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'akreditasi_tgl_sk')->widget(\yii\jui\DatePicker::class,
        ['dateFormat' => 'yyyy-MM-dd'])->textInput() ?>

    <?= $form->field($model, 'akreditasi')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
