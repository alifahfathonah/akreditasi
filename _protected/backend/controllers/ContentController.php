<?php

namespace backend\controllers;

use Yii;
use common\models\Content;
use common\models\UserGroup;
use common\models\UserAccess;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * ContentController implements the CRUD actions for Content model.
 */
class ContentController extends Controller
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
                        'actions' => ['index','view','create','update','delete','akses','get'],
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
     * Lists all Content models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new Content();

        $dataProvider = new ActiveDataProvider([
            'query' => Content::find(),
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);



        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Content model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Content model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Content();
        $data  = $model->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->c_id]);
        }

        return $this->render('create', [
            'model' => $model,
            'data' => $data,
        ]);
    }

    /**
     * Updates an existing Content model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $model2 = new Content();
        $data  = $model2->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->c_id]);
        }

        return $this->render('update', [
            'model' => $model,
            'data' => $data,
        ]);
    }

    /**
     * Deletes an existing Content model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionAkses($id,$name)
    {

      $model = new Content();
      $model2 = new UserAccess;

      if (Yii::$app->request->post()) {
              $post =Yii::$app->request->post('UserAccess');

              if($post['access']==1){
                 $q=UserAccess::findOne(['ug_id'=>$post['ug_id'],'c_id'=>$id,'access'=>'view']);
                 $jum=count($q);
                 if($jum==0){
                   $model2->ug_id = $post['ug_id'];
                   $model2->c_id = $id;
                   $model2->firstload='n';
                   $model2->access='view';
                   $model2->save();
                 }
              }else{
                $q=UserAccess::findOne(['ug_id'=>$post['ug_id'],'c_id'=>$id,'access'=>'view']);
                $jum=count($q);
                if($jum>0){
                  UserAccess::findOne(['ug_id'=>$post['ug_id'],'c_id'=>$id,'access'=>'view'])->delete();
                }
              }

          return $this->redirect(['akses','id'=>$id,'name'=>$name]);
      }

      $data  = UserGroup::find()->all();

      return $this->render('akses',[
          'model' => $model2,
          'id' => $id,
          'name' => $name,
          'data' => $data,
      ]);
    }

    public function actionGet(){
      $request = Yii::$app->request;
      $value = $request->post('value');
      $value2 = $request->post('value2');


      $q = UserAccess::find()
              ->where(['ug_id'=>$value,'c_id'=>$value2])
              ->one();
      $data=count($q);

      if($data>0){
        return $respon="success";
      }else{
        return $respon="fail";
      }

    }

    /**
     * Finds the Content model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Content the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Content::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
