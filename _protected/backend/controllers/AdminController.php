<?php

namespace backend\controllers;

use Yii;
use common\models\Admin;
use common\models\User;
use common\models\UserUsergroup;
use backend\models\AdminSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * AdminController implements the CRUD actions for Admin model.
 */
class AdminController extends Controller
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
                        'actions' => ['index','view','create','update','delete','generatelogin'],
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
     * Lists all Admin models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AdminSearch();
        $dataProvider1 = $searchModel->search1(Yii::$app->request->queryParams);
        $dataProvider2 = $searchModel->search2(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider1' => $dataProvider1,
            'dataProvider2' => $dataProvider2,
        ]);
    }

    /**
     * Displays a single Admin model.
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
     * Creates a new Admin model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Admin();

        if ($model->load(Yii::$app->request->post())) {
            //tanggal lahir
            $post =Yii::$app->request->post('Admin');
            $tgl_lahir = $post['ua_tgl_lahir'];
            $ex=explode('/',$tgl_lahir);
            $tgl_lahir=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);

            $model->attributes=array(
              'ua_tgl_lahir'=>$tgl_lahir,
            );
            $model->save();

            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Admin model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        //convert tanggal sebelum ke form edit
        if($model->ua_tgl_lahir!=''){
          $model->ua_tgl_lahir=date('d/m/Y',$model->ua_tgl_lahir);
        }

        if ($model->load(Yii::$app->request->post())) {
            //tanggal lahir
            $post =Yii::$app->request->post('Admin');
            $tgl_lahir = $post['ua_tgl_lahir'];
            $ex=explode('/',$tgl_lahir);
            $tgl_lahir=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);

            $model->attributes=array(
              'ua_tgl_lahir'=>$tgl_lahir,
            );
            $model->save();

            return $this->redirect(['view', 'id' => $model->ua_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Admin model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionGeneratelogin($email,$pkey,$tgl)
    {
        $user = new User();

        if(Yii::$app->request->post()){
          $post =Yii::$app->request->post('User');

          $pw='123456';

          $user->username = $post['username'];
          $user->email = $email;
          $user->pkey = $pkey;
          $user->ug_id = '01';
          $user->setPassword($pw);
          $user->generateAuthKey();
          $user->save();

          $userusergroup = new UserUsergroup();
          $userusergroup->ug_id = '01';
          $userusergroup->id = $user->id;
          $userusergroup->save();

          return $this->redirect(['index']);
        }

        return $this->renderAjax('uname', [
            'model' => $user,
        ]);

    }

    /**
     * Finds the Admin model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Admin the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Admin::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
