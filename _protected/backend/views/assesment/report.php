<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'REPORT ASSESSMENT';
$this->params['breadcrumbs'][] = $this->title;
$no=1;
$noo=1;
$nooo=1;
?>

<!DOCTYPE html>
<html>
<head>
<style>
	table, tr, td {
	  border: 0;
	}
	#table1 {
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
	<table width="100%" id="table1">
		<tr id="table1">
			<td style="background-color: #829AE8;" colspan="4"><b>INFORMASI ASSESMENT</b></td>
		</tr>
		<tr>
			<td width="20%"><b>Nama Organisasi</b></td>
			<td colspan="3"><b>'.$model2->pn_nama.' '.$kelas->kelas_nama.'</b></td>
		</tr>
		<tr>
			<td><b>Alamat</b></td>
			<td colspan="3">'.$model2->pn_alamat.'</td>
		</tr>
		<tr>
			<td><b>Telp. No.</b></td>
			<td>'.$model2->pn_telp.'</td>
			<td><b>Fax No.</b></td>
			<td>'.$model2->pn_fax.'</td>
		</tr>
		<tr>
			<td><b>Alamat Website / Email</b></td>
			<td colspan="3">'.$model2->pn_website.' /<br> '.$model2->pn_email.'</td>
		</tr>
		<tr>
			<td><b>Kriteria Assesment</b></td>
			<td><b>Akreditasi Penjaminan Mutu Pengadilan Negeri (Indonesia Court Performance Excellent) ( ICPE )</b></td>
			<td><b>Akreditasi</b></td>
			<td><b>Penjaminan Mutu Pengadilan Negeri</b></td>
		</tr>
		<tr>
			<td><b>Ruang Lingkup</b></td>
			<td colspan="3">'.$model2->pn_nama.' '.$kelas->kelas_nama.'</td>
		</tr>
		<tr>
			<td><b>Tipe Assesment</b></td>
			<td colspan="3">'.$jenis->jenis_nama.'</td>
		</tr>
		<tr>
			<td><b>Tanggal Asesment (Mulai)</b></td>
			<td>'.$model->assesment_tanggal_mulai.'</td>
			<td><b>Tanggal Assesment (Akhir)</b></td>
			<td>'.$model->assesment_tanggal_selesai.'</td>
		</tr>
	</table>

	<br>

	<table width="100%"  id="table1">
		<tr id="table1">
			<td style="background-color: #829AE8;" colspan="2"><b>INFORMASI ASSESOR</b></td>
		</tr>
		<tr>
			<td width="20%"><b>Ketua Tim</b></td>
			<td>'.$pegawai->pegawai_nama.'</td>
		</tr>
		<tr>
			<td width="20%"><b>Anggota Tim</b></td>
			<td>'.$pegawai->pegawai_nama.'</td>
		</tr>
		<tr>
			<td width="20%"><b>Acuan Assesment</b></td>
			<td>
				1.	Standar sertifikasi ISO 9001 : 2015. <br>
				2.	Penerapan International Framework for Court Excellent. <br>
				3.	Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 1 Tahun 2012 tentang Pedoman Penilaian Mandiri n Pelaksanaan Reformasi Birokrasi (PRB).<br>
				4.	Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 16 Tahun 2014 tentang Pedoman Survey Kepuasan Masyarakat .<br>
				5.	Standar Pengawasan dari Badan Pengawasan Mahkamah Agung. <br>
				6.	Pembangunan Zona Integritas menuju Wilayah bebas dari korupsi. <br>
				7.	Peraturan Mahkamah Agung, Surat Edaran Mahkamah Agung, Surat Keputusan Ketua Mahkamah Agung. <br>
				8.	Cetak Biru (Blueprint) Mahkamah Agung RI.<br>
				9.	Peraturan Sekretaris Mahkamah Agung Republik Indonesia.<br>
				10.	Pedoman Pelaksanaan Tugas dan Administrasi Pengadilan (Buku II Mahkamah Agung RI).
			</td>
		</tr>
		<tr>
			<td><b>Tempat Pelaksanaan</b></td>
			<td><b>'.$model2->pn_nama.' '.$kelas->kelas_nama.'</b></td>
		</tr>
		<tr>
			<td><b>Tujuan Assesment</b></td>
			<td>
				1.	Untuk menentukan Akreditasi '.$model2->pn_nama.' '.$kelas->kelas_nama.'.<br>
				2.	Untuk melihat Interaksi dan Implementasi dari Kebijakan, Sasaran dan Prosedur termasuk pencapaiannya.<br>
				3.	Untuk mengkonfirmasi bahwa Sistem Manajemen sesuai dengan semua Persyaratan Standar Akreditasi Penjaminan Mutu Pengadilan Negeri.
			</td>
		</tr>
	</table><pagebreak>

	<table width="100%">
		<tr>
			<td></td>
			<td style="font-size: 16pt;" colspan="2"><b>1. KESIMPULAN ASSESMENT</b></td>
		</tr>
		<tr>
			<td style="font-size: 14pt; background-color: #81BE56;" colspan="2"><b>KESIMPULAN TIM ASSESMENT</b></td>
		</tr>';

	foreach ($audit as $d) {
		if ($d->audit_nilai=='A') {
            $nilai = $d->nilai_a;
        } elseif ($d->audit_nilai=='B') {
            $nilai = $d->nilai_b;
        } elseif ($d->audit_nilai=='C') {
            $nilai = $d->nilai_c;
        }else{
        	$nilai = '';
        }
		$html .='<tr>
					<td valign="top">'.$no++.'.</td>
				 	<td>'.$d->pertanyaan.'<br>'.$nilai.'<td>
				 </tr>';
	}

	$html .='</table>

	<br><br>
	<table width="100%" border="0">
		<tr>
			<td width="5%"></td>
			<td style="font-size: 16pt;"><b>2. KETIDAK SESUAIAN ASSESMENT</b></td>
		</tr>
		<tr>
			<td style="font-size: 14pt; background-color: #81BE56;" colspan="2"><b>KESIMPULAN TIM ASSESMENT</b></td>
		</tr>';

	foreach ($temuan as $d) {
		$html .='<tr>
					<td valign="top">'.$noo++.'.</td>
				 	<td>'.$d->audit_keterangan.' ('.$d->audit_temuan.')</td>
				 </tr>';
	}

	$html .='</table><br><br>

	<table width="100%" border="0">
		<tr>
			<td width="5%"></td>
			<td style="font-size: 16pt;"><b>3. OBSERVASI</b></td>
		</tr>
		<tr>
			<td style="font-size: 14pt; background-color: #81BE56;" colspan="2"><b>OBSERVASI<br>
