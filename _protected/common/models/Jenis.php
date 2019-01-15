<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_jenis".
 *
 * @property int $jenis_id
 * @property string $jenis_nama
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Jenis extends \yii\db\ActiveRecord
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
        return 'tb_jenis';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['jenis_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['jenis_nama'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'jenis_id' => 'ID',
            'jenis_nama' => 'Jenis',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistJenis($id){
            $model = Jenis::find()->where(['jenis_id'=>$id])->one();
            if(!empty($model)){
                    return $model->jenis_nama;
            }
            return 'Root';
    }
}
