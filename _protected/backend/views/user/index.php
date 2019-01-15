<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\bootstrap\Tabs;
use yii\data\ActiveDataProvider;
use common\models\User;
use common\models\UserGroup;
use yii\bootstrap\Modal;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Users';
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
$ug;
?>
<div class="kaling-index">

    <h1><?= Html::encode($this->title) ?></h1>

      <p >
        <?= Html::a('Create User', ['tambah'], ['class' => 'btn btn-success','align'=>'center','data-toggle'=>'modal','data-target'=>'#myModal','data-title'=>'Create User',]); 
        ?>
    </p>  

    <?php
        $i=0;
        foreach($usergroup as $row){
            if($i==0){$active=true;}else{$active=false;}
            $dataProvider = new ActiveDataProvider(['query' => User::find()->where(['ug_id'=>$row->ug_id])]);

            $ug[]=[
              'label'=>$row->ug_nama,
              'content'=> GridView::widget([
                  'dataProvider' => $dataProvider,
                  'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],

                    //'id',
                    'username',
                    // [
                    //   'label' => 'nama',
                    //   'format' => 'text',
                    //   'value' => function ($data) {
                    //       $data2 = UserGroup::find()->where(['ug_id'=>$data->ug_id])->one();
                    //       $nama = User::find()->select('user.*,'.$data2->ug_table_relation.'.'.substr($data2->ug_pkey_relation,0,2).'_nama name')->innerjoin($data2->ug_table_relation,$data2->ug_pkey_relation.'= user.pkey')->one();
                    //       //$nama2 = substr($data2->ug_pkey_relation,0,2).'_nama';
                    //       return $nama->name;
                    //   },
                    // ],
                    //'auth_key',
                    'password_hash',
                    //'password_reset_token',
                    'email:email',
                    //'status',
                    //'pkey',
                    //'ug_id',
                    //'created_at',
                    //'updated_at',

                    [
                      'class' => 'yii\grid\ActionColumn',
                      'template' => '{delete}'
                    ],
                  ],
              ]),
              'active'=>$active,
            ];
            $i++;
        }
    ?>

    <?php
      Modal::begin([
        'id' =>'myModal',
        'header' => '<h4 class="modal-title">...</h4>',
      ]);
      Modal::end();
    ?>

    <?= Tabs::widget([
        'items' => $ug,
    ]); ?>
</div>
