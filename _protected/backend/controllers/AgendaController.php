<?php

namespace backend\controllers;

use Yii;
use common\models\Agenda;
use common\models\AgendaSearch;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * AgendaController implements the CRUD actions for Agenda model.
 */
class AgendaController extends Controller
{
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
                        'actions' => ['index','view','create','update','delete'],
                        'allow' => true,
                        'roles' => ['@'],
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
     * Lists all Agenda models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AgendaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
          'searchModel' => $searchModel,
          'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Agenda model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Agenda model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Agenda();

        if (Yii::$app->request->post()) {
          $post =Yii::$app->request->post('Agenda');
          $a_judul = $post['a_judul'];
          $a_isi = $post['a_isi'];
          $a_location = $post['a_location'];

          $a_tanggal = $post['a_tanggal'];
          $a_tanggal_akhir = $post['a_tanggal_akhir'];
          if($a_tanggal!=''){
            $ex=explode('/',$a_tanggal);
            $a_tanggal=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);
          }
          if($a_tanggal_akhir!=''){
            $ex=explode('/',$a_tanggal_akhir);
            $a_tanggal_akhir=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);
          }

          $a_status = $post['a_status'];

          $model->attributes=array(
            'a_judul'=>$a_judul,
            'a_isi'=>$a_isi,
            'a_location'=>$a_location,
            'a_tanggal'=>$a_tanggal,
            'a_status'=>$a_status,
            'a_tanggal_akhir'=>$a_tanggal_akhir,
          );

          if($model->save()){
            return $this->redirect(['index']);
          }

        }

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->a_id]);
        // }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Agenda model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        //convert tanggal sebelum ke form edit
        if($model->a_tanggal!=''){
          $model->a_tanggal=date('d/m/Y',$model->a_tanggal);
        }
        if($model->a_tanggal_akhir!=''){
          $model->a_tanggal_akhir=date('d/m/Y',$model->a_tanggal_akhir);
        }

        if (Yii::$app->request->post()) {
          $post =Yii::$app->request->post('Agenda');
          $a_judul = $post['a_judul'];
          $a_isi = $post['a_isi'];
          $a_location = $post['a_location'];

          $a_tanggal = $post['a_tanggal'];
          $a_tanggal_akhir = $post['a_tanggal_akhir'];
          if($a_tanggal!=''){
            $ex=explode('/',$a_tanggal);
            $a_tanggal=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);
          }
          if($a_tanggal_akhir!=''){
            $ex=explode('/',$a_tanggal_akhir);
            $a_tanggal_akhir=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);
          }

          $a_status = $post['a_status'];

          $model->attributes=array(
            'a_judul'=>$a_judul,
            'a_isi'=>$a_isi,
            'a_location'=>$a_location,
            'a_tanggal'=>$a_tanggal,
            'a_status'=>$a_status,
            'a_tanggal_akhir'=>$a_tanggal_akhir,
          );

          if($model->save()){
            return $this->redirect(['index']);
          }
        }

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->a_id]);
        // }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Agenda model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Agenda model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Agenda the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Agenda::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
