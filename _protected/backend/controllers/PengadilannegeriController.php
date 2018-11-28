<?php

namespace backend\controllers;

use Yii;
use common\models\PengadilanNegeri;
use backend\models\PengadilannegeriSearch;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PengadilannegeriController implements the CRUD actions for PengadilanNegeri model.
 */
class PengadilannegeriController extends Controller
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
     * Lists all PengadilanNegeri models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PengadilannegeriSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single PengadilanNegeri model.
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

    /**
     * Creates a new PengadilanNegeri model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new PengadilanNegeri();

        // if (Yii::$app->request->post()) {
        //   $post =Yii::$app->request->post('PengadilanNegeri');

        //   $pn_nama = $post['pn_nama'];
        //   $pn_alamat = $post['pn_alamat'];
        //   $pn_kelas = $post['pn_kelas'];
        //   $pn_akreditasi = $post['pn_akreditasi'];
        //   $pn_ketua = $post['pn_ketua'];
        //   $pn_email = $post['pn_email'];
        //   $pn_website = $post['pn_website'];
        //   $pn_telp = $post['pn_telp'];
        //   $pn_fax = $post['pn_fax'];
        //   $pn_pegawai = $post['pn_pegawai'];
        //   $pn_honorer = $post['pn_honorer'];

        //   $model->attributes=array(
        //     'pn_nama' => $pn_nama,
        //     'pn_alamat' => $pn_alamat,
        //     'pn_kelas' => $pn_kelas,
        //     'pn_akreditasi' => $pn_akreditasi,
        //     'pn_ketua' => $pn_ketua,
        //     'pn_email' => $pn_email,
        //     'pn_website' => $pn_website,
        //     'pn_telp' => $pn_telp,
        //     'pn_fax' => $pn_fax,
        //     'pn_pegawai' => $pn_pegawai,
        //     'pn_honorer' => $pn_honorer,
        //   );

        //   if($model->save()){
        //     return $this->redirect(['index']);
        //   }

        // }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->pn_id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing PengadilanNegeri model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->pn_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing PengadilanNegeri model.
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
     * Finds the PengadilanNegeri model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return PengadilanNegeri the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = PengadilanNegeri::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
