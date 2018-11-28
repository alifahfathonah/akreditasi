<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_profile".
 *
 * @property int $p_id
 * @property string $p_isi
 * @property int $created_at
 * @property int $created_by
 * @property int $updated_at
 * @property int $updated_by
 * @property string $p_status
 */
class Profilestruktur extends \yii\db\ActiveRecord
{
    //behavior
    public function behaviors(){
      return[
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),
      ];
    }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_profile_struktur';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ps_isi'], 'string'],
            [['created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['ps_status'],'default','value'=>'y'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ps_id' => 'ID',
            'ps_isi' => 'Isi',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
            'ps_status' => 'Status',
        ];
    }
}
