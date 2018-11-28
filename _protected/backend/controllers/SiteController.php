<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\models\Content;
use common\models\Instansi;
use common\models\Musrenbang;
use common\models\MusrenbangSearch;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
	public $layout='main';
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            //'verbs' => [
            //    'class' => VerbFilter::className(),
            //    'actions' => [
            //        'logout' => ['post'],
            //    ],
            //],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
		$searchModel = new MusrenbangSearch();
		$uug = Yii::$app->user->identity->ug_id;
		
		//data instansi
        $ins = new Instansi();
        $data = $ins->find()->all();
		
		//Tahun
        $arrtahun=array();
        $arrtahunstart=date('Y');
        $arrtahunstop=date('Y')+10;
        $n=0;
        for($i=$arrtahunstart; $i<=$arrtahunstop; $i++){
          $arrtahun[$n]=$i;
          $n++;
        }
		
		$searchModel->load(Yii::$app->request->queryParams);
		//count instansi
		$mins = Instansi::find()->where(['ins_status'=>'y'])->all();
		$ins = count($mins);
		//count musrenbang baru
		$musbaru = Musrenbang::find()->where(['m_sifat'=>'baru'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$baru = count($musbaru);
		//count musrenbang lanjutan
		$muslanjutan = Musrenbang::find()->where(['m_sifat'=>'lanjutan'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$lanjutan = count($muslanjutan);
		//count musrenbang lanjutan
		$musrehab = Musrenbang::find()->where(['m_sifat'=>'rehab'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$rehab = count($musrehab);
		//count musrenbang lanjutan
		$musperluasan = Musrenbang::find()->where(['m_sifat'=>'perluasan'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$perluasan = count($musperluasan);
		//count musrebang kelompok Ekonomi & Sumber Daya Alam MK04
		$museko = Musrenbang::find()->where(['mk_id'=>'MK04'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$eko = count($museko);
		//count musrebang kelompok Pengembangan Sumber Daya Manusia MK05
		$muskembang = Musrenbang::find()->where(['mk_id'=>'MK05'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$kembang = count($muskembang);
		//count musrebang kelompok Sarana dan Prasarana Wilayah MK06
		$mussarana = Musrenbang::find()->where(['mk_id'=>'MK06'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$sarana = count($mussarana);
		//count musrebang kelompok Sosial Budaya MK07
		$musbud = Musrenbang::find()->where(['mk_id'=>'MK07'])
		->andFilterWhere(['like', 'ins_id', $searchModel->ins_id])
		->andFilterWhere(['like', 'm_tahun', $searchModel->m_tahun])->all();
		$sosbud = count($musbud);
		
		
        return $this->render('index',['ins'=>$ins,'baru'=>$baru,
		'lanjutan'=>$lanjutan,'rehab'=>$rehab,'perluasan'=>$perluasan,'uug'=>$uug,
		'eko'=>$eko,'kembang'=>$kembang,'sarana'=>$sarana,'sosbud'=>$sosbud,
		'searchModel'=>$searchModel,'data'=>$data,'tahun'=>$arrtahun]);
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
