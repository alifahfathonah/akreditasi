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
<style>
	table, tr, td {
	  border: 1px solid black;
	  border-collapse: collapse;
	}
</style>
	<title></title>
	<style type="text/css">
		.kelastabel {
		    border-collapse: collapse;
		}

		.kelastabel td {
		    border: 1px solid black;
		}
	</style>
</head>

<body onload="window.print()">

<?php 
	$html ='
	<table width="100%" >
		<tr>
			<td style="font-size: 12pt; background-color: #81BE56;" colspan="2" ><b>LEMBAR KETIDAKSESUAIAN ASSESMENT (LKA)</b></td>
		</tr>
		<tr>
			<td width="20%" style="background-color: #81BE56;">DEPARTEMEN / PROSES/ LOKASI</td>
			<td >'.$pn->pn_nama.' '.$kelas->kelas_nama.'</td>
		</tr>
		<tr>
			<td width="20%" style="background-color: #81BE56;">STANDARD</td>
			<td >Indonesia Court Performance Excellence</td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #81BE56;">KETIDAKSESUAIAN – DESKRISPSI OBJECTIVE EVIDENCE :</td>
		</tr>
		<tr>
			<td colspan="2" height="200px">'.$audit->audit_keterangan.' ('.$audit->audit_temuan.')</td>
		</tr>
		<tr>
			<td style="background-color: #81BE56;">KATEGORI</td>
			<td>'.strtoupper($audit->audit_temuan).'</td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #81BE56;">ANALISA  PENYEBAB TIMBULNYA KETIDAKSESUAIAN</td>
		</tr>
		<tr>
			<td colspan="2" height="100px">'.$audit->audit_analisa.'</td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #81BE56;">TINDAKAN PERBAIKAN / SOLUSI KETIDAKSESUAIAN</td>
		</tr>
		<tr>
			<td colspan="2" height="100px">'.$audit->audit_solusi.'</td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #81BE56;">TINDAKAN PENCEGAHAN</td>
		</tr>
		<tr>
			<td colspan="2" height="100px">'.$audit->audit_pencegahan.'</td>
		</tr>
	</table>';


 	echo $html;
?> 


</body>
</html>