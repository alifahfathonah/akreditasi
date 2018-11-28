<?php
use yii\helpers\Html;


$this->title = 'Home';

?>
<h1><?= Html::encode($this->title) ?></h1>

<div class="site-index">
  <?php
    if($uug=='01'){
      echo  $this->render('dashadmin', [
                'ins' => $ins,
                'baru' => $baru,
                'lanjutan' => $lanjutan,
                'rehab' => $rehab,
                'perluasan' => $perluasan,
				'eko'=>$eko,
				'kembang'=>$kembang,
				'sarana'=>$sarana,
				'sosbud'=>$sosbud,
				'searchModel'=>$searchModel,
				'data'=>$data,
				'tahun'=>$tahun,
            ]);
    }
    if($uug=='02'){
      echo  $this->render('dashkepala', [
                'baru' => $baru,
                'lanjutan' => $lanjutan,
                'rehab' => $rehab,
                'perluasan' => $perluasan,
				'eko'=>$eko,
				'kembang'=>$kembang,
				'sarana'=>$sarana,
				'sosbud'=>$sosbud,
				'searchModel'=>$searchModel,
				'data'=>$data,
				'tahun'=>$tahun,
            ]);
    }
  ?>


</div>
