<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $model common\models\Content */

$this->title = 'Biodata';
//$this->params['breadcrumbs'][] = ['label' => 'Contents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

$this->registerJs("
    $('#myModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var modal = $(this)
        var title = button.data('title')
        var href = button.attr('href')
        modal.find('.modal-title').html(title)
        modal.find('.modal-body').html('<i class=\"fa fa-spinner fa-spin\"></i>')
        $.post(href)
            .done(function( data ) {
                modal.find('.modal-body').html(data)
            });
        })
");
?>
<div class="content-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->ua_id], ['class' => 'btn btn-primary']) ?>
		<?= Html::a('Ganti Password', ['gantipassword'], ['class' => 'btn btn-warning', 'data-toggle'=>'modal','data-target'=>'#myModal','data-title'=>'Ganti Password',]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'ua_nama',
            'ua_email:email',
            'ua_alamat',
            'ua_telp',
            'ua_jk',
            'ua_tgl_lahir',
            'ua_tempat_lahir',
        ],
    ]) ?>
	
	<?php
      Modal::begin([
        'id' =>'myModal',
        'header' => '<h4 class="modal-title">...</h4>',
      ]);
      Modal::end();
    ?>

</div>
