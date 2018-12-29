<?php

namespace backend\controllers;

use Yii;
use common\models\Assesment;
use backend\models\AssesmentSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\PengadilanNegeri;
use common\models\PnKelas;
use common\models\Pegawai;
use common\models\Audit;
use common\models\Tujuan;
use common\models\Kriteria;
use common\models\Pertanyaan;
use common\models\Pertanyaan1;
use common\models\Pertanyaan2;
use backend\models\AuditSearch;
use backend\models\Pertanyaan1Search;

/**
 * AssesmentController implements the CRUD actions for Assesment model.
 */
class AssesmentController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Assesment models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AssesmentSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Assesment model.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionAudit($id)
    {
        $searchModel = new AuditSearch();
        $dataProvider = $searchModel->search2(Yii::$app->request->queryParams,$id);

        //data Tujuan
            $tujuan = new Tujuan();
            $datatj = $tujuan->find()->all();

        //data Kriteria
            $kriteria = new Kriteria();
            $datakrit = $kriteria->find()->all();


        return $this->render('audit', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'datatj' => $datatj,
            'datakrit' => $datakrit,
        ]);
    }

    
    
    public function actionNilai($id)
    {
        $model2 = new Audit();
        $model = $model2->findOne($id);
        
        if($post = Yii::$app->request->post()){

            $data=$model2->findOne($post['audit_id']);
            $data->audit_nilai=$post['audit_nilai'];
            $data->audit_temuan=$post['audit_temuan'];
            $data->audit_keterangan=$post['audit_keterangan'];
            
            if($data->save()){
                return 'success';
            }else{
                return $this->renderAjax('nilai', [
                    'model' => $model,
                ]);
            }
        }
        
        return $this->renderAjax('nilai', [
            'model' => $model,
        ]);
    }

    /**
     * Creates a new Assesment model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Assesment();

        //data PN
            $pn = new PengadilanNegeri();
            $dataPN = $pn->find()->all();

        //data kelas PN
            $kls = new PnKelas();
            $dataKLS = $kls->find()->all();

        //data Pegawai
            $pg = new Pegawai();
            $dataPG = $pg->find()->all();
            
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->assesment_id]);

            //$detPertanyaan;

            // if ($model->kelas_id=='KL001'){
            //     $detPertanyaan=Pertanyaan1::find()->all();
            // }else{
            //     $detPertanyaan=Pertanyaan2::find()->all();
            // }

            $detPertanyaan=Pertanyaan::find()->where(['kelas_id'=>$model->kelas_id])->all();

            foreach ($detPertanyaan as $key => $value) {
                $contact = new Audit();
                $contact->assesment_id=$model->assesment_id;
                $contact->pertanyaan_id=$value['tanya_id'];
                $contact->save();
            }

            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
            'dataPN' => $dataPN,
            'dataKLS' => $dataKLS,
            'dataPG' => $dataPG,
        ]);
    }

    public function actionTambah()
    {
        $model = new Pertanyaan();

        //data Tujuan
            $kelas = new PnKelas();
            $datakls = $kelas->find()->all();

        //data Tujuan
            $tujuan = new Tujuan();
            $datatjn = $tujuan->find()->all();

        //data Tujuan
            $kriteria = new Kriteria();
            $datakrit = $kriteria->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->tanya_id]);
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
            'datakls'=>$datakls,
            'datatjn'=>$datatjn,
            'datakrit'=>$datakrit,
        ]);
    }

    /**
     * Updates an existing Assesment model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        //data PN
            $pn = new PengadilanNegeri();
            $dataPN = $pn->find()->all();

        //data kelas PN
            $kls = new PnKelas();
            $dataKLS = $kls->find()->all();

        //data Pegawai
            $pg = new Pegawai();
            $dataPG = $pg->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->assesment_id]);

        }

        return $this->render('update', [
            'model' => $model,
            'dataPN' => $dataPN,
            'dataKLS' => $dataKLS,
            'dataPG' => $dataPG,
        ]);
    }

    /**
     * Deletes an existing Assesment model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Assesment model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Assesment the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */

    public function actionLists($id)
     {
         $countPosts = PengadilanNegeri::find()
             ->where(['pn_kelas' => $id])
             ->count();
         
         $posts = PengadilanNegeri::find()
             ->where(['pn_kelas' => $id])
             ->all();
     
        if($countPosts>0)
         {
            foreach($posts as $post){
                echo "<option value='".$post->pn_id."'>".$post->pn_nama."</option>";
            }
         }
         else{
            echo "<option>-</option>";
         }
     
     }

    protected function findModel($id)
    {
        if (($model = Assesment::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
