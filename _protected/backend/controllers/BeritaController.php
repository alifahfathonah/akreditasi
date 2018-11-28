<?php

namespace backend\controllers;

use Yii;
use common\models\Berita;
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
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['index','view','create','update','delete'],
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
     * Lists all Berita models.
     * @return mixed
     */
    public function actionIndex()
    {

        $dataProvider = new ActiveDataProvider([
            'query' => Berita::find()->orderBy(['b_tgl'=>SORT_DESC]),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Berita model.
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
     * Creates a new Berita model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Berita();

        if ($model->load(Yii::$app->request->post())) {
            $image = UploadedFile::getInstance($model, 'image');

            $post =Yii::$app->request->post('Berita');
            $b_tgl = $post['b_tgl'];
            if($b_tgl!=''){
              $ex=explode('/',$b_tgl);
              $b_tgl=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);
            }

            $model->attributes=array(
              'b_tgl' => $b_tgl,
            );

            if ($model->save()) {
                if (!is_null($image)) {
                    $this->updateImage($model->b_id,$image);
                }
                return $this->redirect(['index']);
            }else{
                var_dump ($model->getErrors()); die();
            }
        }

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->b_id]);
        // }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Berita model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $oldnameimage=$model->b_gambar;

        //convert tanggal sebelum ke form edit
        if($model->b_tgl!=''){
          $model->b_tgl=date('d/m/Y',$model->b_tgl);
        }

        if ($model->load(Yii::$app->request->post())) {
            $image = UploadedFile::getInstance($model, 'image');

            $post =Yii::$app->request->post('Berita');
            $b_tgl = $post['b_tgl'];
            if($b_tgl!=''){
              $ex=explode('/',$b_tgl);
              $b_tgl=strtotime($ex[2].'-'.$ex[1].'-'.$ex[0]);
            }

            $model->attributes=array(
              'b_tgl' => $b_tgl,
            );

            if($oldnameimage!=$image){
              if ($model->save()) {
                  if (!is_null($image)) {
                      if(!is_null($oldnameimage)){
                        $this->unlinkOldImage($oldnameimage);
                      }
                      $this->updateImage($model->b_id,$image);
                  }else{
                      // if(!is_null($oldnameimage)){
                      //   $this->unlinkOldImage($oldnameimage);
                      // }
                      //$this->updateImage($model->b_id,$image);
                  }
                  return $this->redirect(['view', 'id' => $model->b_id]);
              }else{
                  var_dump ($model->getErrors()); die();
              }
            }else{
              if ($model->save()) {
                return $this->redirect(['view', 'id' => $model->b_id]);
              }else{
                  var_dump ($model->getErrors()); die();
              }
            }
        }

        // if ($model->load(Yii::$app->request->post()) && $model->save()) {
        //     return $this->redirect(['view', 'id' => $model->b_id]);
        // }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Berita model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model=$this->findModel($id);

        $oldnameimage=$model->b_gambar;

        if(!is_null($oldnameimage)){
          $this->unlinkOldImage($oldnameimage);
        }
        $model->delete();

        return $this->redirect(['index']);
    }

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
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    protected function updateImage($id,$image)
    {
      $model = Berita::findOne($id);
      if ($model !== null) {
        if(!is_null($image)){
          $ex=explode(".",$image->name);
          $ex2=explode("/",$id);
          $gname=$ex2[0]."-".$ex2[1].".".$ex[1];

          $model->attributes=array(
            'b_gambar'=>$gname,
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
            'b_gambar'=>NULL,
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
