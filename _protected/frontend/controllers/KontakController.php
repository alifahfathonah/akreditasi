<?php

namespace frontend\controllers;

use Yii;
use common\models\Kontak;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * KontakController implements the CRUD actions for Kontak model.
 */
class KontakController extends Controller
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
                        'actions' => ['index','create','suc'],
                        'allow' => true,
                        'roles' => ['@','?'],
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
     * Lists all Kontak models.
     * @return mixed
     */
    public function actionIndex()
    {
    		return $this->redirect(['create']);
    }

    public function actionCreate()
    {
        $model = new Kontak();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
          return $this->redirect(['suc']);
        }

        return $this->render('index', [
            'model' => $model,
        ]);
    }

    public function actionSuc()
    {
        return $this->render('suc');
    }

}
