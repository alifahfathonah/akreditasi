<?php

namespace backend\controllers;

use Yii;
use common\models\User;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\UserGroup;
use common\models\UserUsergroup;
use common\models\PengadilanNegeri;

/**
 * ManageuserController implements the CRUD actions for User model.
 */
class ManageuserController extends Controller
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
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => User::find(),
        ]);

        //data group
            $group = new UserGroup();
            $datagroup = $group->find()->all();

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'datagroup' => $datagroup,
        ]);
    }

    /**
     * Displays a single User model.
     * @param integer $id
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
     * Creates a new User model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new User();

        //data pn
            $pn = new PengadilanNegeri();
            $datapn = $pn->find()->all();

        if ($post=Yii::$app->request->post('User')) {
            
            $model->username=$post['username'];
            $model->setPassword($post['password_hash']);
            $model->pkey=$post['pkey'];
            $model->ug_id='06';
            $model->generateAuthKey();
            $model->save();

            $userusergroup = new UserUsergroup();
            $userusergroup->ug_id = $model->ug_id;
            $userusergroup->id = $model->id;
            $userusergroup->save();

            //return $this->redirect(['view', 'id' => $model->id]);
            
            return $this->redirect(['index']);

        }

        return $this->render('create', [
            'model' => $model,
            'datapn' => $datapn,
        ]);
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        //data group
            $group = new UserGroup();
            $datagroup = $group->find()->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
            'datagroup' => $datagroup,
        ]);
    }

    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
