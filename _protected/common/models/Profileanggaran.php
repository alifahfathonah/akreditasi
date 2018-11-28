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
class Profileanggaran extends \yii\db\ActiveRecord
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
        return 'z_profile_anggaran';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pa_isi'], 'string'],
            [['created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['pa_status'],'default','value'=>'y'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pa_id' => 'ID',
            'pa_isi' => 'Isi',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
            'pa_status' => 'Status',
        ];
    }
}
