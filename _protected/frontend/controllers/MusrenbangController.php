<?php

namespace frontend\controllers;

use Yii;
use common\models\Musrenbang;
use common\models\MusrenbangSearch;
use common\models\Kaling;
use common\models\Instansi;
use common\models\Musrenbangkat;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\data\Pagination;

/**
 * MusrenbangController implements the CRUD actions for Musrenbang model.
 */
class MusrenbangController extends Controller
{
    public $par;
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['create','update','delete','excel2'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    [
                        'actions' => ['index','excel'],
                        'allow' => true,
                        'roles' => ['?','@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Musrenbang models.
     * @return mixed
     */
    public function actionIndex()
    {
        //Tahun
        $arrtahun=array();
        $arrtahunstart=date('Y');
        $arrtahunstop=date('Y')+10;
        $n=0;
        for($i=$arrtahunstart; $i<=$arrtahunstop; $i++){
          $arrtahun[$n]=$i;
          $n++;
        }

        $model = new Musrenbang;
        $searchModel = new MusrenbangSearch();
		
		//instansi
        $data = Instansi::find()->all();
		//musrebang kategori
		$datakat = Musrenbangkat::find()->all();

        $q = $searchModel->searchfront(Yii::$app->request->queryParams);
		$count = $q->count();
        $pagination = new Pagination(['totalCount' => $count,'pageSize'=>10]);
		
		$dataProvider2 = $q->offset($pagination->offset)
        ->limit($pagination->limit)
        ->all();

        return $this->render('indexg', [
            'dataProvider2' => $dataProvider2,
            'data' => $data,
			'datakat' => $datakat,
            'model' => $model,
            'searchModel' => $searchModel,
            'tahun' => $arrtahun,
			'pagination' => $pagination,
        ]);

        // if(Yii::$app->user->isGuest){
        //
        //
        // }else{
        //   $dataProvider = $searchModel->search2(Yii::$app->request->queryParams);
        //
        //   $dataProvider2 = $searchModel->search(Yii::$app->request->queryParams);
        //
        //   $pkey = Yii::$app->user->identity->pkey;
        //   $model2 = new Kaling;
        //   $ins = Kaling::find()->where(['uk_id'=>$pkey])->one();
        //
        //   $dataProvider3 = $searchModel->search3(Yii::$app->request->queryParams);
        //
        //   return $this->render('indexk', [
        //       'dataProvider' => $dataProvider,
        //       'dataProvider2' => $dataProvider2,
        //       'dataProvider3' => $dataProvider3,
        //       'data' => $data,
        //       'model' => $model,
        //       'searchModel' => $searchModel,
        //   ]);
        // }
    }

    public function actionExcel()
    {
      $ins = new Instansi();
	  $mkat = new Musrenbangkat();

      $model = new Musrenbang;
      $searchModel = new MusrenbangSearch();
	  $searchModel->load(Yii::$app->request->queryParams);
      $dataProvider2 = $searchModel->searchExcel(Yii::$app->request->queryParams);
      

      $excel = new \PHPExcel();
      $excel->getProperties()->setCreator('LPM Benoa')
				->setLastModifiedBy('Office 2007')
				->setTitle('Office 2007 XLSX')
				->setSubject('Office 2007 XLSX')
				->setDescription('Test document for Office 2007 XLSX');

      //style
		$styleJudul = array(
  			'font' => array(
  				'bold'  => true,
  				'name' => 'Arial'
  			),
  			'alignment' => array(
  				'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
  				'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER
  			),
  		);
		
		$styleHeadTabel = array(
  			'fill' => array(
  				'type' => \PHPExcel_Style_Fill::FILL_SOLID,
  				'startcolor' => array(
  						'argb' => 'C5D9F1'
  					)
  			),
  			'font' => array(
  				'bold'  => true,
  				'name' => 'Arial',
				'size' => 9,
  			),
  			'alignment' => array(
  				'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
  				'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER
  			),
  			'borders' => array(
  				'allborders' => array(
  					'style' => \PHPExcel_Style_Border::BORDER_THIN
  				)
  			)
  		);

		$style5 = array(
  			'font' => array(
  				'name' => 'Arial',
				'size' => 9
  			),
  			'borders' => array(
  				'allborders' => array(
  					'style' => \PHPExcel_Style_Border::BORDER_THIN
  				)
  			)
  		);
		$style6 = array(
  			'font' => array(
  				'name' => 'Arial',
				'size' => 9
  			),
  			'borders' => array(
  				'allborders' => array(
  					'style' => \PHPExcel_Style_Border::BORDER_THIN
  				)
  			),
			'alignment' => array(
  				'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
  				'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER
  			),
  		);
		$style7 = array(
  			'font' => array(
  				'name' => 'Arial',
				'size' => 9
  			),
			'alignment' => array(
  				'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
  				'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER
  			),
  		);

      $ex = $excel->setActiveSheetIndex(0);

      //seting lebar column
	  $excel->getActiveSheet()->getColumnDimension("A")->setWidth(5);
	  $excel->getActiveSheet()->getColumnDimension("B")->setWidth(60);
	  $excel->getActiveSheet()->getColumnDimension("C")->setWidth(45);
	  $excel->getActiveSheet()->getColumnDimension("D")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("E")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("F")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("G")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("H")->setWidth(25);
	  $excel->getActiveSheet()->getColumnDimension("I")->setWidth(25);
	  
	  //header form
	  $row = 1;
	  $excel->getActiveSheet()->mergeCells("A".$row.":I".$row);
	  $ex->setCellValue("A".$row,"DAFTAR USULAN PESERTA MUSRENBANG");
	  $row++;
	  $excel->getActiveSheet()->mergeCells("A".$row.":I".$row);
	  $ex->setCellValue("A".$row,"KELURAHAN BENOA");
	  $row++;
	  $excel->getActiveSheet()->mergeCells("A".$row.":I".$row);
	  $ex->setCellValue("A".$row,$searchModel->m_tahun);
	  
	  $excel->getActiveSheet()->getStyle("A1:A".$row)->applyFromArray($styleJudul);
	  
	  //header instansi
	  $dins;
	  if($searchModel->ins_id == ''){
		$dins = 'semua';
	  }else{
		$m = $ins->find()->where(['ins_id'=>$searchModel->ins_id])->one();
		$dins = $m->ins_nama;
	  }
	  $row = $row + 2;
	  $excel->getActiveSheet()->mergeCells("A".$row.":B".$row);
	  $ex->setCellValue("A".$row,"INSTANSI / LINGKUNGAN : ".$dins);

      //header tabel
	  $row = $row + 2;

      $excel->getActiveSheet()->mergeCells("A".$row.":A".($row+1));
	  $ex->setCellValue("A".$row,"NO.");
      $excel->getActiveSheet()->mergeCells("B".$row.":B".($row+1));
	  $ex->setCellValue("B".$row,"JENIS KEGIATAN / NAMA USULAN");
      $excel->getActiveSheet()->mergeCells("C".$row.":C".($row+1));
	  $ex->setCellValue("C".$row,"ALAMAT (LOKASI USULAN)");
      $excel->getActiveSheet()->mergeCells("D".$row.":G".$row);
      $ex->setCellValue("D".$row,"SIFAT");
      $excel->getActiveSheet()->mergeCells("H".$row.":H".($row+1));
      $ex->setCellValue("H".$row,"VOLUME");
      $excel->getActiveSheet()->mergeCells("I".$row.":I".($row+1));
      $ex->setCellValue("I".$row,"BIAYA");

      $row++;

      $ex->setCellValue("D".$row,"BARU");
      $ex->setCellValue("E".$row,"LANJUTAN");
      $ex->setCellValue("F".$row,"REHAB");
      $ex->setCellValue("G".$row,"PERLUASAN");

      $excel->getActiveSheet()->getStyle("A7:I".$row)->applyFromArray($styleHeadTabel);

      $row++;
      $num=1;
      foreach($dataProvider2->models as $col){
          $ex->setCellValue("A".$row,$num);
		  $excel->getActiveSheet()->getStyle("A".$row)->applyFromArray($style6);
          $ex->setCellValue("B".$row,$col->m_kegiatan);
          $ex->setCellValue("C".$row,$col->m_location);
		  $excel->getActiveSheet()->getStyle("B".$row.":C".$row)->applyFromArray($style5);
          $ex->setCellValue("D".$row,$col->m_sifat=="baru"?"√":"");
          $ex->setCellValue("E".$row,$col->m_sifat=="lanjutan"?"√":"");
          $ex->setCellValue("F".$row,$col->m_sifat=="rehab"?"√":"");
          $ex->setCellValue("G".$row,$col->m_sifat=="perluasan"?"√":"");
          $ex->setCellValue("H".$row,$col->m_volume);
		  $excel->getActiveSheet()->getStyle("D".$row.":H".$row)->applyFromArray($style6);
          $ex->setCellValue("I".$row,$col->m_biaya);
          $excel->getActiveSheet()->getStyle("I".$row)->applyFromArray($style5);

          $num++;
          $row++;
      }
	  
	  $row = $row + 2;
	  $row2 = $row;
	  $excel->getActiveSheet()->mergeCells("H".$row2.":I".$row2);
      $ex->setCellValue("H".$row2,"BENOA, .....................................");
	  $row2++;
	  $excel->getActiveSheet()->mergeCells("H".$row2.":I".$row2);
      $ex->setCellValue("H".$row2,"YANG MENGUSULKAN");
	  $row2 = $row2 + 4;
	  $excel->getActiveSheet()->mergeCells("H".$row2.":I".$row2);
      $ex->setCellValue("H".$row2,"(.........................................................)");
	  $excel->getActiveSheet()->getStyle("H".$row.":I".$row2)->applyFromArray($style7);

      $sheetname = "E-Musrenbang";
  		// set nama worksheet
  		$excel->getActiveSheet()->setTitle($sheetname);

      $dir = Yii::$app->basePath . '/web/uploads/';
      $fn = "Laporan_Musrenbang.xlsx";

      // if($source){
      //   unlink($dir.$fn);
      // }

      $source = $dir.$fn;
	  $source2 = '../_protected/frontend/web/uploads/'.$fn;
      $objWriter = \PHPExcel_IOFactory::createWriter($excel, "Excel2007");
		  $objWriter->save($source);

      return $source2;
    }

    public function actionExcel2()
    {
      $ins = new Instansi();

      $model = new Musrenbang;
      $searchModel = new MusrenbangSearch();

      $request = Yii::$app->request;
      if($request->get('id')=='1'){
        $dataProvider2 = $searchModel->search2(Yii::$app->request->queryParams);
      }
      if($request->get('id')=='2'){
        $dataProvider2 = $searchModel->search3(Yii::$app->request->queryParams);
      }
      if($request->get('id')=='3'){
        $dataProvider2 = $searchModel->search(Yii::$app->request->queryParams);
      }

      $excel = new \PHPExcel();
      $excel->getProperties()->setCreator('LPM Benoa')
				->setLastModifiedBy('Office 2007')
				->setTitle('Office 2007 XLSX')
				->setSubject('Office 2007 XLSX')
				->setDescription('Test document for Office 2007 XLSX');

      //style
      $styleHeadTabel = array(
  			'fill' => array(
  				'type' => \PHPExcel_Style_Fill::FILL_SOLID,
  				'startcolor' => array(
  						'argb' => 'C5D9F1'
  					)
  			),
  			'font' => array(
  				'bold'  => true,
  				'name' => 'Arial'
  			),
  			'alignment' => array(
  				'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
  				'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER
  			),
  			'borders' => array(
  				'allborders' => array(
  					'style' => \PHPExcel_Style_Border::BORDER_THIN
  				)
  			)
  		);

      $style5 = array(
  			'font' => array(
  				'name' => 'Arial'
  			),
  			'borders' => array(
  				'allborders' => array(
  					'style' => \PHPExcel_Style_Border::BORDER_THIN
  				)
  			)
  		);

      $ex = $excel->setActiveSheetIndex(0);

      //seting lebar column
  		$excel->getActiveSheet()->getColumnDimension("A")->setWidth(5);
  		$excel->getActiveSheet()->getColumnDimension("B")->setWidth(38);
  		$excel->getActiveSheet()->getColumnDimension("C")->setWidth(60);
  		$excel->getActiveSheet()->getColumnDimension("D")->setWidth(30);
      $excel->getActiveSheet()->getColumnDimension("E")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("F")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("G")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("H")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("I")->setWidth(12);
      $excel->getActiveSheet()->getColumnDimension("J")->setWidth(25);

      //header tabel
  		$row = 1;

      $excel->getActiveSheet()->mergeCells("A".$row.":A".($row+1));
  		$ex->setCellValue("A".$row,"No.");
      $excel->getActiveSheet()->mergeCells("B".$row.":B".($row+1));
  		$ex->setCellValue("B".$row,"Instansi");
      $excel->getActiveSheet()->mergeCells("C".$row.":C".($row+1));
  		$ex->setCellValue("C".$row,"Kegiatan");
      $excel->getActiveSheet()->mergeCells("D".$row.":D".($row+1));
  		$ex->setCellValue("D".$row,"Lokasi");
      $excel->getActiveSheet()->mergeCells("E".$row.":H".$row);
      $ex->setCellValue("E".$row,"Sifat");
      $excel->getActiveSheet()->mergeCells("I".$row.":I".($row+1));
      $ex->setCellValue("I".$row,"Volume");
      $excel->getActiveSheet()->mergeCells("J".$row.":J".($row+1));
      $ex->setCellValue("J".$row,"Perkiraan Biaya");

      $row++;

      $ex->setCellValue("E".$row,"Baru");
      $ex->setCellValue("F".$row,"Lanjutan");
      $ex->setCellValue("G".$row,"Rehab");
      $ex->setCellValue("H".$row,"Perluasan");

      $excel->getActiveSheet()->getStyle("A1:J".$row)->applyFromArray($styleHeadTabel);

      $row++;
      $num=1;
      foreach($dataProvider2->models as $col){
          $ex->setCellValue("A".$row,$num);

          //namainstansi
          $nama = $ins->find()->where(['ins_id'=>$col->ins_id])->one();
          $ex->setCellValue("B".$row,$nama->ins_nama);

          $ex->setCellValue("C".$row,$col->m_kegiatan);
          $ex->setCellValue("D".$row,$col->m_location);
          $ex->setCellValue("E".$row,$col->m_sifat=="baru"?"√":"");
          $ex->setCellValue("F".$row,$col->m_sifat=="lanjutan"?"√":"");
          $ex->setCellValue("G".$row,$col->m_sifat=="rehab"?"√":"");
          $ex->setCellValue("H".$row,$col->m_sifat=="perluasan"?"√":"");
          $ex->setCellValue("I".$row,$col->m_volume);
          $ex->setCellValue("J".$row,$col->m_biaya);
          $excel->getActiveSheet()->getStyle("A".$row.":J".$row)->applyFromArray($style5);

          $num++;
          $row++;
      }

      $sheetname = "E-Musrenbang";
  		// set nama worksheet
  		$excel->getActiveSheet()->setTitle($sheetname);

      $dir = Yii::$app->basePath . '/web/uploads/';
      $fn = "Laporan_Musrenbang.xlsx";

      // if($source){
      //   unlink($dir.$fn);
      // }

      $source = $dir.$fn;
	  $source2 = '../_protected/frontend/web/uploads/'.$fn;
      $objWriter = \PHPExcel_IOFactory::createWriter($excel, "Excel2007");
		  $objWriter->save($source);

      return $source2;
    }

    // /**
    //  * Displays a single Musrenbang model.
    //  * @param string $id
    //  * @return mixed
    //  */
    // public function actionView($id)
    // {
    //     return $this->render('view', [
    //         'model' => $this->findModel($id),
    //     ]);
    // }

    /**
     * Creates a new Musrenbang model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Musrenbang();



        if ($model->load(Yii::$app->request->post())) {
            $pkey = Yii::$app->user->identity->pkey;
            $model2 = new Kaling;
            $ins = Kaling::find()->where(['uk_id'=>$pkey])->one();

            //currency
            $post = Yii::$app->request->post('Musrenbang');
            $m_biaya = $this->convert_to_number($post['m_biaya']);

            $model->attributes=array(
              'ins_id' => $ins->ins_id,
              'm_biaya' => $m_biaya,
            );
            $model->save();

            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Musrenbang model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
            //currency
            $post = Yii::$app->request->post('Musrenbang');
            $m_biaya = $this->convert_to_number($post['m_biaya']);

            $model->attributes=array(
              'm_biaya' => $m_biaya,
            );
            $model->save();

            return $this->redirect(['index']);
        }

        if($model->created_by==Yii::$app->user->identity->id){
            return $this->render('update', [
                'model' => $model,
            ]);
        }else{
            return $this->redirect(['index']);
        }
    }

    /**
     * Deletes an existing Musrenbang model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Musrenbang model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Musrenbang the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Musrenbang::findOne($id)) !== null) {
          return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

   protected function convert_to_number($rupiah)
   {
        return intval(preg_replace('/,.*|[^0-9]/', '', $rupiah));
   }
}
