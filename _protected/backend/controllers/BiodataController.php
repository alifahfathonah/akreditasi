<?php

namespace backend\controllers;

use Yii;
use common\models\Kaling;
use common\models\Admin;
use common\models\User;
use yii\widgets\ActiveForm;
use common\models\Instansi;
use common\models\UserUsergroup;
use common\models\GantiPwd;
use frontend\models\SignupForm;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * KalingController implements the CRUD actions for Kaling model.
 */
class BiodataController extends Controller
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
                        'actions' => ['index','update', 'gantipassword'],
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
		$uug = Yii::$app->user->identity->ug_id;
		$pkey = Yii::$app->user->identity->pkey;
		
		if($uug=='01'){
			$model = Admin::findOne($pkey);
			if($model != NULL){
				return $this->render('indexa', [
					'model' => $model,
				]);
			}
		}else{
			$model = Kaling::findOne($pkey);
			if($model != NULL){
				return $this->render('indexk', [
					'model' => $model,
				]);
			}
		}
    }


    /**
     * Updates an existing Kaling model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
		$uug = Yii::$app->user->identity->ug_id;
		$pkey = Yii::$app->user->identity->pkey;
		
		if($uug=='01'){
			$model = Admin::findOne($pkey);
			
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
				
				$email = $post['ua_email'];
				
				$model->attributes=array(
				  'ua_tgl_lahir'=>$tgl_lahir,
				);
				$model->save();
				
				$mdluser = User::findOne(Yii::$app->user->identity->id);
				$mdluser->email = $email;
				$mdluser->save();

				return $this->redirect(['index']);
			}
			
			return $this->render('updatea', [
				'model' => $model,
			]);
			
		}else{
			$model = Kaling::findOne($pkey);
			
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
				
				$email = $post['uk_email'];
				
				$model->attributes=array(
				  'uk_tgl_lahir'=>$tgl_lahir,
				);
				$model->save();
				
				$mdluser = User::findOne(Yii::$app->user->identity->id);
				$mdluser->email = $email;
				$mdluser->save();

				return $this->redirect(['index']);
			}
			
			return $this->render('updatek', [
				'model' => $model,
			]);
			
		}
        
    }
	
	public function actionGantipassword()
    {
		$model = new GantiPwd();
		
		if($post = Yii::$app->request->post()){
			$model->username = $post['username'];
			$model->oldpassword = $post['oldpassword'];
			$model->newpassword = $post['newpassword'];
			$model->newpassword_repeat = $post['newpassword_repeat'];
			
			if($model->ganti()){
				return 'success';
			}else{
				return $this->renderAjax('pwd', [
					'model' => $model,
				]);
			}
		}
		
		return $this->renderAjax('pwd', [
            'model' => $model,
        ]);
	}
	
}
