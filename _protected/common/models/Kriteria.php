<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_kriteria".
 *
 * @property string $kriteria_id
 * @property string $kriteria_nama
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Kriteria extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'kriteria_id', // required
          'group' => 'kriteria', // required, unique
          'value' => 'K'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'tb_kriteria';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kriteria_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['kriteria_id'], 'string', 'max' => 5],
            [['kriteria_nama'], 'string', 'max' => 255],
            [['kriteria_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kriteria_id' => 'ID',
            'kriteria_nama' => 'Nama',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistKriteria($id){
            $model = Kriteria::find()->where(['kriteria_id'=>$id])->one();
            if(!empty($model)){
                    return $model->kriteria_nama;
            }
            return 'Root';
    }
}
