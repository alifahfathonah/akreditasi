<?php

namespace backend\controllers;

use Yii;
use common\models\Slider;
use backend\models\SliderSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\UploadedFile;
use yii\imagine\Image;
use Imagine\Gd;
use Imagine\Image\Box;
use Imagine\Image\BoxInterface;

/**
 * SliderController implements the CRUD actions for Slider model.
 */
class SliderController extends Controller
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
                        'actions' => ['index','view','create','delete'],
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
     * Lists all Slider models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new SliderSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Slider model.
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
     * Creates a new Slider model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Slider();

        if ($model->load(Yii::$app->request->post())) {
            $image = UploadedFile::getInstance($model, 'image');

            if (!is_null($image)) {
                if ($model->save()) {
                    $this->updateImage($model->s_id,$image);
                    return $this->redirect(['view', 'id' => $model->s_id]);
                }else{
                    var_dump ($model->getErrors()); die();
                }
            }
        }

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->s_id]);
        // }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Slider model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    //public function actionUpdate($id)
    //{
    //    $model = $this->findModel($id);
    
    //    if ($model->load(Yii::$app->request->post()) && $model->save()) {
    //        return $this->redirect(['view', 'id' => $model->s_id]);
    //    }
    
    //    return $this->render('update', [
    //        'model' => $model,
    //    ]);
    //}

    /**
     * Deletes an existing Slider model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model = Slider::findOne($id);
        unlink(Yii::$app->basePath . '/web/uploads/slider/' . $model->s_nama);
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Slider model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Slider the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Slider::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    protected function updateImage($id,$image)
    {
      $model = Slider::findOne($id);
      if ($model !== null) {
        if(!is_null($image)){
          $ex=explode(".",$image->name);
          $gname=$id.".".$ex[1];

          $model->attributes=array(
            's_nama' => $gname,
            's_extension' => $image->extension,
            's_size' => $image->size,
          );

          Yii::$app->params['uploadPath'] = Yii::$app->basePath . '/web/uploads/';
          $path = Yii::$app->params['uploadPath'] . $gname;
          $image->saveAs($path);

          //1140
          $image2 = Image::getImagine()->open(Yii::$app->basePath . '/web/uploads/' . $gname);
          $image2->resize(new Box(1140, 300))
                ->save(Yii::$app->basePath . '/web/uploads/' . 'slider/'.$gname);

          unlink(Yii::$app->basePath . '/web/uploads/' . $gname);

          $model->save();
        }
      }
    }
}
