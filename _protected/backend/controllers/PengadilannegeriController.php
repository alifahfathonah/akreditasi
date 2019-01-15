<?php

namespace backend\controllers;

use Yii;
use common\models\PengadilanNegeri;
use backend\models\PengadilannegeriSearch;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\Kelas;
use common\models\Akreditasi;
use backend\models\AkreditasiSearch;

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

    public function actionAkreditasi($id)
    {
        $model2 = $this->findModel($id);
        $model = PengadilanNegeri::find()->where(['pn_id'=>$model2->pn_id])->one();

        $searchModel = new AkreditasiSearch();
        $dataProvider = $searchModel->search2(Yii::$app->request->queryParams,$id);

        return $this->render('akreditasi', [
            'model' => $model,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionAkreditasiadd($id)
    {
        $model = new Akreditasi();
        
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            
            $pn = Akreditasi::find()->where(['pn_id'=>$id])->orderBy(['akreditasi_tgl_sk' => SORT_DESC])->asArray()->one();
            $model2 = new PengadilanNegeri();
            $data = $model2->findOne($id);
            $data->pn_akreditasi=$pn['akreditasi'];
            $data->save();

            return $this->redirect(['akreditasi', 'id' => $id]);
        }

        return $this->render('akreditasiadd', [
            'model' => $model,
        ]);
    }

    public function actionAkreditasidelete($id,$pn_id)
    {
        $delete= Akreditasi::findOne($id)->delete();

        $pn = Akreditasi::find()->where(['pn_id'=>$pn_id])->orderBy(['akreditasi_tgl_sk' => SORT_DESC])->asArray()->one();
            $model2 = new PengadilanNegeri();
            $data = $model2->findOne($pn_id);
            $data->pn_akreditasi=$pn['akreditasi'];
            $data->save();

        return $this->redirect(['akreditasi', 'id' => $pn_id]);
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

        //data kelas PN
            $kls = new Kelas();
            $data = $kls->find()->where(['kelas_pkey'=>0])->all();
            $data2 = $kls->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->pn_id]);
        }

        return $this->render('create', [
            'model' => $model,
            'data'=>$data,
            'data2'=>$data2,
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

        //data kelas PN
            $kls = new Kelas();
            $data = $kls->find()->where(['kelas_pkey'=>0])->all();
            $data2 = $kls->find()->all();
        
        return $this->render('update', [
            'model' => $model,
            'data'=>$data,
            'data2'=>$data2,
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

    public function actionLists($id)
    {
        $countPosts = Kelas::find()
        ->where(['kelas_pkey' => $id])
        ->count();

        $posts = Kelas::find()
        ->where(['kelas_pkey' => $id])
        ->all();

        if($countPosts>0){
            foreach($posts as $post){
            echo "<option value='".$post->kelas_id."'>".$post->kelas_nama."</option>";
            }
        }
            else{
            echo "<option>-</option>";
        }
 
    }
}
