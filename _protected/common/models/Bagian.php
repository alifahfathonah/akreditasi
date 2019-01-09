<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_bagian".
 *
 * @property string $bagian_id
 * @property string $tujuan_id
 * @property string $bagian_nama
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Bagian extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public function behaviors(){
        return[
            \yii\behaviors\TimestampBehavior::className(),
            \yii\behaviors\BlameableBehavior::className(),
        ];
    }
    
    public static function tableName()
    {
        return 'tb_bagian';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['bagian_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['bagian_id', 'tujuan_id'], 'string', 'max' => 5],
            [['bagian_nama'], 'string', 'max' => 255],
            [['bagian_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'bagian_id' => 'ID',
            'tujuan_id' => 'Tujuan',
            'bagian_nama' => 'Bagian',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistBagian($id){
            $model = Bagian::find()->where(['bagian_id'=>$id])->one();
            if(!empty($model)){
                    return $model->bagian_nama;
            }
            return 'Root';
    }
}
