<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;
use yii\grid\GridView;
use yii\widgets\linkPager;

?>
<h1>File unggah Pengadilan Negeri</h1>
<?php $form = ActiveForm::begin(); ?>
  <?= $form->field($tanya, 'pertanyaan')->textarea(['value'=>$tanya->pertanyaan, 'readonly'=>true, 'style'=>'font-size:12px; overflow:auto; max-width:100%; height:100px; word-wrap:break-word;']) ?>
  <!-- <?= $form->field($tanya, 'audit_ket_praaudit')->textarea(['value'=>$tanya->audit_ket_praaudit, 'readonly'=>true, 'style'=>'font-size:12px; overflow:auto; max-width:100%; height:100px; word-wrap:break-word;']) ?> -->
<?php ActiveForm::end(); ?>

<div class="form-group" >
        <?= Html::a('Kembali', ['audit','id'=>$tanya->assesment_id], 
        ['class' => 'btn btn-info']) ?>
	</div>

<div class="card-deck">

<?php foreach($model as $value){ 
	$path = Yii::getAlias('@webi') . '/web/uploads/file/'.$value->audit_upload;
	$pdf = Yii::getAlias('@webi') . '/web/uploads/file/1pdf.png';
	$doc = Yii::getAlias('@webi') . '/web/uploads/file/1doc.png';
	$xls = Yii::getAlias('@webi') . '/web/uploads/file/1xls.png';
	$file = Yii::getAlias('@webi') . '/web/uploads/file/1file.png';
	$ex = explode('.',$value->audit_upload);
	$img = $ex[1];
?>
        <div class="col-lg-3">
            <div class="panel panel-info">
                <div class="panel-heading" style="background: white; border:solid 1px black; height: 250px;">
                    <div class="row">
                        <div class="col-xs-12" style="text-align: center">
                            <!-- <?php echo Html::img($pdf,['style'=> "height:150px; "]) ?> -->
                             <?php if ($img=='pdf') {
                            	echo Html::img($pdf,['style'=> "height:100px;"]); 
                            }elseif ($img=='doc' or $img=='docx') {
                            	echo Html::img($doc,['style'=> "height:100px;"]);
                            }elseif ($img=='xls' or $img=='xlsx') {
                            	echo Html::img($xls,['style'=> "height:100px;"]);
                            }elseif ($img=='png' or $img=='jpg' or $img=='jpeg') {
                            	echo Html::img($path,['style'=> "height:100px; width:200px"]);
                            }else{
                            	 echo Html::img($file,['style'=> "height:100px;"]);
                            }
                            ?> 
                        </div>
                        <div class="col-xs-12" style="text-align: center">
                            <p><?= $value->audit_upload ?></p>
                        </div>
                        <div class="col-xs-12" style="text-align: center">
                            <?= Html::a('download', ['unduh','id'=>$value->upload_id], ['class' => 'btn btn-success']) ?>
                            <?= Html::a('Hapus', ['deletefile','id'=>$value->upload_id,'audit_id'=>$value->audit_id], ['class' => 'btn btn-danger']) ?>
                        </div>
                         
                    </div>

                </div>    
            </div>

        </div>

<?php } ?>
</div>

	

        