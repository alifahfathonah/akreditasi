<?php

namespace backend\controllers;

use Yii;
use common\models\Pertanyaan;
use backend\models\PertanyaanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\PnKelas;
use common\models\Tujuan;
use common\models\Kriteria;

/**
 * PertanyaanController implements the CRUD actions for Pertanyaan model.
 */
class PertanyaanController extends Controller
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
     * Lists all Pertanyaan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PertanyaanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        //data Tujuan
            $kelas = new PnKelas();
            $datakls = $kelas->find()->all();

        //data Tujuan
            $tujuan = new Tujuan();
            $datatjn = $tujuan->find()->all();

        //data Tujuan
            $kriteria = new Kriteria();
            $datakrit = $kriteria->find()->all();

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'datakls'=>$datakls,
            'datatjn'=>$datatjn,
            'datakrit'=>$datakrit,
        ]);
    }

    /**
     * Displays a single Pertanyaan model.
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
     * Creates a new Pertanyaan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
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
     * Updates an existing Pertanyaan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

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
            return $this->redirect(['view', 'id' => $model->tanya_id]);
        }

        return $this->render('update', [
            'model' => $model,
            'datakls'=>$datakls,
            'datatjn'=>$datatjn,
            'datakrit'=>$datakrit,
        ]);
    }

    /**
     * Deletes an existing Pertanyaan model.
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
     * Finds the Pertanyaan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Pertanyaan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pertanyaan::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
