<?php

namespace backend\controllers;

use Yii;
use common\models\PengadilanTinggi;
use backend\models\PengadilantinggiSearch;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\imagine\Image;
use Imagine\Gd;
use Imagine\Image\Box;
use Imagine\Image\BoxInterface;
use yii\web\UploadedFile;

/**
 * PengadilantinggiController implements the CRUD actions for PengadilanTinggi model.
 */
class PengadilantinggiController extends Controller
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
     * Lists all PengadilanTinggi models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PengadilantinggiSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single PengadilanTinggi model.
     * @param string $id
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
     * Creates a new PengadilanTinggi model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new PengadilanTinggi();

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->pt_id]);
        // }

        if ($model->load(Yii::$app->request->post())) {
            $image = UploadedFile::getInstance($model, 'image');

            if ($model->save()) {
                if (!is_null($image)) {
                    $this->updateImage($model->pt_id,$image);
                }
                return $this->redirect(['index']);
            }else{
                var_dump ($model->getErrors()); die();
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing PengadilanTinggi model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $oldnameimage=$model->pt_logo;

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->pt_id]);
        // }

        if ($model->load(Yii::$app->request->post())) {
            $image = UploadedFile::getInstance($model, 'image');

            $post =Yii::$app->request->post('PengadilanTinggi');
            
            if($oldnameimage!=$image){
              if ($model->save()) {
                  if (!is_null($image)) {
                      if(!is_null($oldnameimage)){
                        $this->unlinkOldImage($oldnameimage);
                      }
                      $this->updateImage($model->pt_id,$image);
                  }else{
                      // if(!is_null($oldnameimage)){
                      //   $this->unlinkOldImage($oldnameimage);
                      // }
                      //$this->updateImage($model->b_id,$image);
                  }
                  return $this->redirect(['view', 'id' => $model->pt_id]);
              }else{
                  var_dump ($model->getErrors()); die();
              }
            }else{
              if ($model->save()) {
                return $this->redirect(['view', 'id' => $model->pt_id]);
              }else{
                  var_dump ($model->getErrors()); die();
              }
            }
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing PengadilanTinggi model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the PengadilanTinggi model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return PengadilanTinggi the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = PengadilanTinggi::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    protected function updateImage($id,$image)
    {
      $model = PengadilanTinggi::findOne($id);
      if ($model !== null) {
        if(!is_null($image)){
          $ex=explode(".",$image->name);
          //$ex2=explode("/",$id);
          $gname=$id.".".$ex[1];

          $model->attributes=array(
            'pt_logo'=>$gname,
          );

          Yii::$app->params['uploadPath'] = Yii::$app->basePath . '/web/uploads/';
          $path = Yii::$app->params['uploadPath'] . $gname;
          $image->saveAs($path);

          $image2 = Image::getImagine()->open(Yii::$app->basePath . '/web/uploads/' . $gname);
          $image2->resize($image2->getSize()->widen(120))
                ->save(Yii::$app->basePath . '/web/uploads/' . 'img1/'.$gname);

          $image3 = Image::getImagine()->open(Yii::$app->basePath . '/web/uploads/' . $gname);
          $image3->resize($image3->getSize()->widen(700))
                ->save(Yii::$app->basePath . '/web/uploads/' . 'img2/'.$gname);

          unlink(Yii::$app->basePath . '/web/uploads/' . $gname);

          $model->save();
        }else{
          $model->attributes=array(
            'pt_logo'=>NULL,
          );
          $model->save();
        }
      }
    }

    protected function unlinkOldImage($oldimagename)
    {
        unlink(Yii::$app->basePath . '/web/uploads/img1/' . $oldimagename);
        unlink(Yii::$app->basePath . '/web/uploads/img2/' . $oldimagename);
    }

}