<p style="font-size: 12pt;">(Saran/Masukan/Potensi ketidaksesuaian)</p>
</b></td>
		</tr>';

	foreach ($observasi as $d) {
		$html .='<tr>
					<td valign="top">'.$nooo++.'.</td>
				 	<td>'.$d->audit_keterangan.'; ('.$d->audit_temuan.')</td>
				 </tr>';
	}

	$html .='</table><pagebreak>';

	foreach ($temuan as $audit) {
		$html .='
	<table width="100%" id="table1" >
		<tr id="table1">
			<td style="font-size: 12pt; background-color: #81BE56;" colspan="2" ><b>LEMBAR KETIDAKSESUAIAN ASSESMENT (LKA)</b></td>
		</tr>
		<tr id="table1">
			<td width="20%" style="background-color: #81BE56;">DEPARTEMEN / PROSES/ LOKASI</td>
			<td >pn kelas</td>
		</tr>
		<tr id="table1">
			<td width="20%" style="background-color: #81BE56;">STANDARD</td>
			<td >Indonesia Court Performance Excellence</td>
		</tr>
		<tr id="table1">
			<td colspan="2" style="background-color: #81BE56;">KETIDAKSESUAIAN – DESKRISPSI OBJECTIVE EVIDENCE :</td>
		</tr>
		<tr id="table1">
			<td colspan="2" height="200px">'.$audit->audit_keterangan.' ('.$audit->audit_temuan.')</td>
		</tr>
		<tr id="table1">
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
	</table><pagebreak>';
	}

	$html .='<b>RANGKUMAN TEMUAN ASSESMENT</b>
	<table id="table1"><b></b>
		<tr id="table1">
			<td rowspan="2" id="table1"><b>NO</b></td>
			<td rowspan="2" id="table1" align="center"><b>BAGIAN YANG DI ASSESMENT</b></td>
			<td rowspan="2" id="table1" align="center" width="20%"><b>TEMUAN ASSESMENT </b></td>
			<td colspan="3" id="table1" align="center"><b>KATEGORI</b></td>
		</tr>
		<tr id="table1">
			<td id="table1" width="10%" align="center">MAJOR</td>
			<td id="table1" width="10%" align="center">MINOR</td>
			<td id="table1" width="10%" align="center">OBSERVASI</td>
		</tr>
		<tr id="table1">
			<td id="table1"><b>1.</b></td>
			<td id="table1"><b>TOP MANAJEMEN /PIMPINAN PUNCAK</b></td>
			<td id="table1"><b>Sebagaimana tersebut diatas</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b>2.</b></td>
			<td id="table1"><b>DOCUMENT CONTROL (DC)</b></td>
			<td id="table1"><b>Sebagaimana tersebut diatas</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b>3.</b></td>
			<td id="table1"><b>INTERNAL AUDIT</b></td>
			<td id="table1"><b>Sebagaimana tersebut diatas</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b>4.</b></td>
			<td id="table1"><b>SURVEY KEPUASAN PELANGGAN</b></td>
			<td id="table1"><b>Sebagaimana tersebut diatas</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b>5.</b></td>
			<td id="table1"><b>PROSES LAYANAN UTAMA</b></td>
			<td id="table1"><b>Sebagaimana tersebut diatas</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b>6.</b></td>
			<td id="table1"><b>PROSES LAYANAN PENDUKUNG dan INFRASTRUKTUR</b></td>
			<td id="table1"><b>Sebagaimana tersebut diatas</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b></b></td>
			<td id="table1" colspan="2"><b>JUMLAH TEMUAN ASSESMENT</b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
			<td id="table1"><b></b></td>
		</tr>
		<tr id="table1">
			<td id="table1"><b></b></td>
			<td id="table1" colspan="2"><b>Waktu Perbaikan</b></td>
			<td id="table1" colspan="3"><b>1 (satu) bulan</b></td>
		</tr>
	</table><pagebreak>';

	$html .='<b>KETIDAK SESUAIAN ASSESMENT</b><br><br>
	Tindakan perbaikan dan pencegahan terhadap ketidak sesuaian harus ditindak lanjuti sesuai dengan persyaratan relevan<br>
	Tindakan perbaikan dan pencegahan untuk mengatasi ketidak sesuaian MAYOR yang diidentifikasi harus segera dilakukan dan TAPM Pengadilan Tinggi Jawa Timur diberitahu tentang tindakan yang diambil dalam waktu 14 hari.<br>
	Assessor TAPM Jawa Timur akan melakukan tindak kunjungan dalam waktu 14 hari untuk mengkonfirmasi tindakan yang diambil, evaluasi terhadap keefektifan mereka, dan menetukan apakah sertifikasi dapat diberikan atau dilanjutkan.<br>
	Tindakan perbaikan dan pencegahan untuk mengatasi ketidak sesuaian MINOR harus sgera dilakukan identifikasi dan catatan dengan bukti pendukung yang dikirim ke Auditor TAPM PT Pengadilan Tinggi Jawa Timur untuk close-out dalam waktu 30 hari.<br>
	Pada kunjungan Assessor jadwal berikutnya, Tim Assessor TAPM Pengadilan Tinggi Jawa Timur akan menindak lanjuti semua ketidak sesuaian diidentifikasi untuk mengkonfirmasi efektifitas tindakan perbaikan dan pencegahan yang diambil.

	';


 	echo $html;
?> 


</body>
</html>