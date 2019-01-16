<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'REPORT ASSESSMENT';
$this->params['breadcrumbs'][] = $this->title;
$no=1;
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	
</head>

<body onload="window.print()">

<?php 
	$html ='<table width="100%" border="0">
		<tr>
			<td  width="20%"  align="center" rowspan="2"><img src="http://localhost/akreditasi/_protected/backend/web/uploads/img1/'.$pt->pt_logo.'" alt="Logo"  height="100"></td>
			<td width="50%" align="center">
				<b>'.strtoupper($pt->pt_nama).'</b>
			</td>
			<td style="font-size: 8pt;" rowspan="2" align="left">
				Nomor dokumen<br>
				Tanggal Pembuatan<br>
				Tanggal Revisi<br>
				Revisi Ke<br>
				Tanggal Efektif<br>
				Disahkan Oleh<br>
			</td>
			<td style="font-size: 8pt;" rowspan="2" align="left">
				'.$model->assesment_surat.'<br>
				'.$model->assesment_surat.'<br>
				'.$model->assesment_surat.'<br>
				'.$model->assesment_surat.'<br>
				'.$model->assesment_surat.'<br>
				'.$model->assesment_surat.'<br>
			</td>
		</tr>
		<tr>
			<td style="font-size: 8pt;" align="center">
				'.$pt->pt_alamat.'<br>
				Telp	:'.$pt->pt_telp.'<br>
				Fax 	:'.$pt->pt_fax.'<br>
				Email	:'.$pt->pt_email.'<br>
				Telp	:'.$pt->pt_website.'<br>
			</td>
			
		</tr>
	</table>
	<hr width="80%" align="center">';


 	echo $html;
?> 


</body>
</html>