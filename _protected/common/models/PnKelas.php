<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "pn_kelas".
 *
 * @property string $kelas_id
 * @property string $kelas_nama
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class PnKelas extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'kelas_id', // required
          'group' => 'kelaspn', // required, unique
          'value' => 'KL'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'pn_kelas';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kelas_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['kelas_id'], 'string', 'max' => 5],
            [['kelas_nama'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kelas_id' => 'Kelas ID',
            'kelas_nama' => 'Kelas Nama',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistKelas($id){
            $model = PnKelas::find()->where(['kelas_id'=>$id])->one();
            if(!empty($model)){
                    return $model->kelas_nama;
            }
            return 'Root';
    }

}
