<?php
namespace backend\components;

use yii\base\Widget;
use yii\helpers\Html;
use common\models\Content;


class SideBWidget extends Widget{

	public function run(){
		
		$data = new Content();
		$pkey=0;
		$models=$data->findParent($pkey);
		
		return $this->render('sideb',[
			'model' => $models,
		]);
	}
}
?>