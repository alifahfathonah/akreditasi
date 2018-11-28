<?php

namespace common\models;

use Yii;
use yii\helpers\Url;
use common\models\UserAcces;
use common\models\UserUsergroup;

/**
 * This is the model class for table "content".
 *
 * @property int $c_id
 * @property string $c_name
 * @property int $c_pkey
 */
class Content extends \yii\db\ActiveRecord
{

		public $view;
		public $sebelum;
		public $ug;
		public $lihat;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'content';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
						[['c_status'],'default','value'=>'y'],
						[['c_page'],'default','value'=>NULL],
            [['c_id','c_urut'], 'integer'],
            [['c_name','c_icon'], 'string', 'max' => 255],
            [['c_id'], 'unique'],
						[['c_pkey'], 'default','value'=>0],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'c_id' => 'ID',
            'c_name' => 'Name',
						'c_icon' => 'Icon',
						'c_page' => 'Page',
            'c_pkey' => 'Induk',
						'c_urut' => 'No. Urut',
						'c_status' => 'Status',
						'ug' => 'User Group',
        ];
    }

	public function findMenu(){
			$data=array();

			$models = Content::findAll([
				'c_status'=>'y',
			]);

			foreach($models as $row){
				$data[$row->c_id]=array(
					'id'=>$row->c_id,
					'nama'=>$row->c_name,
					'icon'=>$row->c_icon,
					'page'=>$row->c_page,
					'pkey'=>$row->c_pkey,
				);
			}

			return $data;
	}

	public function findParent(){
			$data=array();

			$models = Content::findAll([
				'c_status'=>'y',
			]);

			foreach($models as $row){
				$data[$row->c_id]=$row->c_pkey;
			}

			return $data;
	}

	public function jumAnak($id){
			$models = Content::findAll([
				'c_pkey'=>$id,
			]);

			$data=count($models);

			return $data;
	}

	public function treeView($parent,$arrmenu,$arrparent){
			$data = new Content();

			$v="";
			foreach(array_keys($arrparent,$parent) as $c_id){
							$jum=$data->jumAnak($arrmenu[$c_id]['id']);

							//user group
							$uid=Yii::$app->user->identity->id;
							$uug=UserUsergroup::findAll(['id'=>$uid]);
							foreach($uug as $rug){
									$uac=UserAccess::findAll(['ug_id'=>$rug->ug_id,'c_id'=>$arrmenu[$c_id]['id']]);
									$jac=count($uac);
									if($jac>0){
											if($jum > 0){
													$v .='
															<li>
																	<a href=\'#subPages'.$arrmenu[$c_id]['id'].'\'data-toggle=\'collapse\' class=\'collapsed\'><i class=\''.$arrmenu[$c_id]['icon'].'\'></i> <span>'.$arrmenu[$c_id]['nama'].'</span> <i class=\'icon-submenu lnr lnr-chevron-left\'></i></a>
																	<div id=\'subPages'.$arrmenu[$c_id]['id'].'\'class=\'collapse\'>
																		<ul class=\'nav\'>
													';
														$v .=$data::treeView($arrmenu[$c_id]['id'],$arrmenu,$arrparent);
														$v .='
																				</ul>
																			</div>
																	</li>
														';
											}else{
												$v .='
														<li><a href=\''.Url::to([$arrmenu[$c_id]['page']]).'\' class=\'\'><i class=\''.$arrmenu[$c_id]['icon'].'\'></i> <span>'.$arrmenu[$c_id]['nama'].'</span></a></li>
												';
											}
									}
							}
			}
			return $v;
	}

	// public function treeView2($parent,$arrmenu,$arrparent){
	// 		$data = new Content();
  //
	// 		$v="";
	// 		foreach(array_keys($arrparent,$parent) as $c_id){
	// 						$jum=$data->jumAnak($arrmenu[$c_id]['id']);
  //
	// 						$uid=Yii::$app->user->identity->id;
	// 						$uug=UserUsergroup::findAll(['id'=>$uid]);
	// 						foreach($uug as $rug){
	// 								$uac=UserAccess::findAll(['ug_id'=>$rug->ug_id,'c_id'=>$arrmenu[$c_id]['id']]);
	// 								$jac=count($uac);
	// 								if($jac>0){
	// 									if($jum > 0){
	// 											$v[] =['label' => '<i class=\''.$arrmenu[$c_id]['icon'].'\'></i> '.$arrmenu[$c_id]['nama'],'class'=>'dropdown',
	// 															'items' => [$data::treeView($arrmenu[$c_id]['id'],$arrmenu,$arrparent)]]
	// 															/*['label' => '<i class=\''.$arrmenu[$c_id]['icon'].'\'></i>'.$arrmenu[$c_id]['nama'],'url' => [$arrmenu[$c_id]['page']]]*/;
  //
	// 									}else{
	// 										$v[] =['label' => '<i class=\''.$arrmenu[$c_id]['icon'].'\'></i> '.$arrmenu[$c_id]['nama'],'url' => [$arrmenu[$c_id]['page']]];
	// 									}
	// 								}
	// 						}
	// 		}
	// 		return $v;
	// }

	public function getInduk($id){
			$model = Content::find()->where(['c_id'=>$id])->one();
			if(!empty($model)){
					return $model->c_name;
			}
			return 'Root';
	}

}
