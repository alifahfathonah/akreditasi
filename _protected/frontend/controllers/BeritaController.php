<?php

namespace frontend\controllers;

use Yii;
use frontend\models\Berita;
use frontend\models\BeritaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\Pagination;

/**
 * BeritaController implements the CRUD actions for Berita model.
 */
class BeritaController extends Controller
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
     * Lists all Berita models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new BeritaSearch();
        //$dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $q = $searchModel->search(Yii::$app->request->queryParams);
        $count = $q->count();
        $pagination = new Pagination(['totalCount' => $count,'pageSize'=>10]);

        $model = $q->offset($pagination->offset)
        ->limit($pagination->limit)
        ->all();

        $data = Berita::find()->where([
          'b_status'=>'y',
        ])->limit(5)->orderBy('created_at')->all();

        return $this->render('index', [
            //'searchModel' => $searchModel,
            'model' => $model,
            'model1' => $data,
            'pagination' => $pagination,
        ]);
    }

    /**
     * Displays a single Berita model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {

        $data = Berita::find()->where([
          'b_status'=>'y',
        ])->limit(5)->orderBy('created_at')->all();

        return $this->render('view', [
            'model1' => $data,
            'model' => $this->findModel($id),
        ]);
    }

    // /**
    //  * Creates a new Berita model.
    //  * If creation is successful, the browser will be redirected to the 'view' page.
    //  * @return mixed
    //  */
    // public function actionCreate()
    // {
    //     $model = new Berita();
    //
    //     if ($model->load(Yii::$app->request->post()) && $model->save()) {
    //         return $this->redirect(['view', 'id' => $model->b_id]);
    //     } else {
    //         return $this->render('create', [
    //             'model' => $model,
    //         ]);
    //     }
    // }
    //
    // /**
    //  * Updates an existing Berita model.
    //  * If update is successful, the browser will be redirected to the 'view' page.
    //  * @param string $id
    //  * @return mixed
    //  */
    // public function actionUpdate($id)
    // {
    //     $model = $this->findModel($id);
    //
    //     if ($model->load(Yii::$app->request->post()) && $model->save()) {
    //         return $this->redirect(['view', 'id' => $model->b_id]);
    //     } else {
    //         return $this->render('update', [
    //             'model' => $model,
    //         ]);
    //     }
    // }
    //
    // /**
    //  * Deletes an existing Berita model.
    //  * If deletion is successful, the browser will be redirected to the 'index' page.
    //  * @param string $id
    //  * @return mixed
    //  */
    // public function actionDelete($id)
    // {
    //     $this->findModel($id)->delete();
    //
    //     return $this->redirect(['index']);
    // }

    /**
     * Finds the Berita model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Berita the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Berita::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
