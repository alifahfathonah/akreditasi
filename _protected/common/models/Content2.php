<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "content".
 *
 * @property int $c_id
 * @property string $c_name
 * @property int $c_pkey
 */
class Content extends \yii\db\ActiveRecord
{
	
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
            [['c_id'], 'required'],
            [['c_id', 'c_pkey'], 'integer'],
            [['c_name'], 'string', 'max' => 255],
            [['c_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'c_id' => 'C ID',
            'c_name' => 'C Name',
            'c_pkey' => 'C Pkey',
        ];
    }
	
	public function findParent($pkey){
		$data=array();
		$models = Content::findAll([
			'c_status'=>'y',
			'c_pkey'=>$pkey,
		]);
		
		foreach($models as $row){
			$data[$row->c_id]=array(
				'nama'=>$row->c_name,
				'icon'=>$row->c_icon,
				'page'=>$row->c_page,
				'pkey'=>$row->c_pkey,
				'sub'=>$this->test($row->c_id),
			);
		}
		return $data;
	}
	
	public function test($pkey){
		$data2=array();
		$models = Content::findAll([
			'c_status'=>'y',
			'c_pkey'=>$pkey,
		]);
		
		foreach($models as $row2){
			$data2[$row2->c_id]=array(
				'nama'=>$row2->c_name,
				'icon'=>$row2->c_icon,
				'page'=>$row2->c_page,
				'pkey'=>$row2->c_pkey,
			);
		}
		
		return $data2;
	}

}
