<?php

namespace backend\controllers;

use Yii;
use common\models\Kaling;
use common\models\User;
use common\models\Instansi;
use common\models\UserUsergroup;
use backend\models\KalingSearch;
use frontend\models\SignupForm;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * KalingController implements the CRUD actions for Kaling model.
 */
class KalingController extends Controller
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
     * Lists all Kaling models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new KalingSearch();
        $dataProvider1 = $searchModel->search1(Yii::$app->request->queryParams);
        $dataProvider2 = $searchModel->search2(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider1' => $dataProvider1,
            'dataProvider2' => $dataProvider2,
        ]);
    }

    /**
     * Displays a single Kaling model.
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
     * Creates a new Kaling model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Kaling();
        $model2 = new Instansi();
        $data = $model2->find()->all();

        if ($model->load(Yii::$app->request->post())) {
            //tanggal lahir
            $post =Yii::$app->request->post('Kaling');
            $tgl_lahir = $post['uk_tgl_lahir'];
            $ex=explode('/',$tgl_lahir);
            $tgl_lahir=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);

            $model->attributes=array(
              'uk_tgl_lahir'=>$tgl_lahir,
            );
            $model->save();

            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
            'data' => $data,
        ]);
    }

    /**
     * Updates an existing Kaling model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model2 = new Instansi();
        $data = $model2->find()->all();

        //convert tanggal sebelum ke form edit
        if($model->uk_tgl_lahir!=''){
          $model->uk_tgl_lahir=date('d/m/Y',$model->uk_tgl_lahir);
        }

        if ($model->load(Yii::$app->request->post())) {
            //tanggal lahir
            $post =Yii::$app->request->post('Kaling');
            $tgl_lahir = $post['uk_tgl_lahir'];
            $ex=explode('/',$tgl_lahir);
            $tgl_lahir=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);

            $model->attributes=array(
              'uk_tgl_lahir'=>$tgl_lahir,
            );
            $model->save();

            return $this->redirect(['view', 'id' => $model->uk_id]);
        }

        return $this->render('update', [
            'model' => $model,
            'data' => $data,
        ]);
    }

    /**
     * Deletes an existing Kaling model.
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
            $user->ug_id = '02';
            $user->setPassword($pw);
            $user->generateAuthKey();
            $user->save();

            $userusergroup = new UserUsergroup();
            $userusergroup->ug_id = '02';
            $userusergroup->id = $user->id;
            $userusergroup->save();

            return $this->redirect(['index']);
        }

        return $this->renderAjax('uname', [
            'model' => $user,
        ]);

    }

    // public function actionGetuname()
    // {
    //   $user = new User();
    //   return $this->renderAjax('uname', [
    //       'model' => $user,
    //   ]);
    // }

    /**
     * Finds the Kaling model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Kaling the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Kaling::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
