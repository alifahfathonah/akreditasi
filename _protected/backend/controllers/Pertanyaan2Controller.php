<?php

namespace backend\controllers;

use Yii;
use common\models\Pertanyaan2;
use backend\models\Pertanyaan2Search;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\Tujuan;
use common\models\Kriteria;

/**
 * Pertanyaan2Controller implements the CRUD actions for Pertanyaan2 model.
 */
class Pertanyaan2Controller extends Controller
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
     * Lists all Pertanyaan2 models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new Pertanyaan2Search();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Pertanyaan2 model.
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
     * Creates a new Pertanyaan2 model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Pertanyaan2();

        //data Tujuan
            $tujuan = new Tujuan();
            $data1 = $tujuan->find()->all();

        //data Kriteria
            $kriteria = new Kriteria();
            $data2 = $kriteria->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            //return $this->redirect(['view', 'id' => $model->tanya_id]);
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
            'data1'=>$data1,
            'data2'=>$data2,
        ]);
    }

    /**
     * Updates an existing Pertanyaan2 model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        //data Tujuan
            $tujuan = new Tujuan();
            $data1 = $tujuan->find()->all();

        //data Kriteria
            $kriteria = new Kriteria();
            $data2 = $kriteria->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->tanya_id]);
        }

        return $this->render('update', [
            'model' => $model,
            'data1'=>$data1,
            'data2'=>$data2,
        ]);
    }

    /**
     * Deletes an existing Pertanyaan2 model.
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
     * Finds the Pertanyaan2 model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Pertanyaan2 the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pertanyaan2::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
