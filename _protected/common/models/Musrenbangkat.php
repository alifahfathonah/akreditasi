<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_musrenbang_kat".
 *
 * @property string $mk_id
 * @property string $mk_kelompok
 * @property string $mk_status
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Musrenbangkat extends \yii\db\ActiveRecord
{

    //behavior
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'mk_id', // required
          'group' => 'musrenbangkat', // required, unique
          'value' => 'MK'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 2 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_musrenbang_kat';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['mk_kelompok', 'required'],
            ['mk_kelompok', 'string'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['mk_id'], 'string', 'max' => 4],
            [['mk_status'], 'default', 'value' => 'y'],
			[['mk_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'mk_id' => 'ID',
            'mk_kelompok' => 'Kelompok',
            'mk_status' => 'Status',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}
