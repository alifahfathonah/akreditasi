<?php

namespace backend\controllers;

use Yii;
use common\models\Session;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;

/**
 * InstansiController implements the CRUD actions for Instansi model.
 */
class SessionController extends Controller
{

    /**
     * Lists all Instansi models.
     * @return mixed
     */
    public function actionIndex()
    {
		$dataProvider = new ActiveDataProvider([
            'query' => Session::find()->where(['not',['user_id'=>NULL]]),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }
}
