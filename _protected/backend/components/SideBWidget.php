<?php
namespace backend\components;

use yii\base\Widget;
use yii\helpers\Html;
use common\models\Content;
use yii\helpers\Url;


class SideBWidget extends Widget{
	public $view;

	public function init(){
		$data = new Content();
		$status='y';

		$parent=0;
		$arrmenu=$data->findMenu();
		$arrparent=$data->findParent();

		$this->view=$data->treeView($parent,$arrmenu,$arrparent);
	}

	public function run(){

		return $this->render('sideb',[
			'view'=>$this->view,
		]);
	}


}
?>
