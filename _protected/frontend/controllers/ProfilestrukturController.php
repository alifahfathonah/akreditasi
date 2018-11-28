<?php

namespace frontend\controllers;

use Yii;
use common\models\Profilestruktur;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProfileController implements the CRUD actions for Profile model.
 */
class ProfilestrukturController extends Controller
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
     * Lists all Profile models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new Profilestruktur();
        $data = $model->find()->one();

        return $this->render('index', [
            'data' => $data,
        ]);
    }
}
